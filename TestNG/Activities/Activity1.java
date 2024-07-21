import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class Activity1 {

    private WebDriver driver;

    @BeforeClass
    public void beforeMethod(){
        WebDriverManager.chromedriver().setup();
        driver=new ChromeDriver();

        driver.get("https://v1.training-support.net");
    }
    @Test
    public void TestCase() {
        String title = driver.getTitle();

        System.out.println("Page title is:" + title);

        Assert.assertEquals("Training Support", title);

  //      driver.findElement(By.id("about-link")).click();

        System.out.println("New page title is:" + driver.getTitle());

        Assert.assertEquals(driver.getTitle(), "About Training Support");
    }

        @AfterClass
        public void afterMethod() {
            driver.quit();
        }
    }

    

