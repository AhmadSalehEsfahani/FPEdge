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
//</gen>

#define MEM_SIZE 1

typedef ihc::stream_in<uint32_t> int_in_t;


struct Tuple {
    int a = 0;
    int b = 0;
    int res = 0;
};



//<gen>
//ihc::stream<int> s0, s1, s2;
//</gen>

//ihc::stream_in<int> s_in;
//ihc::stream_out<int> s_out;



// //<gen>
// struct proj1{
//     static bool f(Tuple &tuple){
//         return ((tuple.data[0] * tuple.data[1]) < 20000);
//     }
// };
// //</gen>

// struct count_struct{
//     template<typename T>
//     static T f(T step, bool eos){
//         static T count = 0;
//         static T result;
        
//         count += step;
//         result = count;

//         if (eos){
//             count = 0;
//         }

//         return result;
//     }
// };

// struct sum_struct{
//     template<typename T>
//     static T f(T field, bool eos){
//         static T sum = 0;
//         static T result;

//         sum += field;
//         result = sum;

//         if (eos){
//             sum = 0;
//         }

//         return result;
//     }
// };

// struct avg_struct{
//     template <typename T>
//     static T f(T field, bool eos){
//         static T sum = 0;
//         static int count = 0;
//         static T result;
        
//         sum += field;
//         count++;

//         result = sum / count;

//         if (eos){
//             sum = 0;
//             count = 0;
//         }

//         return result;
//     }
// };

// struct min_struct{
//     template <typename T>
//     static T f(T field, bool eos){
//         static T min = FLT_MAX;
//         static T result;

//         if (field < min){
//             min = field;
//         }

//         result = min;

//         if (eos){
//             min = 0;
//         }

//         return result;
//     }
// };

// struct max{
//     template <typename T>
//     static T f(T field, bool eos){
//         static T max = FLT_MIN;
//         static T result;

//         if (field > max){
//             max = field;
//         }

//         result = max;

//         if (eos){
//             max = 0;
//         }

//         return result;
//     }
// };


// template <auto &stream_in_tuple, auto &stream_out_tuple, typename T> void projection() {

        
//     auto tuple = stream_in_tuple.read();

//     if (!tuple.valid){
//         stream_out_tuple.write(tuple);
//         return;
//     }

//     bool projection_result = true;
    
//     projection_result = projection_result & T::f(tuple);

//     tuple.valid = tuple.valid & projection_result;
//     stream_out_tuple.write(tuple);

//     return;
// }


// template <auto &stream_in_tuple, auto &stream_out_tuple, typename AGGR, int FIELD, typename RTRN_TP, int AGGR_NUM>
// void windowing () {

//     static int i = 1;
//     auto tuple = stream_in_tuple.read();
//     if (!tuple.valid){
//         stream_out_tuple.write(tuple);
//         return;
//     }

//     tuple.aggregation_results[AGGR_NUM] = AGGR::template f<RTRN_TP>(tuple.data[FIELD], i%WINDOWING_k == 0);
//     tuple.aggregation_ready[AGGR_NUM] = i%WINDOWING_k == 0;

//     stream_out_tuple.write(tuple);
//     i++;

//     return;
// }

// // component void groupBy (){

// // }

component hls_always_run_component 
void streamer (hls_avalon_slave_memory_argument(MEM_SIZE*sizeof(Tuple)) Tuple* in0,
                hls_avalon_slave_memory_argument(MEM_SIZE*sizeof(Tuple)) Tuple* out0){
    
    //uint32_t a = s_in.read();

    //a = a + 5;

    //c[0] = a[0] + b[0];
    out0[0].a = in0[0].a;
    out0[0].b = in0[0].b;
    out0[0].res = in0[0].a + in0[0].b;
    

    //return a; 
}

int main() {

    //uint32_t a = 7;
    int res;

    Tuple in[MEM_SIZE];
    Tuple out[MEM_SIZE];

    in[0].a = 5;
    in[0].b = 10;
    streamer(in, out);
    res = out[0].res;
    // /*
    // int_in_t samp;
    // samp.write(a);
    // */
    // res = streamer(/*samp*/);

    printf("%d\n", res);
    

    return 0;

}
