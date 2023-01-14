
package org.thingsboard.rule.engine.node.custom;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import lombok.extern.slf4j.Slf4j;
import org.thingsboard.rule.engine.api.RuleNode;
import org.thingsboard.rule.engine.api.TbContext;
import org.thingsboard.rule.engine.api.TbNode;
import org.thingsboard.rule.engine.api.TbNodeConfiguration;
import org.thingsboard.rule.engine.api.TbNodeException;
import org.thingsboard.rule.engine.api.util.TbNodeUtils;
import org.thingsboard.rule.engine.node.utility.DataTuple;
import org.thingsboard.rule.engine.node.utility.TCPClient;
import org.thingsboard.server.common.data.plugin.ComponentType;
import org.thingsboard.server.common.msg.TbMsg;

import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;

@Slf4j
@RuleNode(
        type = ComponentType.TRANSFORMATION,
        name = "streamer over TCP",
        configClazz = StreamerOverTCPConfiguration.class,
        nodeDescription = "the node gets the tuple, sends it over TCP to the FPGA interface program, and will receive the return value.",
        nodeDetails = "input tuple format (it is just a simple test case) : [price:%d, volume:%d, code:%d, stock:%d] " +
                "\n the output results are accepted tuples with aggregation results.",
        uiResources = {"static/rulenode/custom-nodes-config.js"},
        configDirective = "StreamerOverTCPConfiguration")
public class StreamerOverTCP implements TbNode{

    private static final ObjectMapper mapper = new ObjectMapper();

    StreamerOverTCPConfiguration config;
    String inputKey;
    String outputKey;
    TCPClient tcpClient;
    boolean serverIsInitialized;

    @Override
    public void init(TbContext ctx, TbNodeConfiguration configuration) throws TbNodeException {
        this.config = TbNodeUtils.convert(configuration, StreamerOverTCPConfiguration.class);
        inputKey = config.getInputKey();
        outputKey = config.getOutputKey();
        tcpClient = new TCPClient();
        serverIsInitialized = true;
    }

    @Override
    public void onMsg(TbContext ctx, TbMsg msg) throws ExecutionException, InterruptedException, TbNodeException {

        if (!serverIsInitialized){
            tcpClient = new TCPClient();
            serverIsInitialized = true;
        }

        boolean hasRecords = false;
        int price = 0, volume = 0, code = 0, stock = 0;
        boolean valid = false;
        try {
            JsonNode jsonNode = mapper.readTree(msg.getData());
            Iterator<String> iterator = jsonNode.fieldNames();
            while (iterator.hasNext()) {
                String field = iterator.next();
                if (field.startsWith(DataTuple.validLabel)){
                    hasRecords = true;
                    valid = jsonNode.get(field).asBoolean();
                }
                if (field.startsWith(DataTuple.priceLabel)) {
                    hasRecords = true;
                    price = jsonNode.get(field).asInt();
                }
                if (field.startsWith(DataTuple.volumeLabel)) {
                    hasRecords = true;
                    volume = jsonNode.get(field).asInt();
                }
                if(field.startsWith(DataTuple.codeLabel)){
                    hasRecords = true;
                    code = jsonNode.get(field).asInt();
                }
                if(field.startsWith(DataTuple.stockLabel)){
                    hasRecords = true;
                    stock = jsonNode.get(field).asInt();
                }
            }
            if (hasRecords) {
                DataTuple tuple = new DataTuple(valid, price, volume, code, stock);
                tcpClient.sendTuple(tuple);
                tcpClient.responseOnTuple(tuple);

                if (tuple.valid){
                    ObjectNode objectNode = mapper.createObjectNode();
                    objectNode.put(DataTuple.validLabel, tuple.valid);
                    objectNode.put(DataTuple.priceLabel, tuple.price);
                    objectNode.put(DataTuple.volumeLabel, tuple.volume);
                    objectNode.put(DataTuple.codeLabel, tuple.code);
                    objectNode.put(DataTuple.stockLabel, tuple.stock);

                    if(tuple.avgReady){
                        tuple.avg = tcpClient.readFloat();
                        objectNode.put("average", tuple.avg);
                    }


                    TbMsg newMsg = TbMsg.transformMsg(msg, msg.getType(), msg.getOriginator(), msg.getMetaData(),
                            mapper.writeValueAsString(mapper.createObjectNode().set(outputKey, objectNode)));
                    ctx.tellSuccess(newMsg);
                }

            } else {
                ctx.tellFailure(msg, new TbNodeException("Message doesn't contains the key: " + inputKey));
            }
        } catch (IOException e) {
            ctx.tellFailure(msg, e);
        }
    }

    @Override
    public void destroy() {
        tcpClient.close();
    }
}
