// Example instance of the top level module for: 
//     projection
// To include this component in your design, include: 
//     projection.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

projection projection_inst (
  // Interface: clock (clock end)
  .clock                 ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                ( ), // 1-bit reset_n input
  // Interface: stream_in_tuple (avalon_streaming sink)
  .stream_in_tuple_data  ( ), // 352-bit data input
  .stream_in_tuple_ready ( ), // 1-bit ready output
  .stream_in_tuple_valid ( ), // 1-bit valid input
  // Interface: stream_out_tuple (avalon_streaming source)
  .stream_out_tuple_data ( ), // 352-bit data output
  .stream_out_tuple_ready( ), // 1-bit ready input
  .stream_out_tuple_valid( ), // 1-bit valid output
  // Interface: call (conduit sink)
  .start                 ( ), // 1-bit valid input
  .busy                  ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                  ( ), // 1-bit valid output
  .stall                 ( )  // 1-bit stall input
);
