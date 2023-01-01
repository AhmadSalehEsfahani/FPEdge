
/* This header file describes the CSR Slave for the streamer component */

#ifndef __STREAMER_CSR_REGS_H__
#define __STREAMER_CSR_REGS_H__



/******************************************************************************/
/* Memory Map Summary                                                         */
/******************************************************************************/

/*
  Register  | Access  |   Register Contents      | Description
  Address   |         |      (64-bits)           | 
------------|---------|--------------------------|-----------------------------
        0x0 |       R |         {reserved[62:0], |     Read the busy status of
            |         |               busy[0:0]} |               the component
            |         |                          |  0 - the component is ready
            |         |                          |       to accept a new start
            |         |                          |    1 - the component cannot
            |         |                          |          accept a new start
------------|---------|--------------------------|-----------------------------
        0x8 |       W |         {reserved[62:0], |  Write 1 to signal start to
            |         |              start[0:0]} |               the component
------------|---------|--------------------------|-----------------------------
       0x10 |     R/W |         {reserved[62:0], |      0 - Disable interrupt,
            |         |   interrupt_enable[0:0]} |        1 - Enable interrupt
------------|---------|--------------------------|-----------------------------
       0x18 |  R/Wclr |         {reserved[61:0], | Signals component completion
            |         |               done[0:0], |       done is read-only and
            |         |   interrupt_status[0:0]} | interrupt_status is write 1
            |         |                          |                    to clear
------------|---------|--------------------------|-----------------------------
       0x20 |       R |       {returndata[63:0]} |        Return data (0 of 6)
------------|---------|--------------------------|-----------------------------
       0x28 |       R |     {returndata[127:64]} |        Return data (1 of 6)
------------|---------|--------------------------|-----------------------------
       0x30 |       R |    {returndata[191:128]} |        Return data (2 of 6)
------------|---------|--------------------------|-----------------------------
       0x38 |       R |    {returndata[255:192]} |        Return data (3 of 6)
------------|---------|--------------------------|-----------------------------
       0x40 |       R |    {returndata[319:256]} |        Return data (4 of 6)
------------|---------|--------------------------|-----------------------------
       0x48 |       R |    {returndata[383:320]} |        Return data (5 of 6)
------------|---------|--------------------------|-----------------------------
       0x50 |     R/W |            {tuple[63:0]} |     Argument tuple (0 of 6)
------------|---------|--------------------------|-----------------------------
       0x58 |     R/W |          {tuple[127:64]} |     Argument tuple (1 of 6)
------------|---------|--------------------------|-----------------------------
       0x60 |     R/W |         {tuple[191:128]} |     Argument tuple (2 of 6)
------------|---------|--------------------------|-----------------------------
       0x68 |     R/W |         {tuple[255:192]} |     Argument tuple (3 of 6)
------------|---------|--------------------------|-----------------------------
       0x70 |     R/W |         {tuple[319:256]} |     Argument tuple (4 of 6)
------------|---------|--------------------------|-----------------------------
       0x78 |     R/W |         {tuple[383:320]} |     Argument tuple (5 of 6)

NOTE: Writes to reserved bits will be ignored and reads from reserved
      bits will return undefined values.
*/


/******************************************************************************/
/* Register Address Macros                                                    */
/******************************************************************************/

/* Byte Addresses */
#define STREAMER_CSR_BUSY_REG (0x0)
#define STREAMER_CSR_START_REG (0x8)
#define STREAMER_CSR_INTERRUPT_ENABLE_REG (0x10)
#define STREAMER_CSR_INTERRUPT_STATUS_REG (0x18)
#define STREAMER_CSR_RETURNDATA_0_REG (0x20)
#define STREAMER_CSR_RETURNDATA_1_REG (0x28)
#define STREAMER_CSR_RETURNDATA_2_REG (0x30)
#define STREAMER_CSR_RETURNDATA_3_REG (0x38)
#define STREAMER_CSR_RETURNDATA_4_REG (0x40)
#define STREAMER_CSR_RETURNDATA_5_REG (0x48)
#define STREAMER_CSR_ARG_TUPLE_0_REG (0x50)
#define STREAMER_CSR_ARG_TUPLE_1_REG (0x58)
#define STREAMER_CSR_ARG_TUPLE_2_REG (0x60)
#define STREAMER_CSR_ARG_TUPLE_3_REG (0x68)
#define STREAMER_CSR_ARG_TUPLE_4_REG (0x70)
#define STREAMER_CSR_ARG_TUPLE_5_REG (0x78)

/* Argument Sizes (bytes) */
#define STREAMER_CSR_RETURNDATA_0_SIZE (8)
#define STREAMER_CSR_RETURNDATA_1_SIZE (8)
#define STREAMER_CSR_RETURNDATA_2_SIZE (8)
#define STREAMER_CSR_RETURNDATA_3_SIZE (8)
#define STREAMER_CSR_RETURNDATA_4_SIZE (8)
#define STREAMER_CSR_RETURNDATA_5_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_0_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_1_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_2_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_3_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_4_SIZE (8)
#define STREAMER_CSR_ARG_TUPLE_5_SIZE (8)

/* Argument Masks */
#define STREAMER_CSR_RETURNDATA_0_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_RETURNDATA_1_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_RETURNDATA_2_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_RETURNDATA_3_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_RETURNDATA_4_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_RETURNDATA_5_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_0_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_1_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_2_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_3_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_4_MASK (0xffffffffffffffffULL)
#define STREAMER_CSR_ARG_TUPLE_5_MASK (0xffffffffffffffffULL)

/* Status/Control Masks */
#define STREAMER_CSR_BUSY_MASK   (1<<0)
#define STREAMER_CSR_BUSY_OFFSET (0)

#define STREAMER_CSR_START_MASK   (1<<0)
#define STREAMER_CSR_START_OFFSET (0)

#define STREAMER_CSR_INTERRUPT_ENABLE_MASK   (1<<0)
#define STREAMER_CSR_INTERRUPT_ENABLE_OFFSET (0)

#define STREAMER_CSR_INTERRUPT_STATUS_MASK   (1<<0)
#define STREAMER_CSR_INTERRUPT_STATUS_OFFSET (0)
#define STREAMER_CSR_DONE_MASK   (1<<1)
#define STREAMER_CSR_DONE_OFFSET (1)


#endif /* __STREAMER_CSR_REGS_H__ */



