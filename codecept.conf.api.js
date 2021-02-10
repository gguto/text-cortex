exports.config = {
  output: './output',
  helpers: {
    CustomCommands: {
      require: './helpers/custom_commands_helper.js'
    },
    GeneralHooks: {
      require: './helpers/general_hooks.helper.js'
    },
    REST: {
      endpoint: 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/',
    }
  },
  bootstrap: null,
  teardown: null,
  hooks: [],
  gherkin: {
    features: './features/*.feature',
    steps: [
      './steps/api/get_cotacao_dolar.steps.js'
    ]
  },
  plugins: {
    screenshotOnFail: {
      enabled: false
    },
    allure: {
      enabled: true,
    }
  },
  name: 'test-cortex'
}