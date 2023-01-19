// Example instance of the top level module for: 
//     streamer
// To include this component in your design, include: 
//     streamer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

streamer streamer_inst (
  // Interface: clock (clock end)
  .clock                   ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                  ( ), // 1-bit reset_n input
  // Interface: avs_tuple_in (avalon end)
  .avs_tuple_in_read       ( ), // 1-bit read input
  .avs_tuple_in_readdata   ( ), // 512-bit readdata output
  .avs_tuple_in_write      ( ), // 1-bit write input
  .avs_tuple_in_writedata  ( ), // 512-bit writedata input
  .avs_tuple_in_address    ( ), // 1-bit address input
  .avs_tuple_in_byteenable ( ), // 64-bit byteenable input
  // Interface: avs_tuple_out (avalon end)
  .avs_tuple_out_read      ( ), // 1-bit read input
  .avs_tuple_out_readdata  ( ), // 512-bit readdata output
  .avs_tuple_out_write     ( ), // 1-bit write input
  .avs_tuple_out_writedata ( ), // 512-bit writedata input
  .avs_tuple_out_address   ( ), // 1-bit address input
  .avs_tuple_out_byteenable( )  // 64-bit byteenable input
);
