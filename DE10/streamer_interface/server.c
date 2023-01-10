#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include "server.h"


int server_fd, new_socket;
struct sockaddr_in address;
int opt = 1;
int addrlen = sizeof(address);
char messageFromClient[BUFFER_SIZE] = { 0 };
char* messageToClient;

bool server_init(){

    printf("server initialization begin ...\n");

    messageToClient = (char*) malloc(BUFFER_SIZE * sizeof(char));
    
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("socket failed");
        return false;
    }
 
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT , &opt, sizeof(opt))) {
        printf("setsockopt");
        return false;
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);
 
 
    if (bind(server_fd, (struct sockaddr*)&address, sizeof(address)) < 0) {
        printf("bind failed");
        return false;
    }
    if (listen(server_fd, 3) < 0) {
        printf("listen");
        return false;
    }
    if ((new_socket = accept(server_fd, (struct sockaddr*)&address, (socklen_t*)&addrlen)) < 0) {
        printf("accept");
        return false;
    }

    printf("server initialized successfully\n");

    return true;
}

void server_close(){    
    printf("shutting down\n");
    close(new_socket);
    shutdown(server_fd, SHUT_RDWR);
}

int server_read_int(){
    read(new_socket, messageFromClient, 1024);
    printf("client says: %s\n", messageFromClient);
    return (int) strtol(messageFromClient, (char **)NULL, 10);
}

void server_send_str(char* message){
    sprintf(messageToClient, "%s\n", message);
    send(new_socket, messageToClient, strlen(messageToClient), 0);
    printf("%s sent to client", messageToClient);
}

void server_send_float(float number){
    sprintf(messageToClient, "%f\n", number);
    send(new_socket, messageToClient, strlen(messageToClient), 0);
    printf("%s sent to client", messageToClient);
}
