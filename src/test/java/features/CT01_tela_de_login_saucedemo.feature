#language: pt
  Funcionalidade: Tela de login

    Esquema do Cenário:
      Dado que o usuario esta na tela de login
      Quando preenche com usuario<usuario> e senha<senha>
      E clicar no login
      E confirmo que o login foi realizado com sucesso<resultado>
      Então uma mensagem de confirmo<confirmacao> deve aparecer

      Exemplos:
      |confirmacao                                  |usuario                  |senha         |resultado                                 |
      |"Passou!"                                    |"standard_user"          |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Passou!"                                    |"problem_user"           |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Passou!"                                    |"performance_glitch_user"|"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
      |"Falhou! Por usuario em maiusculo"           |"STANDARD_USER"          |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por usuario em maiusculo"           |"PROBLEM_USER"           |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por usuario em maiusculo"           |"PERFORMANCE_GLITCH_USER"|"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por senha em maiusculo"             |"standard_user"          |"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou! Por senha em maiusculo"             |"problem_user"           |"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou! Por senha em maiusculo"             |"performance_glitch_user"|"SECRET_SAUCE"|"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de senha"                 |"standard_user"          |""            |"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de senha"                 |"locked_out_user"        |""            |"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de senha"                 |"problem_user"           |""            |"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de senha"                 |"performance_glitch_user"|""            |"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de usuario"               |""                       |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de usuario e senha"       |""                       |""            |"https://www.saucedemo.com/"              |
      |"Bloqueado!"                                 |"locked_out_user"        |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por falta de usuario e senha"       |""                       |""            |"https://www.saucedemo.com/"              |
      |"Falhou! Por caracteres especiais em usuario"|"$#{°}//*"               |"secret_sauce"|"https://www.saucedemo.com/"              |
      |"Falhou! Por caracteres especiais em senha"  |"standard_user"          |"$#{°}//*"    |"https://www.saucedemo.com/"              |

