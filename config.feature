# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu acessei a página de um produto na EBAC-SHOP

  Cenário: Seleção de opções obrigatórias
    Quando eu selecionar a cor "Red", o tamanho "P", e a quantidade "1"
    E clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

  Cenário: Limite de produtos por venda
    Quando eu selecionar a cor "Blue", o tamanho "M", e a quantidade "11"
    E clicar no botão "Comprar"
    Então deve aparecer uma mensagem de erro "Somente 10 produtos permitidos por venda"

  Cenário: Limpar configurações
    Dado que eu selecionei a cor "Green", o temanho "G", e a quantidade "5"
    Quando eu clicar no botão "Limpar"
    Então as selções de cor, tamanho e quantidade devem voltar ao estado original
