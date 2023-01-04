
package org.thingsboard.rule.engine.node.custom;

import lombok.Data;
import org.thingsboard.rule.engine.api.NodeConfiguration;

@Data
public class FpgaAdderOverTCPConfiguration implements NodeConfiguration<FpgaAdderOverTCPConfiguration>{
    private String inputKey;
    private String outputKey;

    @Override
    public FpgaAdderOverTCPConfiguration defaultConfiguration() {
        FpgaAdderOverTCPConfiguration configuration = new FpgaAdderOverTCPConfiguration();
        configuration.setInputKey("data");
        configuration.setOutputKey("DataOutFromFpga");
        return configuration;
    }
}
