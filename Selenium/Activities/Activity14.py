from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

service = FirefoxService(GeckoDriverManager().install())

with webdriver.Firefox(service=service) as driver:
    # Navigate to the URL
    driver.get("https://v1.training-support.net/selenium/tables")
    #driver.set_window_size(1024, 600)
    driver.maximize_window()
    # Print the title of the page
    print("Page title is: ", driver.title)

    # Get number of columns
    columns = driver.find_elements(By.XPATH, "//table[@id='sortableTable']/thead/tr/th")
    print("Number of columns: ", len(columns))
    # Get number of rows
    rows = driver.find_elements(By.XPATH, "//table[@id='sortableTable']/tbody/tr")
    print("Number of rows: ", len(rows))

    # Get cell value from the second row and second column before sorting
    second_row_second_cell_before_sort = driver.find_element(By.XPATH, "//table[@id='sortableTable']/tbody/tr[2]/td[2]")
    # Print the cell value
    print("Cell value at second row and second column: ", second_row_second_cell_before_sort.text)

    # Find and click the first heading in the table
    driver.find_element(By.XPATH, "//table[@id='sortableTable']/thead/tr/th[1]").click()

    # Get cell value from the second row and second column after sorting
    second_row_second_cell_after_sort = driver.find_element(By.XPATH, "//table[@id='sortableTable']/tbody/tr[2]/td[2]")
    # Print the cell value
    print("Cell value at second row and second column: ", second_row_second_cell_after_sort.text)