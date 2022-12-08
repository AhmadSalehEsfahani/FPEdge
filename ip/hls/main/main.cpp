/*  Author: Ahmad Saleh
    <gen> tag means this lines will generated by our custom generator
*/

#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "HLS/hls.h"
#include "HLS/hls_float.h"
#include <stdlib.h>


// SUPPORTED AGGREGATIN FUNCTIONS: COUNT, AVERAGE, MIN, MAX
#define BUILDIN_AGGREGATION_FUNCTIONS_NUMBER_OF_SUPPORTED 5
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_COUNT 0
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG   1
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_MIN   2
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_MAX   3
#define BUILDIN_AGGREGATION_FUNCTIONS_CODE_SUM   4

#define BUILDIN_NUMBER_OF_TESTS 100
#define BUILDIN_ORDER_OF_TESTS  500


//<gen>
#define TUPLE_DATA_SIZE             4
#define WINDOWING_k                 4
#define AGGREGATION_FUNCTION_CODE   1
#define AGGREGATION_FIELD_CODE      0
//</gen>

struct Tuple {
    bool valid = false;
    int data[TUPLE_DATA_SIZE] = {0};
    bool aggregation_ready = false;
    float aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_NUMBER_OF_SUPPORTED] = {0.0};
};


component void projection(
                        ihc::stream_in<Tuple> &stream_in_tuple,  
                        ihc::stream_out<Tuple> &stream_out_tuple
) {

        
    Tuple tuple = stream_in_tuple.read();

    if (!tuple.valid){
        stream_out_tuple.write(tuple);
        return;
    }


    //<gen>
    int left_hand_cond = (tuple.data[0] * tuple.data[1]);
    int right_hand_cond = 20000;
    bool projection_result = left_hand_cond < right_hand_cond;
    // </gen>

    tuple.valid = projection_result;
    stream_out_tuple.write(tuple);

    return;
}

component Tuple aggregation (
                        Tuple in_tuple,
                        int function_code,
                        int field_code,
                        bool eos
){

    static float count, avg, min, max, sum;
    Tuple result;
    result.valid = in_tuple.valid;
    #pragma unroll
    for (int i = 0; i < TUPLE_DATA_SIZE; i++){
        result.data[i] = in_tuple.data[i];
    }


    if (in_tuple.valid) {
        if (function_code == BUILDIN_AGGREGATION_FUNCTIONS_CODE_COUNT){
            count = count + 1;
        }
        else if (function_code == BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG){
            sum = sum + in_tuple.data[field_code];
            count = count + 1;
            avg = sum / count;
        }
        else if (function_code == BUILDIN_AGGREGATION_FUNCTIONS_CODE_MAX){
            count = count + 1;
            if (in_tuple.data[field_code] > max){
                max = in_tuple.data[field_code];
            }
        }
        else if (function_code == BUILDIN_AGGREGATION_FUNCTIONS_CODE_MIN){
            count = count + 1;
            if (in_tuple.data[field_code] < min){
                min = in_tuple.data[field_code];
            }
        }
        else if (function_code == BUILDIN_AGGREGATION_FUNCTIONS_CODE_SUM){
            count = count + 1;
            sum = sum + in_tuple.data[field_code];
        }
    }

    result.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_COUNT] = count;
    result.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG] = avg;
    result.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_MAX] = max;
    result.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_MIN] = min;
    result.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_SUM] = sum;

    if (eos) {
        count = 0;
        avg = 0;
        min = FLT_MAX;
        max = FLT_MIN;
        sum = 0;
        result.aggregation_ready = true;
    }

    return result;
}

component void windowing (
                        ihc::stream_in<Tuple> &stream_in_tuple, 
                        ihc::stream_out<Tuple> &stream_out_tuple
) {

    Tuple tuple;
    static int i = 1;

    tuple = stream_in_tuple.read();
    if (!tuple.valid){
        stream_out_tuple.write(tuple);
        return;
    }

    tuple = aggregation (tuple, AGGREGATION_FUNCTION_CODE, AGGREGATION_FIELD_CODE, i%WINDOWING_k == 0);
    stream_out_tuple.write(tuple);
    i++;

    return;
}

// component void groupBy (){

// } 

int main() {

    ihc::stream_in<Tuple> stream_in1;
    ihc::stream_out<Tuple> stream_out1;
    ihc::stream_in<Tuple> stream_in2;
    ihc::stream_out<Tuple> stream_out2;
    Tuple tuple[BUILDIN_NUMBER_OF_TESTS];
    Tuple results[BUILDIN_NUMBER_OF_TESTS];

    for (int i = 0; i < BUILDIN_NUMBER_OF_TESTS; i++) {
        tuple[i].valid = true;
        tuple[i].data[0] = rand() % BUILDIN_ORDER_OF_TESTS;       //price
        tuple[i].data[1] = rand() % BUILDIN_ORDER_OF_TESTS;      //volume
        tuple[i].data[2] = rand() % BUILDIN_ORDER_OF_TESTS;       //code
        tuple[i].data[3] = rand() % BUILDIN_ORDER_OF_TESTS;       //stock
        tuple[i].aggregation_ready = false;
        tuple[i].aggregation_results[0] = 0.0;
        tuple[i].aggregation_results[1] = 0.0;
        tuple[i].aggregation_results[2] = 0.0;
        tuple[i].aggregation_results[3] = 0.0;
        tuple[i].aggregation_results[4] = 0.0;
    }
    

    Tuple interTuple;
    for (int i = 0; i < BUILDIN_NUMBER_OF_TESTS; i++) {

        
        stream_in1.write(tuple[i]);
        projection(stream_in1, stream_out1);
        interTuple = stream_out1.read();
        stream_in2.write(interTuple);
        
        windowing(stream_in2, stream_out2);

        results[i] = stream_out2.read();
        

        if (results[i].valid) {
            printf("accepted: price:%d, volume:%d, code:%d, stock:%d, count:%f, avg:%f, min:%f, max:%f, sum:%f, readyag:%d \n",
             results[i].data[0], results[i].data[1], results[i].data[2], results[i].data[3],
             results[i].aggregation_results[0], results[i].aggregation_results[1], 
             results[i].aggregation_results[2], results[i].aggregation_results[3],
             results[i].aggregation_results[4], results[i].aggregation_ready);
        }     
        else {
            printf("rejected: price:%d, volume:%d, code:%d, stock:%d, count:%f, avg:%f, min:%f, max:%f, sum:%f, readyag:%d \n",
             results[i].data[0], results[i].data[1], results[i].data[2], results[i].data[3],
             results[i].aggregation_results[0], results[i].aggregation_results[1], 
             results[i].aggregation_results[2], results[i].aggregation_results[3],
             results[i].aggregation_results[4], results[i].aggregation_ready);
        }
    }

    return 0;

}
