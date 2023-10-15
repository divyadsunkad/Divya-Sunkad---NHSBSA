package NHSCostChecker;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;

public class NHSCostchecker {
	
	WebDriver driver = new ChromeDriver(); 
	

	@Given("user launces broser in chrome browser")
	public void user_loads_fixture() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\abinp\\eclipse-workspace\\test\\src\\test\\resource\\chromedriver.exe");
	}
	
	@And("user launches application {string}")
	public void user_launches_application(String url) {
		driver.get(url);
		driver.manage().window().maximize();		
	}
	
	@And("user scroll {string} the page")
	public void user_scroll_the_page(String direction) throws Throwable {
	    JavascriptExecutor js = (JavascriptExecutor) driver;
	   
	    if(direction.equals("up")) {
	    	js.executeScript("window.scrollTo(0,document.body.scrollTop)");
	    }
	    else if(direction.equals("down")) {
	    	js.executeScript("window.scrollTo(0,document.body.scrollHeight)");
	    }
	}
	
	@When("user clicks on element for locator {string} and value {string}")
	public void user_clicks_on_element_for_locator_and_value(String locator, String value) {
	 if(locator.equals("id")) {
		WebElement button  = driver.findElement(By.id(value)); 
		Actions actions = new Actions(driver);
		actions.click(button).perform();
	 }
	}
	 
	 @And("user enters {string} in textbox with attribute {string} and value {string}")
	 public void user_enters_in_textbox_with_attribute_and_value(String text, String locator, String value) {
		 if(locator.equals("id")) {
				WebElement button  = driver.findElement(By.id(value)); 
				Actions actions = new Actions(driver);
				actions.click(button).sendKeys(text).perform();
		 }
	}	
	 
	 @Then("user verify message on screen {string} available in {string} and value {string}")
	 public void user_verify_message_on_screen(String message,String locator, String value)
	 {
		 if(locator.equals("id")) {	
     	 WebElement txt = driver.findElement(By.id(value));
		 String msg = txt.getText();
		 Assert.assertEquals(msg, message);
		 }
		 driver.close(); 
	 }
	 
	 @And("user waits for {int} seconds")
	 public void user_waits_for_seconds(int arg) throws InterruptedException {
		 Thread.sleep(arg * 1000);
	 }
}
