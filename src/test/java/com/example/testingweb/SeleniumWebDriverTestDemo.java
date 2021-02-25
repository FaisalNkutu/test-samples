package com.example.testingweb;



import org.apache.logging.log4j.Logger;
import org.junit.platform.commons.logging.LoggerFactory;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
//import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import lombok.extern.slf4j.Slf4j;


import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;


@Slf4j
public class SeleniumWebDriverTestDemo {

	static Logger logger = LogManager.getLogger(SeleniumWebDriverTestDemo.class);
	public static void main(String[] args) {
		// declaration and instantiation of objects/variables

		System.setProperty("webdriver.gecko.driver","C:\\Users\\Faisa\\Downloads\\geckodriver-v0.29.0-win64\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		// uncomment the above 2 lines and comment below 2 lines to use FireFox
		//System.setProperty("webdriver.chrome.driver",
		//		"chromedriver.exe");
		//WebDriver driver = new ChromeDriver();

		String baseUrl = "http://www.cnn.com";

		String expectedTitle = "CNN - Breaking News, Latest News, Videos";
		String actualTitle = "";
	

		// launch Browser and direct it to the Base URL
		driver.get(baseUrl);

		// get the actual value of the title
		actualTitle = driver.getTitle();

		// get the actual value of the element - see more examples here
		WebElement actualElement = driver.findElement(By.name("name"));
		
		/*
		 * compare the actual title of the page with the expected one and print the
		 * result as "Passed" or "Failed"
		 */
		if (actualTitle.contentEquals(expectedTitle)) {
			logger.info("Test Passed!");
		} else {
			logger.info("Test Failed" + actualTitle);
		}

		// close Browser
		driver.close();

	}

}
