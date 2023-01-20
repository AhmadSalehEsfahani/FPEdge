#include <stdio.h>
#include <stdlib.h>

#define LINE_LENGTH         4096
#define COMMAND_LENGTH      5000

#define DEVICE_TOKEN    "j7ToDSelaeyUSBVGoAPF"
#define MQTT_ADDRESS    "localhost"   

int main(int argc, char **argv)
{
    FILE * fp;
    char line[LINE_LENGTH];
    char command[COMMAND_LENGTH];
    size_t len = 0;

    fp = fopen(argv[1], "r");
    if (fp == NULL){
        printf("can not open the file\n");
        return 1;
    }

    while(fgets(line, LINE_LENGTH, fp)) {
        printf("read from file: %s\n", line);
        sprintf(command, 
        "mosquitto_pub -d -q 1 -h \"%s\" -p \"1883\" -t \"v1/devices/me/telemetry\" -u \"%s\" -m \"%s\"",
         MQTT_ADDRESS, DEVICE_TOKEN, line);
        printf("command to execute: %s\n", command);
        system(command);
    }

    fclose(fp);
    
    return 0;
}