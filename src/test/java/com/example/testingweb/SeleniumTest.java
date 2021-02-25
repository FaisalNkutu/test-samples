package com.example.testingweb;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;


@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class SeleniumTest {
    @LocalServerPort
    private int port;
    private WebDriver driver;

    @Value("${server.contextPath}")
    private String contextPath;
    private String base;

    @Before
    public void setUp() throws Exception {
        System.setProperty("webdriver.chrome.driver", "my/path/to/chromedriver");
        driver = new ChromeDriver();
        this.base = "http://localhost:" + port;
    }

    @Test
    public void testTest() throws Exception {
        driver.get(base + contextPath);
    }
}