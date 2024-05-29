import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
/*Using Selenium:

Open a new browser to https://v1.training-support.net/selenium/target-practice
Get the title of the page and print it to the console.
Using xpath:
Find the 3rd header on the page and print it's text to the console.
Find the 5th header on the page and print it's color.
Using any other locator:
Find the violet button and print all it's classes.
Find the grey button and print it's text.
Close the browser.*/

public class Activity4 {
    public static void main(String[] args) {
        // Set up Firefox driver
        WebDriverManager.firefoxdriver().setup();
        // Create a new instance of the Firefox driver
        WebDriver driver = new FirefoxDriver();

        // Open the page
        driver.get("https://v1.training-support.net/selenium/target-practice");
        // Print the title of the page
        System.out.println("Home page title: " + driver.getTitle());

        // Find the 3rd header and print its text
        String thirdHeaderText = driver.findElement(By.xpath("//h3[@id='third-header']")).getText();
        System.out.println(thirdHeaderText);
        // Find the 5th header and print its colour
        String fifthHeaderColor = driver.findElement(By.xpath("//h5[text()='Fifth header']")).getCssValue("color");
        System.out.println(fifthHeaderColor);

        // Find the violet button and print its classes
        String violetButtonClass = driver.findElement(By.xpath("//button[text()='Violet']")).getAttribute("class");
        System.out.println(violetButtonClass);
        // Find the grey button and print its text
        String greyButtonText = driver.findElement(By.xpath("//button[text()='Grey']")).getText();
        System.out.println(greyButtonText);

        // Close the browser
        driver.close();
    }
}