import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;

public class file {
    public file() {
        Given("^I navigate to the website$", () -> {


            System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");
            driver = new ChromeDriver();
            driver.get("https://xenonstack.jobs/");

        });
        When("^I click on the link with XPath$", () -> {

            WebElement link1 = driver.findElement(By.xpath("//*[@id=\"login-link\"]/div/a"));
            link1.click();

        });
        Then("^I should be redirected to the expected page$", () -> {

            String currentUrl = driver.getCurrentUrl();
            Assert.assertEquals("https://xenonstack.jobs/app/dashboard", currentUrl);
            driver.quit();

        });
    }
}
