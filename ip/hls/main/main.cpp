/*  Author: Ahmad Saleh
    <gen> tag means this lines will generated by our custom generator
*/

#include "HLS/hls.h"
#include "HLS/stdio.h"


component void selection(
                            ihc::stream_in<bool> &valid_in, 
                            ihc::stream_in<int> &data_in_part1, 
                            ihc::stream_in<int> &data_in_part2,
                            ihc::stream_in<int> &data_in_part3,
                            ihc::stream_in<int> &data_in_part4,

                            ihc::stream_out<bool> &valid_out, 
                            //<gen>
                            ihc::stream_out<int> &data_out_part1
                            //</gen>
) {

    bool local_valid = valid_in.read();
    int local_in_part1 = data_in_part1.read();
    int local_in_part2 = data_in_part2.read();
    int local_in_part3 = data_in_part3.read();
    int local_in_part4 = data_in_part4.read();

    valid_out.write(local_valid);

    //<gen>
    data_out_part1.write(local_in_part1);
    //</gen>

    return;
}

component void projection(
                            ihc::stream_in<bool> &valid_in, 
                            ihc::stream_in<int> &data_in_part1, 
                            ihc::stream_in<int> &data_in_part2,
                            ihc::stream_in<int> &data_in_part3,
                            ihc::stream_in<int> &data_in_part4, 
                          
                            ihc::stream_out<bool> &valid_out, 
                            ihc::stream_out<int> &data_out_part1, 
                            ihc::stream_out<int> &data_out_part2,
                            ihc::stream_out<int> &data_out_part3,
                            ihc::stream_out<int> &data_out_part4
) {

        
    bool local_valid = valid_in.read();
    int local_in_part1 = data_in_part1.read();
    int local_in_part2 = data_in_part2.read();
    int local_in_part3 = data_in_part3.read();
    int local_in_part4 = data_in_part4.read();

    if (local_valid == false){
        valid_out.write(false);
        data_out_part1.write(local_in_part1);
        data_out_part2.write(local_in_part2);
        data_out_part3.write(local_in_part3);
        data_out_part4.write(local_in_part4);
        return;
    }


    //<gen>
    int left_hand_cond = (local_in_part1 + local_in_part2) * 10;
    int right_hand_cond = 2000;
    bool projection_result = left_hand_cond < right_hand_cond;
    // </gen>

    valid_out.write(projection_result);
    data_out_part1.write(local_in_part1);
    data_out_part2.write(local_in_part2);
    data_out_part3.write(local_in_part3);
    data_out_part4.write(local_in_part4);
    return;
}

component void windowing (
                            ihc::stream_in<bool> &valid_in,
                            ihc::stream_in<bool> &eos_in,
                            
) {

}


int main() {

    ihc::stream_in<bool> valid; 
    ihc::stream_in<int> data_part1; 
    ihc::stream_in<int> data_part2;
    ihc::stream_in<int> data_part3;
    ihc::stream_in<int> data_part4;

    valid.write(true);
    data_part1.write(200);
    data_part2.write(300);
    data_part3.write(7);
    data_part4.write(8);

    ihc::stream_out<bool> valid_out; 
    ihc::stream_out<int> data_part1_out; 
    ihc::stream_out<int> data_part2_out;
    ihc::stream_out<int> data_part3_out;
    ihc::stream_out<int> data_part4_out;
    projection(valid, data_part1, data_part2, data_part3, data_part4,
                 valid_out, data_part1_out, data_part2_out, data_part3_out, data_part4_out);

    bool res = valid_out.read();
    if (res) {
        printf("accepted \n");
    }     
    else {
        printf("rejected \n");
    }

    return 0;

}



