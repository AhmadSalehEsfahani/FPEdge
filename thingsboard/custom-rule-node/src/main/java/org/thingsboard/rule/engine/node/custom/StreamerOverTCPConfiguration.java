
package org.thingsboard.rule.engine.node.custom;

import lombok.Data;
import org.thingsboard.rule.engine.api.NodeConfiguration;

@Data
public class StreamerOverTCPConfiguration implements NodeConfiguration<StreamerOverTCPConfiguration>{
    private String inputKey;
    private String outputKey;

    @Override
    public StreamerOverTCPConfiguration defaultConfiguration() {
        StreamerOverTCPConfiguration configuration = new StreamerOverTCPConfiguration();
        configuration.setInputKey("data");
        configuration.setOutputKey("DataOutFromFpga");
        return configuration;
    }
}
