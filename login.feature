# language: pt
@login @autenticacao
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
    Dado que eu esteja na pagina de autenticação da EBAC-SHOP

  Esquema do Cenário: Autenticação de Usuário
    Dado que eu digite o Usuário <usuario> e a Senha <senha>
    E clique em login
    Então a <mensagem> deve ser exibida

    Exemplos:
      | usuario          | senha   | mensagem                                       |
      | Rodrigo@ebac.com | ebac123 | "Bem vindo, Rodrigo!"                          |
      | @ebac.gg.com     | 123ebaa | "Usuário ou senha inválidos"                   |
      | Rodigo@123.com   | ebac123 | "Usuário ou senha inválidos"                   |
      |                  |         | "Favor preencher os campos de usuário e senha" |
      | Rodrigo@ebac.com |         | "Favor preencher os campos de usuário e senha" |
      |                  | ebac123 | "Favor preencher os campos de usuário e senha" |
