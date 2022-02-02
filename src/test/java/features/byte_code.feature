#language: pt
  Funcionalidade: Tela de Login

    Cenário: Casos de Teste com Login

    Esquema do Cenário: Caminho Feliz, Login com Sucesso
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E e <senha>
      Então clicar no login
      Então confirmo que o login foi realizado com sucesso

      Exemplos: Login com Sucesso
      |username                 |senha         |
      |"standard_user"          |"secret_sauce"|
      |"problem_user"           |"secret_sauce"|
      |"performance_glitch_user"|"secret_sauce"|


    Esquema do Cenário: Casos de Testes Falhos
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E e <senha>
      Então clicar no login
      Então uma <mensagem> de erro deve aparecer

      Exemplos: Falhos por Usuário errado por letras em maiúsculo
        |username                 |senha         |mensagem                                                                   |
        |"STANDARD_USER"          |"secret_sauce"|"Epic sadface: Username and password do not match any user in this service"|
        |"PROBLEM_USER"           |"secret_sauce"|"Epic sadface: Username and password do not match any user in this service"|
        |"PERFORMANCE_GLITCH_USER"|"secret_sauce"|"Epic sadface: Username and password do not match any user in this service"|

      Exemplos: Falhos por Senha válida estar em maiúscula
        |username                 |senha         |mensagem                                                                   |
        |"standard_user"          |"SECRET_SAUCE"|"Epic sadface: Username and password do not match any user in this service"|
        |"problem_user"           |"SECRET_SAUCE"|"Epic sadface: Username and password do not match any user in this service"|
        |"performance_glitch_user"|"SECRET_SAUCE"|"Epic sadface: Username and password do not match any user in this service"|

      Exemplos: Falhos por NÃO preencher com Senha
        |username                 |senha|mensagem                            |
        |"standard_user"          |""   |"Epic sadface: Password is required"|
        |"locked_out_user"        |""   |"Epic sadface: Password is required"|
        |"problem_user"           |""   |"Epic sadface: Password is required"|
        |"performance_glitch_user"|""   |"Epic sadface: Password is required"|

      Exemplos: Falho por NÃO preencher com Usuário
        |username|senha         |mensagem                            |
        |""      |"secret_sauce"|"Epic sadface: Username is required"|

      Exemplos: Falho por NÃO preencher Usuário e Senha
        |username|senha|mensagem                            |
        |""      |""   |"Epic sadface: Username is required"|

      Exemplos: Falho por Usuario ter sido Excluido
        |username         |senha         |mensagem                                             |
        |"locked_out_user"|"secret_sauce"|"Epic sadface: Sorry, this user has been locked out."|


    Esquema do Cenário: Tentando entrar direto sem a utilização do Login
      Dado que o usuario esta na tela de Login
      E muda para a <url> para acessar a pagina
      Então uma <mensagem> de erro deve aparecer

      Exemplos: Entrando sem acesso de login e senha
      |url                                       |mensagem                                                                     |
      |"https://www.saucedemo.com/inventory.html"|"Epic sadface: You can only access '/inventory.html' when you are logged in."|


    Esquema do Cenário: Preencher com Login e Senha e tentar entrar pela url sem apertar no Login
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E e <senha>
      E muda para a <url> para acessar a pagina
      Então uma <mensagem> de erro deve aparecer

     Exemplos: Preenche Login e Senha válido e muda para url de entrada
      |username                 |senha         |url                                       |mensagem                                                                     |
      |"performance_glitch_user"|"secret_sauce"|"https://www.saucedemo.com/inventory.html"|"Epic sadface: You can only access '/inventory.html' when you are logged in."|
      |"problem_user"           |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|"Epic sadface: You can only access '/inventory.html' when you are logged in."|
      |"standard_user"          |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|"Epic sadface: You can only access '/inventory.html' when you are logged in."|


    Esquema do Cenário: Entrar com Login e Senha corretos, sair e entrar sem usar o Login novamente //terminar de resolver//
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E e <senha>
      Então clicar no login
      Então confirmo que o login foi realizado com sucesso
      E voltar para a tela de login
      E muda para a <url> da pagina de acesso

      Exemplos: Entrar com Login e Senha corretos, sair e entrar sem usar o Login novamente
        |username                 |senha         |url                                       |
        |"performance_glitch_user"|"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
        |"problem_user"           |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|
        |"standard_user"          |"secret_sauce"|"https://www.saucedemo.com/inventory.html"|


    Esquema do Cenário: Entrando após erra a senha 3 vezes com Usuário válido
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E preencher com senhas invalidas tres vezes
      Então clicar no login
      E e <senha>
      Então clicar no login

      Exemplos: Usuarios válidos e senha válida
        |username                 |senha         |
        |"standard_user"          |"secret_sauce"|
        |"problem_user"           |"secret_sauce"|
        |"performance_glitch_user"|"secret_sauce"|


    Esquema do Cenário: Entrando após erra o Usuário 3 vezes com Senha válida
      Dado que o usuario esta na tela de Login
      Quando preenche com <username>
      E preencher com usuarios invalidos tres vezes
      Então clicar no login
      E e <senha>
      Então clicar no login

      Exemplos: Errar Usuarios inválidos 3 vezes antes de Usuário válido com Senha válida
        |username                 |senha         |
        |"standard_user"          |"secret_sauce"|
        |"problem_user"           |"secret_sauce"|
        |"performance_glitch_user"|"secret_sauce"|


