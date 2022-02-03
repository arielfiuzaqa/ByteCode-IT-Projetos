#language: pt
  Funcionalidade: Tela de Login

    Esquema do Cenário:
      Dado que o usuario esta na tela de Login
      Quando preenche com usuario<usuario> e senha<senha>
      E clicar no login
      E confirmo que o login foi realizado com sucesso<resultado>
      Então uma mensagem de confirmo<confirmacao> deve aparecer

      Exemplos:
      |confirmacao |usuario                  |senha         |resultado                                 |
      |"Passou!"   |"standard_user"          |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Passou!"   |"problem_user"           |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Passou!"   |"performance_glitch_user"|"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Falhou!"   |"STANDARD_USER"          |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"PROBLEM_USER"           |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"PERFORMANCE_GLITCH_USER"|"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"standard_user"          |"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"problem_user"           |"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"performance_glitch_user"|"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |"standard_user"          |""            |"https://www.saucedemo.com/"              |
      |"Falhou!"   |"locked_out_user"        |""            |"https://www.saucedemo.com/"              |
      |"Falhou!"   |"problem_user"           |""            |"https://www.saucedemo.com/"              |
      |"Falhou!"   |"performance_glitch_user"|""            |"https://www.saucedemo.com/"              |
      |"Falhou!"   |""                       |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |""                       |""            |"https://www.saucedemo.com/"              |
      |"Bloqueado!"|"locked_out_user"        |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou!"   |""                       |""            |"https://www.saucedemo.com/"              |

