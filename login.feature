# language: pt
@login @autenticacao
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
    Dado que eu esteja na pagina de autenticação da EBAC-SHOP

  Esquema do Cenário: Autenticação de Usuário
    Dado que eu digitei o <usuario>
    E que eu digitei a <senha>
    Então deve exibir a <mensagem>

    Exemplos:
      | usuario          | senha   | mensagem                               |
      | Rodrigo@ebac.com | ebac123 | "Direcionando para a tela de Checkout" |
      | Rodrigo@ebac.com | 123ebaa | "Usuário ou senha inválidos"           |
      | Rodigo@e.com     | ebac123 | "Usuário ou senha inválidos"           |