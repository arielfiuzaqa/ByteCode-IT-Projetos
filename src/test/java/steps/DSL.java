package steps;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class DSL {

    private WebDriver driver;

    public DSL(WebDriver driver) { this.driver = driver; }

    public void abrirBrowser(){
        System.setProperty("webdriver.chrome.driver", "C:/Program Files/JetBrains/drivers/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }
    public void vaiParaSite(String site){ driver.get(site); }
    public void preencheCamposDeUsuarioESenha(String campoUsuario, String campoSenha){
        driver.findElement(By.id("user-name")).sendKeys(campoUsuario);
        driver.findElement(By.id("password")).sendKeys(campoSenha);
    }
    public void click(){ driver.findElement(By.id("login-button")).click(); }
    public void Confirmo(String confirmou){ Assert.assertEquals(confirmou, driver.getCurrentUrl());
        System.out.println("O site é:  " + driver.getCurrentUrl()); }
    public void Checar(String resultado){ System.out.println("O teste " + resultado); }
    public void fecharBrowser(){ driver.quit(); }
}
