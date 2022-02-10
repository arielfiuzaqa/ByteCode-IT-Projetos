package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.E;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import org.openqa.selenium.WebDriver;

public class ByteCodeItProjects {

    public WebDriver driver;
    private DSL dsl;

    @Before
    public void inicio(){ dsl = new DSL(driver); dsl.abrirBrowser();}

    @Dado("que o usuario esta na tela de login")
    public void que_o_usuario_esta_na_tela_de_login() { dsl.vaiParaSite("https://www.saucedemo.com/"); }

    @Quando("preenche com usuario{string} e senha{string}")
    public void preenche_com_usuario_standard_user_e_senha_secret_sauce(String usuario, String senha) { dsl.preencheCamposDeUsuarioESenha(usuario, senha);}

    @E("clicar no login")
    public void clicar_no_login() { dsl.click(); }

    @E("confirmo que o login foi realizado com sucesso{string}")
    public void confirmo_que_o_login_foi_realizado_com_sucesso_passou(String resultado) { dsl.Confirmo(resultado); }

    @Então("uma mensagem de confirmo{string} deve aparecer")
    public void umaMensagemDeConfirmoConfirmacaoDeveAparecer(String confirmacao) { dsl.Checar(confirmacao); }

    @After
    public void fim() { dsl.fecharBrowser(); }
}