const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    viewportWidth: 1920,
    viewportHeight: 1080,

    baseUrl: 'https://www.mercadolivre.com.br',
    requestTimeout: 300000,
    responseTimeout: 300000,
    screenshotOnRunFailure: true,
    chromeWebSecurity: false,

    setupNodeEvents(on, config) {

    },
  },
});
