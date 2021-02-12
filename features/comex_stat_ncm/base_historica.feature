#language: pt

@BaseHistorica
Funcionalidade: Base historica com os dados de importações e exportações por NCM
  
  Esquema do Cenário: Validação da base histórica de 2018 ao ano corrente
    Quando busco os dados na minha tabela filtrando pelo "<tipo>" de atividade
    Então devo possuir na base dados historico de 2018 ao ano corrente

    Exemplos:
      | tipo        |
      | Importações |
      | Exportações |

  Esquema do Cenário: Validação da atualização dos 2 ultimos meses da base histórica
    Dado que possuo os dados da fonte de "<tipo>" por NCM dos ultimos 2 meses
    Quando comparo os dados dos ultimos 2 meses entre a base historica e a fonte
    E então os valores devem estar atualizados e correspondentes

    Exemplos:
      | tipo        |
      | exportações |
      | importações |