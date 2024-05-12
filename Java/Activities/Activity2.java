package activities;

import java.util.Arrays;

public class Activity2 {
    public static void main (String[] args){
        int[] array = {10, 77, 10, 54, -11, 10};
        System.out.println("original array is "+ Arrays.toString(array));
        int searchnum = 10;
        int fixedsum = 30;
        System.out.println("Result is " +result(array,searchnum, fixedsum));
    }
    public static boolean result(int[] array , int searchnum, int fixedsum )
    {
      int tempsum = 0;
       for (int number: array){
       if(number == searchnum)
           tempsum = tempsum+number;
       if(tempsum>fixedsum)
           break;
       }
        return tempsum==fixedsum;
    }
}
