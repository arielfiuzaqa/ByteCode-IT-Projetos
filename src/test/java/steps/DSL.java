package steps;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import static org.junit.Assert.assertEquals;

public class DSL {

    private WebDriver driver;

    public DSL(WebDriver driver) {
        this.driver = driver;
    }
    public void Go(String site){
        driver.get(site);
    }
    public void print(String id) {
        driver.findElement(By.id(id)).getText();
        System.out.println(driver.findElement(By.id(id)).getText());
    }
    public void printX(String xp){
        System.out.println(driver.findElement(By.xpath(xp)).getText());
    }
    public void println(String fala){
        System.out.println(fala);
    }
    public void click(String id){
        driver.findElement(By.id(id)).click();
    }
    public void escrever(String id, String senh){
        driver.findElement(By.id(id)).sendKeys(senh);
    }
    public void elementClear(String id){
        WebElement element = driver.findElement(By.id(id));
        element.clear();
    }
    public void assertUrl(String site){
        assertEquals(site, driver.getCurrentUrl());
    }
    public void getUrl(){
        System.out.println("O site é:  " + driver.getCurrentUrl());
    }


}
