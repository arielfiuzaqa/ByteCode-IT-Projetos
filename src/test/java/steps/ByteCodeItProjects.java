package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.E;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertEquals;

public class ByteCodeItProjects {

    public WebDriver driver;
    private DSL dsl;

    @Before
    public void inicio(){
        System.setProperty("webdriver.chrome.driver", "C:/Program Files/JetBrains/drivers/chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        dsl = new DSL(driver);
    }
    @After
    public void fim(){driver.quit();}

    @Dado("que o usuario esta na tela de Login")
    public void que_o_usuario_esta_na_tela_de_login() {
        dsl.Go("https://www.saucedemo.com/");
    }
    @Quando("preenche com {string}")
    public void preenche_com_(String username) {
        dsl.escrever("user-name", username);
        dsl.print("user-name");
    }
    @E("e {string}")
    public void e_(String senha) {
        dsl.elementClear("password");
        dsl.escrever("password", senha);
        dsl.print("password");
    }
    @Então("clicar no login")
    public void clicar_no_login() {
        dsl.click("login-button");
    }
    @Então("confirmo que o login foi realizado com sucesso")
    public void confirmo_que_o_login_foi_realizado_com_sucesso() {
        dsl.getUrl();
        dsl.assertUrl("https://www.saucedemo.com/inventory.html");
    }
    @Então("uma {string} de erro deve aparecer")
    public void uma_de_erro_deve_aparecer(String mensagem) {
        String confirm = driver.findElement(By.xpath("//div[@class='error-message-container error']//h3")).getText();
        assertEquals(confirm, mensagem);
        dsl.println(confirm);
    }
    @E("muda para a {string} para acessar a pagina")
    public void muda_para_a_para_acessar_a_pagina(String url) {
        dsl.Go(url);
        dsl.assertUrl("https://www.saucedemo.com/");
        dsl.printX("//div[@class='error-message-container error']//h3");
    }
    @E("muda para a {string} da pagina de acesso")
    public void mudaParaAUrlDaPaginaDeAcesso(String url) {
        dsl.Go(url);
        dsl.assertUrl("https://www.saucedemo.com/inventory.html");
        dsl.getUrl();
        dsl.assertUrl("https://www.saucedemo.com/inventory.html");
    }
    @Quando("preencher com senhas invalidas tres vezes")
    public void preencher_com_senhas_invalidas_tres_vezes() {
        WebElement eu = driver.findElement(By.id("password"));
        dsl.escrever("password", "Ari6996");
        dsl.click("login-button");
        eu.clear();
        dsl.escrever("password", "JP19980625");
        dsl.click("login-button");
        eu.clear();
        dsl.escrever("password", "#QAs20223101");
        dsl.click("login-button");
    }
    @Quando("preencher com usuarios invalidos tres vezes")
    public void preencher_com_usuarios_invalidos_tres_vezes() {
        WebElement eu = driver.findElement(By.id("user-name"));
        dsl.escrever("user-name", "333999Ari666");
        dsl.click("login-button");
        eu.clear();
        dsl.escrever("user-name", "369JP963");
        dsl.click("login-button");
        eu.clear();
        dsl.escrever("user-name", "1717#QAs1001");
        dsl.click("login-button");
    }
    @E("voltar para a tela de login")
    public void voltarParaATelaDeLogin() {
        driver.navigate().back();
    }
}