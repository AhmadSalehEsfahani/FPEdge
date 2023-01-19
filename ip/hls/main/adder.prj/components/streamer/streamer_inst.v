// Example instance of the top level module for: 
//     streamer
// To include this component in your design, include: 
//     streamer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

streamer streamer_inst (
  // Interface: clock (clock end)
  .clock              ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn             ( ), // 1-bit reset_n input
  // Interface: avs_in0 (avalon end)
  .avs_in0_read       ( ), // 1-bit read input
  .avs_in0_readdata   ( ), // 64-bit readdata output
  .avs_in0_write      ( ), // 1-bit write input
  .avs_in0_writedata  ( ), // 64-bit writedata input
  .avs_in0_address    ( ), // 1-bit address input
  .avs_in0_byteenable ( ), // 8-bit byteenable input
  // Interface: avs_out0 (avalon end)
  .avs_out0_read      ( ), // 1-bit read input
  .avs_out0_readdata  ( ), // 128-bit readdata output
  .avs_out0_write     ( ), // 1-bit write input
  .avs_out0_writedata ( ), // 128-bit writedata input
  .avs_out0_address   ( ), // 1-bit address input
  .avs_out0_byteenable( )  // 16-bit byteenable input
);
