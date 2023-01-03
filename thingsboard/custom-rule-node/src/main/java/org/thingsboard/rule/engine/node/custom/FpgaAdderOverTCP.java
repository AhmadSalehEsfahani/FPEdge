/**
 * Copyright © 2018 The Thingsboard Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.thingsboard.rule.engine.node.custom;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.thingsboard.rule.engine.api.RuleNode;
import org.thingsboard.rule.engine.api.TbContext;
import org.thingsboard.rule.engine.api.TbNode;
import org.thingsboard.rule.engine.api.TbNodeConfiguration;
import org.thingsboard.rule.engine.api.TbNodeException;
import org.thingsboard.rule.engine.api.util.TbNodeUtils;
import org.thingsboard.server.common.data.plugin.ComponentType;
import org.thingsboard.server.common.msg.TbMsg;

import java.io.IOException;
import java.net.Socket;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Scanner;
import java.util.concurrent.ExecutionException;

@Slf4j
@RuleNode(
        type = ComponentType.TRANSFORMATION,
        name = "fpga adder over TCP",
        configClazz = FpgaAdderOverTCPConfiguration.class,
        nodeDescription = "This node will add 2 input data by FPGA and return its result. ",
        nodeDetails = "this node will send inputs data to the FPGA over a TCP connection and them then get back the return value. field names data1 and data2",
        uiResources = {"static/rulenode/custom-nodes-config.js"},
        configDirective = "FpgaAdderOverTCPConfiguration")
public class FpgaAdderOverTCP implements TbNode{

    private static final ObjectMapper mapper = new ObjectMapper();

    //<network>
    private static final String serverAddress = "127.0.0.1";
    private static final int port = 8090;
    public static Socket socket;
    public static Scanner socketScanner;
    public static Formatter socketFormatter;
    //</network>

    FpgaAdderOverTCPConfiguration config;
    String inputKey;
    String outputKey;

    @Override
    public void init(TbContext ctx, TbNodeConfiguration configuration) throws TbNodeException {
        this.config = TbNodeUtils.convert(configuration, FpgaAdderOverTCPConfiguration.class);
        inputKey = config.getInputKey();
        outputKey = config.getOutputKey();

        //<network>
        try {
            socket = new Socket(serverAddress, port);
            socketScanner = new Scanner(socket.getInputStream());
            socketFormatter = new Formatter(socket.getOutputStream());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        //</network>
    }

    @Override
    public void onMsg(TbContext ctx, TbMsg msg) throws ExecutionException, InterruptedException, TbNodeException {
        boolean hasRecords = false;
        int a = 0;
        int b = 0;
        int newValue = 0;
        String response;
        try {
            JsonNode jsonNode = mapper.readTree(msg.getData());
            Iterator<String> iterator = jsonNode.fieldNames();
            while (iterator.hasNext()) {
                String field = iterator.next();
                if (field.startsWith("data1")) {
                    hasRecords = true;
                    a = jsonNode.get(field).asInt();
                }
                if (field.startsWith("data2")) {
                    hasRecords = true;
                    b = jsonNode.get(field).asInt();
                }
            }
            if (hasRecords) {
                //<network>
                socketFormatter.format(String.valueOf(a));
                socketFormatter.flush();
                socketFormatter.format(String.valueOf(b));
                socketFormatter.flush();
                while (!socketScanner.hasNextLine());
                response = socketScanner.nextLine();
                newValue = Integer.parseInt(response);
                //</network>

                TbMsg newMsg = TbMsg.transformMsg(msg, msg.getType(), msg.getOriginator(), msg.getMetaData(),
                        mapper.writeValueAsString(mapper.createObjectNode().put(outputKey, newValue)));
                ctx.tellSuccess(newMsg);
            } else {
                ctx.tellFailure(msg, new TbNodeException("Message doesn't contains the key: " + inputKey));
            }
        } catch (IOException e) {
            ctx.tellFailure(msg, e);
        }
    }

    @Override
    public void destroy() {
        //<network>
        try {
            socketScanner.close();
            socketFormatter.close();
            socket.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        //</network>
    }
}
