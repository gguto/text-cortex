const expect = require('chai').expect;
const dollarQuotaRest = require('../../rest/get_cotacao_dolar.rest');
const context = require('../../support/context');
const stringUtils = require('../../support/string_utils');

When('eu buscar pela cotação do dia {string} com o formato de resposta por {string}', async (data, format) => {
  const response = await dollarQuotaRest.getDollarDailyQuota(data, format);

  switch (format) {
    case 'json':
      context.values.quotationResponseData = response.data.value[0];
      break;
    case 'text/plain':
      const parsedResponse = await stringUtils.parsePlainTextToObject(response.data);
      context.values.quotationResponseData = parsedResponse[0];
      break;
    default:
      throw 'The format of response (' + format + ') is incorrect.'
  }
});

Then('o valor retornado para o tipo de cotação {string} não deve ser negativo', async (type) => {
  await actor().printThisStep();
  const value = context.values.quotationResponseData;
  expect(parseInt(value[type]), 'The value should be positive').is.not.below(0);
});

Then('o separador de casa decimal para o tipo de cotação {string} deve ser por {string}', async (type, separator) => {
  await actor().printThisStep();
  const value = context.values.quotationResponseData;

  switch (separator) {
    case 'ponto':
      expect(value[type], 'The decimal separator should be "."').to.match(/^\d*\.?\d*$/g);
      break;
    case 'virgula':
      expect(value[type], 'The decimal separator should be ","').to.match(/^\d*\,?\d*$/g);
      break;
    default:
      throw 'The format of separator (' + separator + ') is incorrect.'
  }
});

Then('o valor retornado para o tipo de cotação {string} deve possuir 4 casas decimais', async (type) => {
  await actor().printThisStep();
  const value = context.values.quotationResponseData;
  expect(value[type], 'The value should have 4 decimal place').to.match(/\b\d{1,2}[.,]\d{4}$/g);
});