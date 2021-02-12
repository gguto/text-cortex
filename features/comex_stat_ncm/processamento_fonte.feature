#language: pt

@ProcessamentoFonte
Funcionalidade: Processamento da fonte com os arquivos de importações e exportações por NCM

  Esquema do Cenário: Validação da coluna com o tipo do arquivo exportado
    Dado que possuo o arquivo base de "<tipo>" por NCM
    Quando realizo o processamento para inclusão da coluna de "<coluna>" do arquivo base de "<tipo>"
    Então meu resultado pós-processamento deve possuir a coluna "<coluna>" com o "<valor>" correspondente ao do arquivo base

    Exemplos:

      | tipo        | coluna            | valor      |
      | exportações | Tipo de atividade | Exportação |
      | importações | Tipo de atividade | Importação |

  Esquema do Cenário: Validação do agrupamento dos campos de mês e ano no tipo de arquivo exportado
    Dado que possuo o arquivo base de "<tipo>" por NCM
    Quando realizo o processamento para agrupar os campos de data do arquivo base de "<tipo>"
    Então meu resultado pós processamento deve possuir as colunas "['CO_ANO', 'CO_MES']" removidas
    E meu resultado pós processamento deve possuir a coluna "Periodo" com formato "01/MM/YYYY"
    E meu resultado pós processamento deve possuir o periodo correspondente as colunas "['CO_ANO', 'CO_MES']" do arquivo base

    Exemplos:
      | tipo        |
      | exportações |
      | importações |

  Cenário: Validação do processamento de arquivo base inválido
    Dado que possuo um arquivo base de "<tipo>" por NCM com colunas inválidas
    Quando realizo o processamento do arquivo base de "<tipo>" por NCM
    Então devo receber uma mensagem informando que o arquivo base de "<tipo>" por NCM é inválido

    Exemplos:
      | exportações |
      | importações |