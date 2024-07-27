package Activities;

import java.util.HashSet;
import java.util.Set;

public class Activity_10 {
    public static void main(String[] args) {
        Set<String> names = new HashSet<String>();
        names.add("val1");
        names.add("val2");
        names.add("val3");
        names.add("val4");
        names.add("val5");
        names.add("val6");
        System.out.println("Size of HashSet is " + names.size());
        names.remove("val3");
        if(names.remove("val7")){
            System.out.println("val7 has been removed");
        }
        else{
            System.out.println("val7 is not present in HashSet");
        }
        if(names.contains("val1")){
            System.out.println("val1 is present in HashSet");
        }
        else {
            System.out.println("val1 is not present in HashSet");
        }
        for(String y:names){
            System.out.println(y);
        }
    }
}