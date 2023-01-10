#ifndef STREAMER_HEADER
#define STREAMER_HEADER

#include <stdint.h>
#include <stdbool.h>

#define BRIDGE          0xC0000000
#define BRIDGE_SPAN     0x18
#define TUPLE_BASE      0x00

#define TUPLE_DATA_SIZE                                     4
#define BUILDIN_AGGREGATION_FUNCTIONS_NUMBER_OF_SUPPORTED   5
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_COUNT            0
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG              1
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_MIN              2
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_MAX              3
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_SUM              4


#define SIGN_REJECT_TUPLE                       "0"
#define SIGN_ACCEPT_NOT_READY_ARRG_RESULT       "10"
#define SIGN_ACCEPT_READY_ARRG_RESULT           "11"


struct Tuple {
    bool valid;
    int32_t data[TUPLE_DATA_SIZE];
    bool aggregation_ready[BUILDIN_AGGREGATION_FUNCTIONS_NUMBER_OF_SUPPORTED];
    float aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_NUMBER_OF_SUPPORTED];
};



#endif