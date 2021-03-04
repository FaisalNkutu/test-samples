package com.example.testingweb;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.Test;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

class SeleniumWebDriverJQueryTest {
    private ChromeDriver chromeDriver = null;
    private FirefoxDriver foxDriver = null;
    static Logger logger = LogManager.getLogger(SeleniumWebDriverJQueryTest.class);
    private JavascriptExecutor javascriptExecutor;
    @Test
    void testValidJQuery() {

        // Initialize google Fox webdriver.


        if(foxDriver == null)
        {
    		System.setProperty("webdriver.gecko.driver","C:\\Users\\Faisa\\Downloads\\geckodriver-v0.29.0-win64\\geckodriver.exe");
    		//WebDriver foxdriver = new FirefoxDriver();

            //Create a new instance
    		foxDriver = new FirefoxDriver();

            javascriptExecutor = (JavascriptExecutor)foxDriver;
            
            // This web page contains the jQuery js file.
    		foxDriver.get("https://www.dev2qa.com/demo/jquery/hide-show-contain-jquery.html");

            WebElement button = foxDriver.findElementById("showHideDiv");

            if(isElementVisible(button))
            {
                if(isjQueryLoaded(foxDriver, 10))
                {
                    runjQueryJavaScipt();
                }
            }
        }
    }
    @Test
    void testJQuery() {

        // Initialize google Fox webdriver.

        if(foxDriver == null)
        {
    		System.setProperty("webdriver.gecko.driver","C:\\Users\\Faisa\\Downloads\\geckodriver-v0.29.0-win64\\geckodriver.exe");
    		//WebDriver foxdriver = new FirefoxDriver();

            //Create a new instance
    		foxDriver = new FirefoxDriver();

            javascriptExecutor = (JavascriptExecutor)foxDriver;
            
            // This web page contains the jQuery js file.
    		foxDriver.get("https://www.dev2qa.com/demo/jquery/hide-show-contain-jquerys.html");

            WebElement button = foxDriver.findElementById("showHideDiv");

            if(isElementVisible(button))
            {
                if(isjQueryLoaded(foxDriver, 10))
                {
                    runjQueryJavaScipt();
                }

            }

        }


    }


    public void runjQueryScript() {

        // This web page contains the jQuery js file.
		foxDriver.get("https://www.dev2qa.com/demo/jquery/hide-show-contain-jquery.html");

        WebElement button = foxDriver.findElementById("showHideDiv");

        if(isElementVisible(button))
        {
            if(isjQueryLoaded(foxDriver, 10))
            {
                runjQueryJavaScipt();
            }

        }
    }

    public void runAfterInjectjQueryScript() {

        // This web page do not contains the jQuery js file. So we need to inject jQuery js file first.
		foxDriver.get("https://www.dev2qa.com/demo/jquery/hide-show-not-contain-jquery.html");

        // Inject and load jquery script first. After inject jQuery script the animation effect can be shown again.
        // You can comment below code to see the different.
        injectjQuery();

        if(isjQueryLoaded(foxDriver, 10))
        {
            runjQueryJavaScipt();
        }
    }


    /* This method will run a short jQuery script with JavascriptExecutor object. */
    private void runjQueryJavaScipt()
    {
        // This is the jQuery js script string that will be executed by js executor object. 
        // we do not click the button to trigger it. Just execute the script directly.
        String script = "// Get div display attribute value.\n" +
                "                var display = $(\".div\")[0].style.display;\n" +
                "                if(display=='none')\n" +
                "                {\n" +
                "                    $(\".div\").show(1000);\n" +
                "                }else\n" +
                "                {\n" +
                "                    $(\".div\").hide(1000);\n" +
                "                }";


        // Execute above jQuery script for the first time to hide the div.
        javascriptExecutor.executeScript(script);

        // Then sleep 3 seconds too see the effect.
        try
        {
            Thread.sleep(3000);
        }catch(InterruptedException ex)
        {
            ex.printStackTrace();
        }

        // Execute above jQuery script for the second time to show the div again.
        javascriptExecutor.executeScript(script);

        // Then sleep 3 seconds to see the effect.
        try
        {
            Thread.sleep(3000);
        }catch(InterruptedException ex)
        {
            ex.printStackTrace();
        }
    }

    /* Check and return whether the web element is visible or not. */
    public boolean isElementVisible(WebElement element){
        boolean ret = true;
        try
        {
            // Create visibility expected condition.
            ExpectedCondition condition = ExpectedConditions.visibilityOf(element);

            // Create WebDriver wait object.
            WebDriverWait webDriverWait = new WebDriverWait(foxDriver, 30);

            // WebDriver wait until the expected condition is true.
            webDriverWait.until(condition);
        }catch(TimeoutException ex)
        {
            ex.printStackTrace();
            ret = false;
        }finally
        {
            return ret;
        }
    }

    /* Check whether jQuery script file has been loaded in the web browser or not. */
    public boolean isjQueryLoaded(WebDriver driver, int waitTime) {

        boolean ret = true;

        try
        {
            logger.info("Check jQuery loading status. ");

            WebDriverWait webDriverWait = new WebDriverWait(foxDriver, 30);

            // Create a new expected condition.
            ExpectedCondition condition = new ExpectedCondition<Boolean>() {

                // Implement apply method.
                public Boolean apply(WebDriver webDriver) {

                    JavascriptExecutor jsExecutor = (JavascriptExecutor) webDriver;

                    // This scrpit will get jQuery ready state.
                    String scriptString = "return document.readyState";

                    String readyState = jsExecutor.executeScript(scriptString).toString();

                    System.out.println("Document Ready State: " + readyState);

                    // This script can return jQuery script load state.
                    scriptString = "return !!window.jQuery && window.jQuery.active == 0";

                    return (Boolean) jsExecutor.executeScript(scriptString);
                }
            };

            // Get the check result in a boolean value.
            Boolean checkResult = (Boolean)webDriverWait.until(condition);
            ret = checkResult.booleanValue();

        }catch(TimeoutException ex)
        {
            ex.printStackTrace();
            ret = false;
        }finally
        {
            if(ret)
            {
                System.out.println("jQuery has been loaded in the page.");
            }else
            {
                System.out.println("jQuery has not been loaded in the page.");
            }

            return ret;
        }

    }

    /* This method will inject a local jQuery script file into WebDriver Chrome browser that browse current web page. */
    private boolean injectjQuery()
    {
        boolean ret = true;
        try
        {
            // Read out the local jQuery script content string.
            StringBuffer jQueryStringBuf = new StringBuffer();

            File file = new File("C:\\Users\\Faisa\\Downloads\\jquery\\src\\jquery.js");

            FileReader fr = new FileReader(file);

            BufferedReader br = new BufferedReader(fr);

            String line = br.readLine();

            while(line != null)
            {
                jQueryStringBuf.append(line);

                line = br.readLine();
            }

            // Execute the jquery js content string to enable it.
            javascriptExecutor.executeScript(jQueryStringBuf.toString());
        }catch(IOException ex)
        {
            ret = false;
            ex.printStackTrace();
        }catch(Exception ex)
        {
            ret = false;
            ex.printStackTrace();
        }finally
        {
            if(ret)
            {
                System.out.println("jQuery has been injected successfully.");
            }else
            {
                System.out.println("jQuery has not een injected successfully.");
            }

            return ret;
        }
    }
}
