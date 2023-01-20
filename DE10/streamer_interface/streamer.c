#include <error.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include "server.h"
#include "streamer.h"


int main(int argc, char **argv) {

    printf("program begin ...\n");
    if (!server_init()){
        printf("server initialization error !!! \n");
        return 1;
    }
    
    uint8_t *in_map = NULL;
    uint8_t *out_map = NULL;
    uint8_t *bridge_map = NULL;

    int fd = 0;
    int result = 0;

    fd = open("/dev/mem", O_RDWR | O_SYNC);

    if (fd < 0) {
        printf("Couldn't open /dev/mem\n");
        return -2;
    }

    bridge_map = (uint8_t *)mmap(NULL, BRIDGE_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRIDGE);

    if (bridge_map == MAP_FAILED) {
        printf("mmap failed.");
        close(fd);
        return -3;
    }

    in_map = bridge_map + IN_TUPLE_BASE;
    out_map = bridge_map + OUT_TUPLE_BASE;


    while (1) {

        tuple_in.valid = (bool) server_read_int();
        for (int i = 0; i < TUPLE_DATA_SIZE; i++){
            tuple_in.data[i] = server_read_float();
        }

        printf("before process ----> valid:%d, data1:%f, data2:%f, data3:%f, data4:%f\n", tuple_in.valid, tuple_in.data[0], tuple_in.data[1], tuple_in.data[2], tuple_in.data[3]);

        *((struct Tuple *)in_map) = tuple_in;

        tuple_out = *((struct Tuple *)out_map);

        printf("after process ----> valid:%d, data1:%f, data2:%f, data3:%f, data4:%f\n", tuple_out.valid, tuple_out.data[0], tuple_out.data[1], tuple_out.data[2], tuple_out.data[3]);

        if (tuple_out.valid){
            if (tuple_out.aggregation_ready[BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG]){
                server_send_str(SIGN_ACCEPT_READY_ARRG_RESULT);
                server_send_float(tuple_out.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG]);
            }
            else{
                server_send_str(SIGN_ACCEPT_NOT_READY_ARRG_RESULT);
            }
        }

        else{
            server_send_str(SIGN_REJECT_TUPLE);
        }
    }

    result = munmap(bridge_map, BRIDGE_SPAN);

    if (result < 0) {
        perror("Couldnt unmap bridge.");
        close(fd);
        return -4;
    }

    close(fd);
    server_close();

    return 0;
}

