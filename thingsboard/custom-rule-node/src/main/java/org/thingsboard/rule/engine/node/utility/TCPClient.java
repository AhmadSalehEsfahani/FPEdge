package org.thingsboard.rule.engine.node.utility;

import java.io.IOException;
import java.net.Socket;
import java.util.Formatter;
import java.util.Scanner;

public class TCPClient {

    private static final String serverAddress = "127.0.0.1";
    private static final int port = 8090;
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
    }

    public void sendBool(boolean value) {
        socketFormatter.format(String.valueOf(value));
        socketFormatter.flush();
    }

    public float readInteger(){
        String response = socketScanner.nextLine();

        return Integer.parseInt(response);
    }


    public float readFloat(){
        String response = socketScanner.nextLine();

        return Float.parseFloat(response);
    }

    public void sendTuple(DataTuple tuple){
        this.sendBool(tuple.valid);
        this.sendInteger(tuple.price);
        this.sendInteger(tuple.volume);
        this.sendInteger(tuple.code);
        this.sendInteger(tuple.stock);
    }

    public void responseOnTuple(DataTuple tuple){
        String response = socketScanner.nextLine();

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
