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

    if (!server_init()){
        printf("server initialization error !!! \n")
        return 1;
    }
    
    uint8_t *tuple_map = NULL;
    uint8_t *bridge_map = NULL;

    int fd = 0;
    int result = 0;

    fd = open("/dev/mem", O_RDWR | O_SYNC);

    if (fd < 0) {
        perror("Couldn't open /dev/mem\n");
        return -2;
    }

    bridge_map = (uint8_t *)mmap(NULL, BRIDGE_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BRIDGE);

    if (bridge_map == MAP_FAILED) {
        perror("mmap failed.");
        close(fd);
        return -3;
    }

    tuple_map = bridge_map + TUPLE_BASE;


    while (1) {
    
        struct Tuple tuple;

        tuple.valid = (bool) server_read_int();
        for (int i = 0; i < TUPLE_DATA_SIZE; i++){
            tuple.data[i] = (int32_t) server_read_int();
        }

        *((struct Tuple *)tuple_map) = tuple;

        tuple = *((struct Tuple *)tuple_map);

        if (tuple.valid){
            if (tuple.aggregation_ready[BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG]){
                server_send_str(SIGN_ACCEPT_READY_ARRG_RESULT);
                server_send_float(tuple.aggregation_results[BUILDIN_AGGREGATION_FUNCTIONS_CODE_AVG])
            }
            else{
                server_send_str(SIGN_ACCEPT_NOT_READY_ARRG_RESULT);
            }
        }

        else{
            server_send_str(SIGN_REJECT_TUPLE);
        }
    }
    
    server_close();

    return 0;

}

