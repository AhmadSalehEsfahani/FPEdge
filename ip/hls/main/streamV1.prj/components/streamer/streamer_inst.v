// Example instance of the top level module for: 
//     streamer
// To include this component in your design, include: 
//     streamer.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

streamer streamer_inst (
  // Interface: clock (clock end)
  .clock      ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn     ( ), // 1-bit reset_n input
  // Interface: s_in (avalon_streaming sink)
  .s_in_data  ( ), // 352-bit data input
  .s_in_ready ( ), // 1-bit ready output
  .s_in_valid ( ), // 1-bit valid input
  // Interface: s_out (avalon_streaming source)
  .s_out_data ( ), // 352-bit data output
  .s_out_ready( ), // 1-bit ready input
  .s_out_valid( ), // 1-bit valid output
  // Interface: call (conduit sink)
  .start      ( ), // 1-bit valid input
  .busy       ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done       ( ), // 1-bit valid output
  .stall      ( )  // 1-bit stall input
);
