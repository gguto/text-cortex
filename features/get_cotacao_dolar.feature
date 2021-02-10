#language: pt

@Api @GetDollarQuotation
Funcionalidade: Validação do endpoit que retorna a cotação do dolar de uma determinada data

  Esquema do Cenário: Cotação não deve ser negativa para uma data passada
    Quando eu buscar pela cotação do dia "01-15-2020" com o formato de resposta por "json"
    Entao o valor retornado para o tipo de cotação "<tipo>" não deve ser negativo
    Exemplos:
      | tipo          |
      | cotacaoCompra |
      | cotacaoVenda  |

  Esquema do Cenário: Casas decimais no valor retornado devem ser por vírgula quando o formato de resposta é text/plain
    Quando eu buscar pela cotação do dia "01-15-2020" com o formato de resposta por "<resposta>"
    Entao o separador de casa decimal para o tipo de cotação "<tipo>" deve ser por "<separador>"
    Exemplos:
      | resposta   | tipo          | separador |
      | json       | cotacaoCompra | ponto     |
      | json       | cotacaoVenda  | ponto     |
      | text/plain | cotacaoCompra | virgula   |
      | text/plain | cotacaoVenda  | virgula   |

  Esquema do Cenário: O valor retornado deve apresentar até 4 casas decimais
    Quando eu buscar pela cotação do dia "01-15-2020" com o formato de resposta por "<resposta>"
    Entao o valor retornado para o tipo de cotação "<tipo>" deve possuir 4 casas decimais
    Exemplos:
      | resposta   | tipo          |
      | json       | cotacaoCompra |
      | json       | cotacaoVenda  |
      | text/plain | cotacaoCompra |
      | text/plain | cotacaoVenda  |