package Activities;

abstract class Notebook{
    String title;
    abstract void setTitle(String s);
    public String getTitle(){
        return title;
    }
}
class Mybook extends Notebook {
    public void setTitle(String s){
        title =s;
    }
}

public class Activity5 {
    public static void main(String[] args) {
        Mybook newNovel = new Mybook();
        newNovel.setTitle("Video Games");
        System.out.println(" Title of the new Novel is " + newNovel.getTitle() );
    }
}