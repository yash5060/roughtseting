System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");
        driver = new ChromeDriver();
        driver.get("https://xenonstack.jobs/"); // replace with your website URL


        WebElement link1 = driver.findElement(By.xpath("//*[@id=\"login-link\"]/div/a"));
                link1.click();

                String currentUrl = driver.getCurrentUrl();
                        // Add assertion logic here, for example:
                         Assert.assertEquals("https://xenonstack.jobs/app/dashboard", currentUrl);

                        // Close the WebDriver instance
                        driver.quit();






 /////////////////////////////////////


 import io.cucumber.java.en.Given;
 import io.cucumber.java.en.Then;
 import io.cucumber.java.en.When;
 import org.openqa.selenium.By;
 import org.openqa.selenium.WebDriver;
 import org.openqa.selenium.WebElement;
 import org.openqa.selenium.chrome.ChromeDriver;
 import org.junit.Assert;

 public class MySteps {

     WebDriver driver;

     @Given("^I navigate to the website$")
     public void iNavigateToTheWebsite() {
         System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");
         driver = new ChromeDriver();
         driver.get("https://xenonstack.jobs/");
     }

     @When("^I click on the link with XPath \"([^\"]*)\"$")
     public void iClickOnTheLinkWithXPath(String xpath) {
         WebElement link = driver.findElement(By.xpath(xpath));
         link.click();
     }

     @Then("^I should be redirected to the expected page$")
     public void iShouldBeRedirectedToTheExpectedPage() {
         String currentUrl = driver.getCurrentUrl();
         Assert.assertEquals("https://xenonstack.jobs/app/dashboard", currentUrl);
         driver.quit();
     }
 }
