public class Activity4 {
    // Driver Declaration
    AndroidDriver driver;
    WebDriverWait wait;

    // Set up method
    @BeforeClass
    public void setUp() throws MalformedURLException {
        // Desired Capabilities
        UiAutomator2Options options = new UiAutomator2Options();
        options.setPlatformName("android");
        options.setAutomationName("UiAutomator2");
        options.setAppPackage("com.android.contacts");
        options.setAppActivity(".activities.PeopleActivity");
        options.noReset();

        // Server Address
        URL serverURL = new URL("http://localhost:4723/");

        // Driver Initialization
        driver = new AndroidDriver(serverURL, options);
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    }

    // Test method
    @Test
    public void contactsTest() {
        // Find and click the add button
        driver.findElement(AppiumBy.accessibilityId("Create new contact")).click();

        // Wait for elements to load
        wait.until(ExpectedConditions.elementToBeClickable(
                AppiumBy.xpath("//android.widget.EditText[@text='first name']")
        ));

        // Enter the details
        driver.findElement(AppiumBy.xpath(
                "//android.widget.EditText[@text='first name']"
        )).sendKeys("Yogita");
        driver.findElement(AppiumBy.xpath(
                "//android.widget.EditText[@text='last name']"
        )).sendKeys("Bhosale");
        driver.findElement(AppiumBy.xpath(
                "//android.widget.EditText[@text='Phone']"
        )).sendKeys("9766620062");
        // Click Save
        driver.findElement(AppiumBy.id("editor_menu_save_button")).click();

        // Wait for contact to save
        wait.until(ExpectedConditions.elementToBeClickable(AppiumBy.id("large_title")));

        // Assertion
        String contactName = driver.findElement(AppiumBy.id("large_title")).getText();
        Assert.assertEquals(contactName, "Yogita Bhosale");
    }

    // Tear down method
    @AfterClass
    public void tearDown() {
        // Close the app
        driver.quit();
    }
}