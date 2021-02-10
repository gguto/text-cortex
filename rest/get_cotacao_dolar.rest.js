const I = actor();

module.exports = {
    paths: {
        dollarQuotationEndpoint: 'CotacaoDolarDia(dataCotacao=@dataCotacao)?%40dataCotacao=%27$date%27&%24format=$type',
      },
    async getDollarDailyQuota(date, format) {
        let path = this.paths.dollarQuotationEndpoint.replace('$date', date).replace('$type', format);
        return await I.sendGetRequest(path);
    }
}