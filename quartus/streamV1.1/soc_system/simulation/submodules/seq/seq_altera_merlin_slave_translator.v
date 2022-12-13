// (C) 2001-2022 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// (C) 2001-2011 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.



// $Id: //acds/rel/11.1/ip/merlin/seq_altera_merlin_slave_translator/seq_altera_merlin_slave_translator.sv#1 $
// $Revision: #1 $
// $Date: 2011/08/15 $
// $Author: max $

// -------------------------------------
// Merlin Slave Translator
//
// Translates Universal Avalon  MM Slave
// to any Avalon MM Slave
// -------------------------------------
//
//Notable Note: 0 AV_READLATENCY is not allowed and will be converted to a 1 cycle readlatency in all cases but one
//If you declare a slave with fixed read timing requirements, the readlatency of such a slave will be allowed to be zero
//The key feature here is that no same cycle turnaround data is processed through the fabric.

//import avalon_utilities_pkg::*;
  
`timescale 1 ns / 1 ns

module seq_altera_merlin_slave_translator
  #(
    parameter
    //Widths
    AV_ADDRESS_W           = 32,
    AV_DATA_W              = 32,
    AV_BURSTCOUNT_W        = 4,
    AV_BYTEENABLE_W        = 4,
    UAV_BYTEENABLE_W       = 4,
    
    //Read Latency
    AV_READLATENCY          = 1,
    
    //Timing
    AV_READ_WAIT_CYCLES     = 0,
    AV_WRITE_WAIT_CYCLES    = 0,
    AV_SETUP_WAIT_CYCLES    = 0,
    AV_DATA_HOLD_CYCLES     = 0,
    
    //Optional Port Declarations
    USE_READDATAVALID       = 1,
    USE_WAITREQUEST         = 1,

    //Variable Addressing
    AV_SYMBOLS_PER_WORD     = 4,
    AV_ADDRESS_SYMBOLS      = 0,
    AV_BURSTCOUNT_SYMBOLS   = 0,
    BITS_PER_WORD           = clog2(AV_SYMBOLS_PER_WORD - 1),
    UAV_ADDRESS_W           = 38,
    UAV_BURSTCOUNT_W        = 10,
    UAV_DATA_W              = 32,
   
    AV_CONSTANT_BURST_BEHAVIOR       = 0,
    UAV_CONSTANT_BURST_BEHAVIOR      = 0,
    CHIPSELECT_THROUGH_READLATENCY   = 0,

    // Tightly-Coupled Options
    USE_UAV_CLKEN           = 0,
    AV_REQUIRE_UNALIGNED_ADDRESSES = 0
    )
  (

   // -------------------
   // Clock & Reset
   // -------------------
   input wire clk,
   input wire reset_n,
   
   // -------------------
   // Universal Avalon Slave
   // -------------------

    input wire [UAV_ADDRESS_W    - 1 : 0]    uav_address,
    input wire [UAV_DATA_W       - 1 : 0]    uav_writedata,
    input wire 				     uav_write,
    input wire 				     uav_read,
    input wire [UAV_BURSTCOUNT_W - 1 : 0]    uav_burstcount,
    input wire [UAV_BYTEENABLE_W - 1 : 0]    uav_byteenable,
    input wire 				     uav_lock,
    input wire                               uav_debugaccess,
    input wire                               uav_clken,
   
    output reg                             uav_readdatavalid,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg			     uav_waitrequest,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg[UAV_DATA_W - 1 : 0]         uav_readdata,		//*** SV-to-V: 'logic=>reg ??? fixme? 
   
   // -------------------
   // Customizable Avalon Master
   // -------------------
    output reg [AV_ADDRESS_W    - 1 : 0]   av_address,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg [AV_DATA_W       - 1 : 0]   av_writedata,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg 			     av_write,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg			     av_read,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg[AV_BURSTCOUNT_W - 1 : 0]    av_burstcount,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg[AV_BYTEENABLE_W - 1 : 0]    av_byteenable,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg[AV_BYTEENABLE_W - 1 : 0]    av_writebyteenable, 						     		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg               		     av_begintransfer,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output wire 			     av_chipselect,
    output reg			     av_beginbursttransfer,     		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output reg			     av_lock,		//*** SV-to-V: 'logic=>reg ??? fixme? 
    output wire                              av_clken,
    output wire                              av_debugaccess,
    output wire                              av_outputenable,
   
    input     [AV_DATA_W - 1 : 0] 	     av_readdata,		//*** SV-to-V: 'logic=>reg ??? fixme? 'input reg=>input 
    input                                  av_readdatavalid,		//*** SV-to-V: 'logic=>reg ??? fixme? 'input reg=>input 
    input     			     av_waitrequest		//*** SV-to-V: 'logic=>reg ??? fixme? 'input reg=>input 
   );

   function integer clog2;
      input [31:0] Depth;
      integer i;
      begin
         i = Depth;        
         for(clog2 = 0; i > 0; clog2 = clog2 + 1)
           i = i >> 1;
      end
 
   endfunction 

   function integer max;
      //returns the larger of two passed arguments
      input [31:0] one;
      input [31:0] two;
      
      if(one > two)
	max=one;
      else
	max=two;
   endfunction // int
   
   localparam 	   AV_READ_WAIT_INDEXED      = (AV_SETUP_WAIT_CYCLES + AV_READ_WAIT_CYCLES);
   localparam 	   AV_WRITE_WAIT_INDEXED     = (AV_SETUP_WAIT_CYCLES + AV_WRITE_WAIT_CYCLES);
   localparam 	   AV_DATA_HOLD_INDEXED      = (AV_WRITE_WAIT_INDEXED + AV_DATA_HOLD_CYCLES);
   localparam 	   LOG2_OF_LATENCY_SUM       = max(clog2(AV_READ_WAIT_INDEXED + 1),clog2(AV_DATA_HOLD_INDEXED + 1));
   localparam 	   BURSTCOUNT_SHIFT_SELECTOR = AV_BURSTCOUNT_SYMBOLS ? 0 : BITS_PER_WORD;
   localparam 	   ADDRESS_SHIFT_SELECTOR    = AV_ADDRESS_SYMBOLS ? 0 : BITS_PER_WORD;
   
   localparam      ADDRESS_HIGH              = ( UAV_ADDRESS_W > AV_ADDRESS_W + ADDRESS_SHIFT_SELECTOR ) ? 
		                                   AV_ADDRESS_W : 
                                                   UAV_ADDRESS_W - ADDRESS_SHIFT_SELECTOR;

   localparam      BURSTCOUNT_HIGH           = ( UAV_BURSTCOUNT_W > AV_BURSTCOUNT_W + BURSTCOUNT_SHIFT_SELECTOR ) ? 
		                                   AV_BURSTCOUNT_W : 
		                                   UAV_BURSTCOUNT_W - BURSTCOUNT_SHIFT_SELECTOR;
   localparam      BYTEENABLE_ADDRESS_BITS   = ( clog2(UAV_BYTEENABLE_W) - 1 ) >= 1 ? clog2(UAV_BYTEENABLE_W) - 1 : 1;
   

   // Calculate the symbols per word as the power of 2 extended symbols per word
   wire [31 : 0] symbols_per_word_int = 2**(clog2(AV_SYMBOLS_PER_WORD[UAV_BURSTCOUNT_W : 0] - 1));
   wire [UAV_BURSTCOUNT_W : 0] symbols_per_word = symbols_per_word_int[UAV_BURSTCOUNT_W : 0];
   
   // +--------------------------------
   // |Backwards Compatibility Signals
   // +--------------------------------
   assign av_clken = (USE_UAV_CLKEN) ? uav_clken : 1'b1;
   assign av_debugaccess = uav_debugaccess;

   // +-------------------
   // |Passthru Signals
   // +-------------------


   //-------------------------
   //Writedata and Byteenable
   //-------------------------

   always@* begin
      av_byteenable = 0;		//*** SV-to-V: '0=>0 
      av_byteenable = uav_byteenable[AV_BYTEENABLE_W - 1 : 0];
   end

   always@* begin
      av_writedata = 0;		//*** SV-to-V: '0=>0 
      av_writedata = uav_writedata[AV_DATA_W - 1 : 0];
   end

   // +-------------------
   // |Calculated Signals
   // +-------------------

   reg [UAV_ADDRESS_W - 1 : 0 ] real_uav_address;		//*** SV-to-V: 'logic=>reg ??? fixme? 

   function [BYTEENABLE_ADDRESS_BITS - 1 : 0 ] decode_byteenable;
      input [UAV_BYTEENABLE_W - 1 : 0 ] byteenable;
      integer i;

      begin      
          for(i = UAV_BYTEENABLE_W - 1; (byteenable[i] == 1'b0 && i >= 0); i = i - 1) begin		//PN  --change from SV to Verilog
          end

          decode_byteenable = i;
      end
   endfunction
   	    
   reg [AV_BURSTCOUNT_W - 1 : 0]  burstcount_reg;
   reg [AV_ADDRESS_W    - 1 : 0]  address_reg;
   
   
   always@(posedge clk, negedge reset_n) begin
      if(~reset_n) begin
	 burstcount_reg <= 0;		//*** SV-to-V: '0=>0 
	 address_reg    <= 0;		//*** SV-to-V: '0=>0 
      end
      else begin	       
	 burstcount_reg <= burstcount_reg;
	 address_reg    <= address_reg;
	 
	 if(av_beginbursttransfer) begin
	    burstcount_reg <= uav_burstcount [BURSTCOUNT_HIGH - 1 + BURSTCOUNT_SHIFT_SELECTOR : BURSTCOUNT_SHIFT_SELECTOR ];
	    address_reg    <= real_uav_address    [ADDRESS_HIGH    - 1 + ADDRESS_SHIFT_SELECTOR    : ADDRESS_SHIFT_SELECTOR    ];

	 end
      end
   end 


   reg [BYTEENABLE_ADDRESS_BITS-1:0] temp_wire;		//*** SV-to-V: 'logic=>reg ??? fixme? 
   
   always@* begin
      if( AV_REQUIRE_UNALIGNED_ADDRESSES == 1) begin
	 temp_wire = decode_byteenable(uav_byteenable);
	 
	 real_uav_address = { uav_address[UAV_ADDRESS_W - 1 : BYTEENABLE_ADDRESS_BITS ], temp_wire[BYTEENABLE_ADDRESS_BITS - 1 : 0 ] };
      end
      else begin
	 real_uav_address = uav_address;
      end
      
      av_address = real_uav_address[ADDRESS_HIGH - 1  + ADDRESS_SHIFT_SELECTOR : ADDRESS_SHIFT_SELECTOR ];
      
      if( AV_CONSTANT_BURST_BEHAVIOR && !UAV_CONSTANT_BURST_BEHAVIOR && ~av_beginbursttransfer )
	av_address = address_reg;
   end
   
   always@* begin
      av_burstcount=uav_burstcount[BURSTCOUNT_HIGH - 1 + BURSTCOUNT_SHIFT_SELECTOR : BURSTCOUNT_SHIFT_SELECTOR ];
      
      if( AV_CONSTANT_BURST_BEHAVIOR && !UAV_CONSTANT_BURST_BEHAVIOR && ~av_beginbursttransfer )
	av_burstcount = burstcount_reg;
   end
   
   always@* begin
	av_lock = uav_lock;
   end
   
   // -------------------
   // Writebyteenable Assignment
   // -------------------
   
always@* begin
      av_writebyteenable = { (AV_BYTEENABLE_W){uav_write} } & uav_byteenable[AV_BYTEENABLE_W - 1 : 0];
end
   
   // -------------------
   // Waitrequest Assignment
   // -------------------

   reg 	     av_waitrequest_generated; 		  
   reg 	     av_waitrequest_generated_read;
   reg 	     av_waitrequest_generated_write;
   reg       waitrequest_reset_override;
      
   reg [ ( LOG2_OF_LATENCY_SUM ? LOG2_OF_LATENCY_SUM - 1 : 0 ) : 0 ] wait_latency_counter;

   always@(negedge reset_n, posedge clk) begin
      
      if(~reset_n) begin
	 wait_latency_counter <= 0;		//*** SV-to-V: '0=>0 
	 waitrequest_reset_override <= 1'h1;
      end
      else begin
	 waitrequest_reset_override <= 1'h0;
	 
	 wait_latency_counter <= 0;		//*** SV-to-V: '0=>0 
	 	 	 
	 if( uav_read | uav_write )
	   wait_latency_counter <= wait_latency_counter + 1'h1;

	 if( ~uav_waitrequest | waitrequest_reset_override )
	   wait_latency_counter <= 0;		//*** SV-to-V: '0=>0 
	 
      end
      
   end
	  

   always @* begin

      av_read    = uav_read;
      av_write   = uav_write;
	 
      av_waitrequest_generated       = 1'h1;
      av_waitrequest_generated_read  = 1'h1;
      av_waitrequest_generated_write = 1'h1;
      
      if(LOG2_OF_LATENCY_SUM == 1)
	av_waitrequest_generated = 0;
      
      if(LOG2_OF_LATENCY_SUM > 1 && !USE_WAITREQUEST) begin
	 av_read  = wait_latency_counter >= AV_SETUP_WAIT_CYCLES && uav_read;
       	 av_write = wait_latency_counter >= AV_SETUP_WAIT_CYCLES && uav_write && wait_latency_counter <= AV_WRITE_WAIT_INDEXED;
       	 
	 av_waitrequest_generated_read  = wait_latency_counter != AV_READ_WAIT_INDEXED;
       	 av_waitrequest_generated_write  = wait_latency_counter != AV_DATA_HOLD_INDEXED;
	 
	 if(uav_write)
	   av_waitrequest_generated = av_waitrequest_generated_write;
	 else
	   av_waitrequest_generated = av_waitrequest_generated_read;
	 
      end
      
      if(USE_WAITREQUEST) begin
	 uav_waitrequest = av_waitrequest;
      end
      else begin
	 uav_waitrequest = av_waitrequest_generated | waitrequest_reset_override;
      end
   
   end

   // --------------
   // Readdata Assignment
   // --------------
   
   reg[(AV_DATA_W ? AV_DATA_W -1 : 0 ): 0]      	av_readdata_pre;

   always@(posedge clk, negedge reset_n) begin
      if(~reset_n)
	av_readdata_pre <= 'b0;
      else
	av_readdata_pre <= av_readdata;
   end

   always@* begin
      uav_readdata = 0;		//*** SV-to-V: '0=>0 
      
      if( AV_READLATENCY != 0  || USE_READDATAVALID ) begin
	 uav_readdata = av_readdata;
      end 
      else begin
	 uav_readdata = av_readdata_pre;
      end
   end
   // -------------------
   // Readdatavalid Assigment
   // -------------------

   reg[(AV_READLATENCY>0 ? AV_READLATENCY-1:0) :0]      read_latency_shift_reg;
   reg 							top_read_latency_shift_reg;


   
   always@* begin

      uav_readdatavalid=top_read_latency_shift_reg;
      
      if(USE_READDATAVALID) begin
	 uav_readdatavalid = av_readdatavalid;
      end
 
   end

   always@* begin
      
      top_read_latency_shift_reg = uav_read & ~uav_waitrequest & ~waitrequest_reset_override;

      if(AV_READLATENCY == 1 || AV_READLATENCY == 0 ) begin
	 top_read_latency_shift_reg=read_latency_shift_reg; 
      end
      
      if (AV_READLATENCY > 1) begin
	 top_read_latency_shift_reg = read_latency_shift_reg[(AV_READLATENCY ? AV_READLATENCY-1 : 0)];
      end
      
   end

	integer i;   
   always@(negedge reset_n, posedge clk) begin
      
      if (~reset_n) begin  
	 read_latency_shift_reg <= 0;		//*** SV-to-V: '0=>0 
      end
      else if (av_clken) begin
	 
	 read_latency_shift_reg <= uav_read && ~uav_waitrequest & ~waitrequest_reset_override;

	 for (i=0; i+1 < AV_READLATENCY ; i=i+1 ) begin		//*** SV-to-V: '++=>??? FIXED
	    read_latency_shift_reg[i+1] <= read_latency_shift_reg[i];
	 end
	 
      end
      
   end

   // ------------
   // Chipselect and OutputEnable
   // ------------

   reg   	   av_chipselect_pre;
   wire            cs_extension;
   reg 		   av_outputenable_pre;
   
   
   assign 	   av_chipselect  = (uav_read | uav_write) ? 1'b1 : av_chipselect_pre;
   assign          cs_extension = ( (^ read_latency_shift_reg) & ~top_read_latency_shift_reg ) | ((| read_latency_shift_reg) & ~(^ read_latency_shift_reg));

   assign 	   av_outputenable = uav_read ? 1'b1 : av_outputenable_pre;
   
   always@(negedge reset_n, posedge clk) begin
      if(~reset_n)
	 av_outputenable_pre <= 1'b0;
      else if( AV_READLATENCY == 0  && AV_READ_WAIT_INDEXED != 0 )
	 av_outputenable_pre <= 0;
      else
	 av_outputenable_pre <= cs_extension | uav_read;
   end
   
   always@(negedge reset_n, posedge clk) begin
      if(~reset_n) begin
	 av_chipselect_pre  <= 1'b0;
      end
      else begin
	 av_chipselect_pre  <= 1'b0;
	 
	 if(AV_READLATENCY != 0 && CHIPSELECT_THROUGH_READLATENCY == 1) begin      
	    //The AV_READLATENCY term is only here to prevent chipselect from remaining asserted while read and write fall.
	    //There is no functional impact as 0 cycle transactions are treated as 1 cycle on the other side of the translator.
	    if(uav_read) begin  
	       av_chipselect_pre <= 1'b1;
	    end
	    else if(cs_extension == 1) begin
	       av_chipselect_pre <= 1'b1;
	    end
	    
	 end
      end
   end

   // -------------------
   // Begintransfer Assigment
   // -------------------
    		   
   reg       end_begintransfer;
   
   always@* begin
	 av_begintransfer = ( uav_write | uav_read ) & ~end_begintransfer;
   end
   
   always@ ( posedge clk or negedge reset_n ) begin
      
      if(~reset_n) begin
	 end_begintransfer <= 1'b0;
      end 
      else begin
	 
	 if(av_begintransfer == 1 && uav_waitrequest && ~waitrequest_reset_override)
	   end_begintransfer <= 1'b1;
	 else if(uav_waitrequest) 
	   end_begintransfer <= end_begintransfer;
	 else 
	   end_begintransfer <= 1'b0;
	 
      end
      
   end
   
   // -------------------
   // Beginbursttransfer Assigment
   // -------------------
   
   reg 							end_beginbursttransfer;
   reg 							in_transfer;
   
   
   
   always@* begin
	 av_beginbursttransfer = uav_read ? av_begintransfer : (av_begintransfer && ~end_beginbursttransfer && ~in_transfer);
   end   
   
   always@ ( posedge clk or negedge reset_n ) begin
      if(~reset_n) begin
	 end_beginbursttransfer <= 1'b0;
	 in_transfer <= 1'b0;
      end
      else begin
	 
	 end_beginbursttransfer <= uav_write & ( uav_burstcount != symbols_per_word );

	 if(uav_write && uav_burstcount == symbols_per_word)
	   in_transfer <=1'b0;
	 else if(uav_write)
	   in_transfer <=1'b1;
	 
      end
      
   end	
   
endmodule
