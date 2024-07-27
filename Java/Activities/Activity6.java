package Activities;

public class Activity6 {
    public static void main(String[] args) throws InterruptedException {
        Plane indigo = new Plane(10);

        indigo.onboard("Yogita");
        indigo.onboard("Nobita");
        indigo.onboard("Uma");

        System.out.println(" Take Off time " + indigo.takeOff());
        System.out.println("Passengers are " + indigo.getPassesngers());
        Thread.sleep(5000);
        indigo.land();
        System.out.println("Landing time " + indigo.getLastTimeLanded());
    }

}