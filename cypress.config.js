const { defineConfig } = require('cypress')
const cucumber = require("cypress-cucumber-preprocessor").default; // eslint-disable-line

module.exports = (on) => {
  on("file:preprocessor", cucumber());
};

module.exports = defineConfig({


  "env": {
    "TAGS": "not @ignore",
    "PageObjectsTest": {},
    "VLCA-DEV": {
      "url": "#{url}#",
      "users": {
        "superadmin": {
          "user": "#{user}#",
          "pass": "#{pass}#"
        }
      },
      "RETRIES": 2
    },
    "VLCA": {
      "url": "#{url}#",
      "users": {
        "superadmin": {
          "user": "#{user}#",
          "pass": "#{pass}#"
        }
      }
    },
    "VismaLatam": {
      "url": "https://tst.vismalatam.com",
      "users": {
        "superadmin": {
          "user": "testfmk",
          "pass": "testfmk"
        }
      },
      "tenant": "Cypress Argentina"
    },
    "VismaCore": {
      "url": "https://tst.payroll.vismalatam.com",
      "users": {
        "superadmin": {
          "user": "testfmk",
          "pass": "testfmk"
        }
      },
      "tenant": "Cypress Argentina"
    },
    "AgentMonitor": {
      "url": "#{url}#",
      "users": {
        "superadmin": {
          "user": "#{user}#",
          "pass": "#{pass}#"
        }
      },
    }
  },
  

  e2e: {
    chromeWebSecurity: false,
    projectId: "#{projectId}#",
    reporter: 'junit',
    reporterOptions: {
      mochaFile: 'tests/my-test-output.xml',
      toConsole: true
    },
    numTestsKeptInMemory: 0,
    experimentalMemoryManagement: true,
    defaultCommandTimeout: 4000,
    pageLoadTimeout: 60000,
    // pluginsFile: "cypress/plugins/index",
    supportFile: false,
    specPattern: 'cypress/integration/',
    specPattern: '**/*.{feature,features}',
    excludeSpecPattern: ["*.js", "*.ts", "*.md"],
    viewportWidth: 1360,
    viewportHeight: 790,
    watchForFileChanges: false,
    video: true,
    videoCompression: 32,
    videoUploadOnPasses: false,
    "retries": {
      "runMode": 2,
      "openMode": 0
    },
    // experimentalSessionAndOrigin: true,

    setupNodeEvents(on, config) {
      on("file:preprocessor", cucumber());
     // implement node event listeners here,
    },
  },
});
