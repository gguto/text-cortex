#language: pt

@ArquivoFonte
Funcionalidade: Captura de dados através dos arquivos de importações e exportações por NCM

  Esquema do Cenário: Validação do download do aquivo de importações e exportações do ultimo ano por NCM
    Dado que estou na página de downloads do mdic
    Quando realizo o download do arquivo de "<tipo>" do último ano
    Então o arquivo CSV de "<tipo>" deve estar presente no local de destino

    Exemplos:
      | tipo        |
      | exportações |
      | importações |

  Esquema do Cenário: Validação das colunas presentes nos arquivos fontes de importações e exportações por NCM
    Dado que possuo o arquivo de "<tipo>" por NCM
    Quando leio as colunas do arquivo de "<tipo>" por NCM
    Então o arquivo CSV de "<tipo>" por NCM deve possuir as seguintes "<colunas>"

    Exemplos:
      | tipo        | colunas                                                                                                         |
      | exportações | ["CO_ANO","CO_MES","CO_NCM","CO_UNID","CO_PAIS","SG_UF_NCM","CO_VIA","CO_URF","QT_ESTAT","KG_LIQUIDO","VL_FOB"] |
      | importações | ["CO_ANO","CO_MES","CO_NCM","CO_UNID","CO_PAIS","SG_UF_NCM","CO_VIA","CO_URF","QT_ESTAT","KG_LIQUIDO","VL_FOB"] |

  Cenário: Validação da mensagem de erro quando a fonte está indisponivel
    Dado que simulo a fonte de dados indisponivel
    Quando tento realizar o download do arquivo fonte
    Então devo receber o log de erro informando que a fonte está indisponivel