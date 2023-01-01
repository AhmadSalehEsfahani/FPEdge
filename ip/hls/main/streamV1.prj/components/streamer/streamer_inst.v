// Example instance of the top level module for: 
//     streamer
// To include this component in your design, include: 
//     streamer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

streamer streamer_inst (
  // Interface: clock (clock end)
  .clock             ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn            ( ), // 1-bit reset_n input
  // Interface: irq (interrupt end)
  .done_irq          ( ), // 1-bit irq output
  // Interface: avs_cra (avalon end)
  .avs_cra_read      ( ), // 1-bit read input
  .avs_cra_readdata  ( ), // 64-bit readdata output
  .avs_cra_write     ( ), // 1-bit write input
  .avs_cra_writedata ( ), // 64-bit writedata input
  .avs_cra_address   ( ), // 4-bit address input
  .avs_cra_byteenable( )  // 8-bit byteenable input
);
