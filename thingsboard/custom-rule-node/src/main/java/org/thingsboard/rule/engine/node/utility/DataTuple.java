package org.thingsboard.rule.engine.node.utility;

public class DataTuple {

    public static String IDLabel = "ID", ageLabel = "age",
            BMILabel = "BMI", CARLabel = "CAR", validLabel = "valid";
    public boolean valid;
    public float id, age, bmi, car;

    public float count = 0, sum = 0, avg = 0, min = 0, max = 0;
    public boolean countReady = false, sumReady = false, avgReady = false, minReady = false, maxReady = false;

    public DataTuple(boolean valid, float id, float age, float bmi, float car) {
        this.valid = valid;
        this.id = id;
        this.age = age;
        this.bmi = bmi;
        this.car = car;
    }
}
