package activities;

public class Activity1 {

    public static void main(String[] args){



        Car carname = new Car();

        carname.make = 2014;
        carname.color= "Black";
        carname.transmission="Manual";



        carname.displayCharacteristics();
        carname.accelarate();
        carname.brake();
    }





}
