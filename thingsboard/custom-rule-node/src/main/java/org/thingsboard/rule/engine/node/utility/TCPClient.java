package org.thingsboard.rule.engine.node.utility;

import java.io.IOException;
import java.net.Socket;
import java.util.Formatter;
import java.util.Scanner;

public class TCPClient {

    private static final String serverAddress = "127.0.0.1";
    private static final int port = 8090;
    private static final String ACK_STR = "ACK";
    public static Socket socket;
    public static Scanner socketScanner;
    public static Formatter socketFormatter;

    public TCPClient() {
        try {
            socket = new Socket(serverAddress, port);
            socketScanner = new Scanner(socket.getInputStream());
            socketFormatter = new Formatter(socket.getOutputStream());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void sendInteger(int value){
        socketFormatter.format(String.valueOf(value));
        socketFormatter.flush();
        while(!socketScanner.nextLine().equals(ACK_STR));
    }

    public float readInteger(){
        String response = socketScanner.nextLine();
        socketFormatter.format(ACK_STR);
        socketFormatter.flush();

        return Integer.parseInt(response);
    }


    public float readFloat(){
        String response = socketScanner.nextLine();
        socketFormatter.format(ACK_STR);
        socketFormatter.flush();

        return Float.parseFloat(response);
    }

    public void sendTuple(DataTuple tuple){
        this.sendInteger(tuple.valid ? 1 : 0);
        this.sendInteger(tuple.price);
        this.sendInteger(tuple.volume);
        this.sendInteger(tuple.code);
        this.sendInteger(tuple.stock);
    }

    public void responseOnTuple(DataTuple tuple){
        String response = socketScanner.nextLine();
        socketFormatter.format(ACK_STR);
        socketFormatter.flush();

        switch (response) {
            case "0":
                tuple.valid = false;
                tuple.avgReady = false;
                break;
            case "10":
                tuple.valid = true;
                tuple.avgReady = false;
                break;
            case "11":
                tuple.valid = true;
                tuple.avgReady = true;
                break;
        }
    }

    public void close(){
        try {
            socketScanner.close();
            socketFormatter.close();
            socket.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
