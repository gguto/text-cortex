const Helper = require('@codeceptjs/helper');
const context = require('../support/context');

class GeneralHooks extends Helper {
  _after() {
    context.values = {};
  }
}

module.exports = GeneralHooks;
