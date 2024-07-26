package Activities;

public class Activity1 {
    public static void main(String[] args) {
        Car toyota = new Car();
        toyota.make = 2014;
        toyota.color = "Black";
        toyota.transmission = "Manual";
        toyota.displayCharacterstics();
        toyota.accelerate();
        toyota.brake();
    }
    public class Car {
        String color;
        int make;
        String transmission;
        int tyres;
        int doors;

        Car() {
            tyres = 4;
            doors = 4;
        }
        public void displayCharacterstics(){
            System.out.println("Color of the Car: " + color);
            System.out.println("Make of the Car: " + make);
            System.out.println("Transmission of the Car: " + transmission);
            System.out.println("Number of doors on the car: " + doors);
            System.out.println("Number of tyres on the car: " + tyres);
        }
        public void accelerate() {
            System.out.println("Car is moving forward.");
        }
        public void brake() {
            System.out.println("Car has stopped.");
        }
    }
}
