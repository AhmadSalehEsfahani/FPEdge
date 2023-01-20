#ifndef SERVER_HEADER
#define SERVER_HEADER

#include <stdbool.h>

#define PORT            8090
#define BUFFER_SIZE     1024

#define ACK_STR "ACK"

bool server_init();
void server_close();
int server_read_int();
float server_read_float();
void server_send_str(char* message);
void server_send_float(float number);
void send_ACK();
void receive_ACK();


#endif