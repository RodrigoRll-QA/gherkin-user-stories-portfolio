# language: pt
Funcionalidade: Tela de cadastro - Checkout]
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

  Contexto: Dado que eu esteja na página de Checkout na plataforma EBAC-SHOP

  Cenário: Cadastro com sucesso
    Quando eu preencher todos os campos obrigatórios marcados com *
    E clicar em "concluir cadastro"
    Então o sistema deve permitir a conclusão da compra

  Esquema do Cenário: Validação de campos do cadasto
    Quando eu preencher o campo e-mail com o formato <email_digitado>
    E deixar o campo obrigatório <campo_vazio> em branco
    Então o sistema deve exibir a mensagem <mensagem_alerta>

    Exemplos:
      | "email_digitado"   | "campo_vazio" | "mensagem_alerta"                  |
      | "rodrigo.lins@"    | "Nome"        | "E-mail com formato inválido"      |
      | "rodrigo@ebac.com" | "Sobrenome"   | "Favor preencher campos faltantes" |
      | "Lins@ebac.com"    | "Endereço"    | "Favor preencher campos faltantes" |
      | "Lopes@ebac.com"   | "Cidade"      | "Favor preencher campos faltantes" |
      | "Drigo@teste.com"  | "Cep"         | "Favor preencher campos faltantes" |
      | "email@valido.com" | "Telefone"    | "Favor preencher campos faltantes" |