package stepDefinitions;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;


public class LoginSteps {
    WebDriver driver;
    WebDriverWait wait;

    @Given("^User is on Login page$")
    public void loginPage() {
        //Setup instances
        driver = new FirefoxDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("https://v1.training-support.net/selenium/login-form");
    }

    @When("^User enters username and password$")
    public void enterCredentials() {
        driver.findElement(By.id("username")).sendKeys("admin");
        driver.findElement(By.id("password")).sendKeys("password");
        driver.findElement(By.xpath("//button[@type='submit']")).click();
    }

    @When("User enters {string} and {string}")
    public void user_enters_and(String username, String password) throws Throwable {
        driver.findElement(By.id("username")).sendKeys(username);
        driver.findElement(By.id("password")).sendKeys(password);
        driver.findElement(By.xpath("//button[@type='submit']")).click();
    }


    @Then("^Read the page title and confirmation message$")
    public void readTitleAndHeading() {
        wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id("action-confirmation")));
        String pageTitle = driver.getTitle();
        String confirmMessage = driver.findElement(By.id("action-confirmation")).getText();
        System.out.println("Page title is: " + pageTitle);
        System.out.println("Login message is: " + confirmMessage);
    }

    @And("^Close the Browser$")
    public void closeBrowser() {
        driver.close();
    }

    @When("User enters the following username and password")
    public void user_enters_and(DataTable dataTable) {
        List<List<String>> credentials = dataTable.asLists();
            for(int i=1;i<credentials.size();i++){
                List<String> row=credentials.get(i);
                String username = row.get(0);
                String password = row.get(1);
                driver.findElement(By.id("username")).clear();
                driver.findElement(By.id("username")).sendKeys(username);
                driver.findElement(By.id("password")).clear();
                driver.findElement(By.id("password")).sendKeys(password);
                driver.findElement(By.xpath("//button[@type='submit']")).click();
            }

            }


        }