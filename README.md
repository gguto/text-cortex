# Projeto
Projeto de testes para o processo seletivo da Cortex. No projeto foi utilizado o framework CodeceptJS com WebdriverIO.

## Pré-requisitos
Pré requisitos para a execução do projeto:

* Git
* Node.js : v12+

# Estrutura
* No projeto foi utilizado o design pattern de Page Objects;
* Na pasta ./fearures/comex_stat_ncm estão os aquivos com os cenários escritos para resolver o exercicio 1 proposto;
* Na pasta ./features/api estão os cenários que foram implementados para resolver o exercicio 2 proprosto;

## Execução dos testes

* Na raiz do projeto instale as suas dependências:
```
npm install
```

## Execução dos testes de API
```
npm run codeceptjs:api
```

## Report
Após a execução dos testes os artefatos gerados são adicionados na pasta ./output, esta pasta é utilizada para gerar o relatório com os logs e erros que ocorreram durante a execução.

Para instalar o Allure utilize o seguinte comando:
```
npm install -g allure-commandline --save-dev
```

Para gerar o relatório após a execução dos testes, utilize o seguinte comando:
```
npm run allure:report
```
