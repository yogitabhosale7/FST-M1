package Activities;

public class activity4 {

    static void sort(int[] sortArray){
        int n = sortArray.length;
        for (int i = 1; i < n; ++i) {
            int key = sortArray[i];
            int j = i - 1;
            /* Move elements of arr[0..i-1], that are
               greater than key, to one position ahead
               of their current position */
            while (j >= 0 && sortArray[j] > key) {
                sortArray[j + 1] = sortArray[j];
                j = j - 1;
            }
            sortArray[j + 1] = key;
        }
    }

    static void printarray(int[] sortArray){
        for (int x:sortArray){
            System.out.print(x + " ");
        }
    }

    public static void main(String[] args) {
        int[] sortArray = {4,3,2,10,12,1,5,6,4};
        sort(sortArray);
        printarray(sortArray);

    }
}