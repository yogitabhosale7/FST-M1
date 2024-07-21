from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.select import Select
import time

service = FirefoxService(GeckoDriverManager().install())

with webdriver.Firefox(service=service) as driver:
    # Initialize the wait object
    wait = WebDriverWait(driver, 10)

    # Navigate to the URL
    driver.get("https://v1.training-support.net/selenium/tab-opener")
    # Print the title of the page
    print("Page title is: ", driver.title)

    # Print the handle of the current page
    print("Current window handle: ", driver.current_window_handle)
    # Find the link to open a new tab/window and click it
    driver.find_element(By.ID, "launcher").click()

    # Wait for new tab/window to open
    wait.until(EC.number_of_windows_to_be(2))
    # Print the handles of all the windows
    print("All window handles: ", driver.window_handles)

    # Switch focus to new tab/window
    driver.switch_to.window(driver.window_handles[1])

    # Print the handle of the currently active tab/window
    print("Current window handle: ", driver.current_window_handle)
    # Print the new tab/window title
    print("New Tab title: ", driver.title)
    # Print the new tab/window heading
    time.sleep(8)
    heading = driver.find_element(By.XPATH, "//div[@class='content']")
    print(heading.text)

    # For the next tab/window
    # Find the link to open a new tab/window and click it
    time.sleep(5)
    driver.find_element(By.ID, "actionButton").click()
    # Wait for new tab/window to open
    wait.until(EC.number_of_windows_to_be(3))
    # Print the handles of all the windows
    print("All window handles: ", driver.window_handles)

    # Switch focus to new tab/window
    driver.switch_to.window(driver.window_handles[2])

    # Print the handle of the currently active tab/window
    print("Current window handle: ", driver.current_window_handle)
    # Print the new tab/window title
    print("New Tab title: ", driver.title)
    # Print the new tab/window heading
    time.sleep(6)
    heading = driver.find_element(By.XPATH, "//div[@class='content']")
    print(heading.text)