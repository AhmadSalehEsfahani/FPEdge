package org.thingsboard.rule.engine.node.utility;

public class DataTuple {

    public static String priceLabel = "price", volumeLabel = "volume",
            codeLabel = "code", stockLabel = "stock", validLabel = "valid";
    public boolean valid;
    public int price, volume, code, stock;

    public float count = 0, sum = 0, avg = 0, min = 0, max = 0;
    public boolean countReady = false, sumReady = false, avgReady = false, minReady = false, maxReady = false;

    public DataTuple(boolean valid, int price, int volume, int code, int stock) {
        this.valid = valid;
        this.price = price;
        this.volume = volume;
        this.code = code;
        this.stock = stock;
    }
}
