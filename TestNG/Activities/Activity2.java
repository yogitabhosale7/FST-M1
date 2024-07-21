import io.github.bonigarcia.wdm.WebDriverManager;
import org.bouncycastle.pqc.crypto.util.PQCOtherInfoGenerator;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.SkipException;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class Activity2 {
    private WebDriver driver;

    @BeforeClass
    public void beforeMethod(){
        WebDriverManager.chromedriver().setup();
        driver=new ChromeDriver();

        driver.get("https://v1.training-support.net/selenium/target-practice");
    }

    @Test
    public void testCase1(){
        String title= driver.getTitle();
        System.out.println("This is:" +title);
        Assert.assertEquals(title,"Target Practice");
    }
    @Test
    public void testCase2(){
        WebElement blackButton =
    driver.findElement(By.cssSelector("button.black"));
        Assert.assertTrue(blackButton.isDisplayed());
        Assert.assertEquals(blackButton.getText(),"Black");
    }
    @Test(enabled=false)
    public void TestCase3() {
         String subHeading =
    driver.findElement(By.className("Sub")).getText();
         Assert.assertTrue(subHeading.contains("Practice"));
    }
    @Test
    public void testCase4() {
        throw new SkipException("Skipping test Case");
    }
    @AfterTest
    public void afterMethod() {
        driver.close();
        }


    }

