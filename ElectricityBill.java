package model;

public class ElectricityBill {

    private int units;
    private double amount;

    private double first50;
    private double next100;
    private double next100_250;
    private double above250;


    public ElectricityBill(int units){

        this.units = units;
        calculate();

    }


    private void calculate(){

        int remaining = units;


        if(remaining > 0){

            int temp = Math.min(remaining,50);

            first50 = temp * 3.50;

            remaining -= temp;
        }


        if(remaining > 0){

            int temp = Math.min(remaining,100);

            next100 = temp * 4.00;

            remaining -= temp;
        }


        if(remaining > 0){

            int temp = Math.min(remaining,100);

            next100_250 = temp * 5.20;

            remaining -= temp;
        }


        if(remaining > 0){

            above250 = remaining * 6.50;

        }


        amount =
        first50+
        next100+
        next100_250+
        above250;

    }


    public double getAmount(){
        return amount;
    }


    public double getFirst50(){
        return first50;
    }


    public double getNext100(){
        return next100;
    }


    public double getNext100_250(){
        return next100_250;
    }


    public double getAbove250(){
        return above250;
    }


    public int getUnits(){
        return units;
    }

}