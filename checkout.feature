# language: pt
@checkout @cadastro
Funcionalidade: Checkout - Cadastro do cliente
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

  Contexto: Dado que eu acesse a página de Checkout da EBAC-SHOP

  Cenário: Cadastro com sucesso
    Quando eu preencher todos os campos obrigatórios marcados com *
    E concluir o cadastro
    Então o sistema deve permitir a conclusão da minha compra

  Esquema do Cenário: Validação de campos obrigatórios
    Quando eu preencho o cadastro com Nome <nome>, Sobrenome <sobrenome>, Endereço <endereço>, Cidade <cidade>, Cep <cep>, Telefone <telefone>, E-mail <email>
    E concluo o cadastro
    Então deve ser exibida a mensagem de alerta <mensagem>

    Exemplos:
      | nome    | sobrenome  | endereço      | cidade          | cep      | telefone       | email            | mensagem                                |
      | Rodrigo | Lins Lopes | Rua Macaxeira | Duque de Caxias | 25010101 | (21) 9999-4799 | Rodrigo@ebac.com | "Compra realizada com sucesso"                 |
      |         | Lins Lopes | Rua Macaxeira | Duque de Caxias | 25010101 | (21) 9999-4799 | Rodrigo@ebac.com | "Favor preencher campo Nome"                   |
      | Rodrigo |            | Rua Macaxeira | Duque de Caxias | 25010101 | (21) 9999-4799 | Rodrigo@ebac.com | "Favor preencher campo Sobrenome"              |
      | Rodrigo | Lins Lopes |               | Duque de Caxias | 25010101 | (21) 9999-4799 | Rodrigo@ebac.com | "Favor preencher campo Endereço"               |
      | Rodrigo | Lins Lopes | Rua Macaxeira |                 | 25010101 | (21) 9999-4799 | Rodrigo@ebac.com | "Favor preencher campo Cidade"                 |
      | Rodrigo | Lins Lopes | Rua Macaxeira | Duque de Caxias |          | (21) 9999-4799 | Rodrigo@ebac.com | "Favor preencher campo Cep"                    |
      | Rodrigo | Lins Lopes | Rua Macaxeira | Duque de Caxias | 25010101 |                | Rodrigo@ebac.com | "Favor preencher campo Telefone"               |
      | Rodrigo | Lins Lopes | Rua Macaxeira | Duque de Caxias | 25010101 | (21) 9999-4799 |                  | "Favor preencher campo E-mail"                 |
      |         |            |               |                 |          |                |                  | "Favor preencher todos os campos obrigatórios" |
