// (c) 1992-2022 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 
// Generated by Intel(R) HLS Compiler, Version 22.3.0 Build 116.1

/////////////////////////////////////////////////////////////////
// MODULE projection_internal
/////////////////////////////////////////////////////////////////
module projection_internal
(
   input logic clock,
   input logic resetn,
   // AVST stream_in_tuple
   input logic stream_in_tuple_valid,
   output logic stream_in_tuple_ready,
   input logic [351:0] stream_in_tuple_data,
   // AVST stream_out_tuple
   output logic stream_out_tuple_valid,
   input logic stream_out_tuple_ready,
   output logic [351:0] stream_out_tuple_data,
   input logic start,
   output logic busy,
   output logic done,
   input logic stall
);
   // INST projection_internal of projection_function_wrapper
   projection_function_wrapper projection_internal
   (
      .clock(clock),
      .resetn(resetn),
      // AVST avst_iord_bl_stream_in_tuple
      .avst_iord_bl_stream_in_tuple_valid(stream_in_tuple_valid),
      .avst_iord_bl_stream_in_tuple_ready(stream_in_tuple_ready),
      .avst_iord_bl_stream_in_tuple_data(stream_in_tuple_data),
      // AVST avst_iowr_bl_stream_out_tuple
      .avst_iowr_bl_stream_out_tuple_valid(stream_out_tuple_valid),
      .avst_iowr_bl_stream_out_tuple_ready(stream_out_tuple_ready),
      .avst_iowr_bl_stream_out_tuple_data(stream_out_tuple_data),
      .start(start),
      .busy(busy),
      .done(done),
      .stall(stall)
   );

endmodule
