import { VismaProduct } from "../../cypress/fixtures/Commons/Visma-Name.js";

// Variables declaration
let currentEnv, usrData, loginObjects, Product;
export { Product };

/**
 * Wait Request authentication/login
 * @param {string} urlRequest
 * @return {void}
 */
Cypress.Commands.add("WaitRequest", (urlRequest) => {
  let usrData
  currentEnv = Cypress.env('VismaLatam');
  let role = 'superadmin'
  usrData = currentEnv.users[role] 
  cy.request({
    method: 'POST',
    url:'https://tst.webapiadmin.vismalatam.com/authentication/login',
    form: true,
    body:{
      "username": `${usrData.user}`,
      "password": `${usrData.pass}`,
      "grant_type": "password"
    }
  }).then((resp) => { 
    const token = resp.body.access_token
    Cypress.env('token', token)     
  });

  cy.intercept({
    method: 'GET',
    url:`${urlRequest}`, 
    auth: {
      'bearer': `${Cypress.env('token')}`
    }  
  }).as('request')
});
  
/**
 * Verify if is DOM Loaded
 * @return {asserts}
 */
Cypress.Commands.add("DOMisLoaded", () => {
  return cy.window().then((window) => { expect(window.document.readyState).to.be.eq('complete') });
});

/**
 * Validate the values passed as argument are included in the options from the ellipsis
 * @param  {any} values
 * @return {asserts}
 */
Cypress.Commands.add("ellipsisValidateOptions", (values) => {
  cy.get('.mat-menu-content').within(($list) => {
    cy.wrap($list).find('[mat-menu-item]').each(
      ($item, $index) => {   
        cy.wrap($item.text().trim()).should('deep.equal', values[$index]);
      }
    );
  });
});

/**
 * Assert if an element is contained in the DOM
 * @param {string} el
 * @return {boolean}
 */
Cypress.Commands.add("exists", (el) => {
  return document.body.contains(el) == true ? true : false;
});

/**
 * Muestra en el runner de cypress el log de la peticion interceptada
 * @param {any} xhr
 * @return {void}
 */
Cypress.Commands.add("CustomLog", (xhr) => {
  Cypress.log({
    name: 'Response log',
    displayName: 'Response',
    message: `Body: ${JSON.stringify(xhr.response)}`
   });
});

/**
 * Setter for Page Objects
 * @return {string}
 */
Cypress.Commands.add("setPageObjects", () => {
  // Output: \somePath\C:\\...\Test.feature
  let testFilePath = Cypress.mocha.getRunner().suite.invocationDetails.fileUrl;

  let testNameExtractor = (name) => {
    // Output: \Test.feature
    let regex = /\\([a-zA-Z]+(\.[a-zA-Z]+)+)/gim;

    // Output: Test
    return name.match(regex).toString().replace(/[\\]/gim, "").split(".")[0];
  };

  const currentTestName = testNameExtractor(testFilePath);
  const Commons = ["SideNavBar"];

  return Commons.includes(currentTestName)
    ? `Commons/${currentTestName}`
    : `PageObjects/${currentTestName}`;
});

/**
 * Login
 * @param {string} site
 * @param {string} role
 * @return {void}
 */
Cypress.Commands.add("login", (site, role) => {
  // Sets environment
  currentEnv = Cypress.env(site);
  // if (site === "VLCA-TST") {
  //   // Product = "VLCA";
  //   Product = VismaProduct.VLCA;

  // } else if (site === "VismaLatam") {
  //   // Product = "PEOPLE";
  //   Product = VismaProduct.PEOPLE;
  // }
  Product = VismaProduct[site];
  
  // Sets role data. If not found takes default dataset
  usrData = currentEnv.users[role] ?? { user: role, pass: "nonValidPass" };

  if (site === "VismaLatam") {
    // Sets page objects file from fixture folder
    cy.fixture("Commons/Login/Login").then(($Json) => {
      loginObjects = $Json;
      // Initializes variable
      // Session only works with versions from 8.2.0
      // cy.session(usrData, () => {
      cy.visit(currentEnv.url);
      cy.intercept('GET', '**/widgetBase/locales/es-LA.*').as('latinamerican');
      cy.wait('@latinamerican', { timeout: 100000 });
      cy.wait(2000);
      Cypress.on('window:before:unload', () => {
        cy.window().then(window=>{
          expect(window.document.readyState).to.be.eq('complete')
        })
      })
      cy.url()
      .should("include", "/login", { timeout: 20000 })
      .then(() => {
        cy.get("form").should("be.visible");
      });
      cy.get(loginObjects.Username).should("be.visible");
      cy.get(loginObjects.Username).click().clear({ force: true });
      cy.get(loginObjects.Username).type(usrData.user);
      cy.get(loginObjects.Password).should("be.visible");
      cy.get(loginObjects.Password).click().clear({ force: true });
      cy.get(loginObjects.Password).type(usrData.pass);
      cy.get(loginObjects.SignIn).should("be.visible");
      cy.get(loginObjects.SignIn).and("be.enabled").click({ force: true });
      // })
    });
  } else if (site === "VismaCore") {
    // Sets page objects file from fixture folder
    cy.fixture("VismaCore/VismaCoreLogin/Login").then(($Json) => {
      loginObjects = $Json;
      // Initializes variable
      // Session only works with versions from 8.2.0
      // cy.session(usrData, () => {
      cy.visit(currentEnv.url);
      // Initial Assertions
      cy.url()
        .should("include", "/rhprox2/newhome/")
        .then(() => {
          cy.get("form").should("be.visible");
        });
      // cy.intercept({ 
      //   url:'**/widgets/**', 
      //   auth: {
      //     'bearer': `${Cypress.env('token')}`
      //   }  
      // }).as('request')
      // cy.wait('@request') 
      cy.get(loginObjects.Login).should("be.visible").click();
      cy.get(loginObjects.Username).click().clear().type(usrData.user);
      cy.get(loginObjects.Password).click().clear().type(usrData.pass);
      cy.get(loginObjects.SignIn).should("be.visible").click();
      // })
    });
  } else if (site === "AgentMonitor") {
    // Sets page objects file from fixture folder
    cy.fixture("AgentMonitor/Login").then(($Json) => {
      loginObjects = $Json;
      // Initializes variable
      // Session only works with versions from 8.2.0
      // cy.session(usrData, () => {
      cy.visit(currentEnv.url);
      // Initial Assertions
      cy.url()
        .should("include", "/login?returnUrl=%2Ftenants%2Fprocess-instances")
        .then(() => {
          cy.get("form").should("be.visible");
        });
      // cy.intercept({ 
      //   url:'**/widgets/**', 
      //   auth: {
      //     'bearer': `${Cypress.env('token')}`
      //   }  
      // }).as('request')
      // cy.wait('@request') 
      cy.get(loginObjects.Username).click().clear().type(usrData.user);
      cy.get(loginObjects.Password).click().clear().type(usrData.pass);
      cy.get(loginObjects.SignIn).should("be.visible").click();
      // })
    });
  } else if(site === "VLCA") {
      // Sets page objects file from fixture folder
    cy.fixture("VLCA/Login").then(($Json) => {
      loginObjects = $Json;
      // Initializes variable

      // Session only works with versions from 8.2.0
      // cy.session(usrData, () => {
      cy.visit(currentEnv.url);
      // Initial Assertions
      cy.url()
        .should("include", "/vlmain/login")
        .then(() => {
          cy.get("form").should("be.visible");
        });
      // cy.intercept({ 
      //   url:'**/widgets/**', 
      //   auth: {
      //     'bearer': `${Cypress.env('token')}`
      //   }  
      // }).as('request')
      // cy.wait('@request') 
      cy.get(loginObjects.Username).click().clear().type(usrData.user);
      cy.get(loginObjects.Password).click().clear().type(usrData.pass);
      cy.get(loginObjects.SignIn).should("be.visible").click();
      // })
    });
  }
});

/**
 * Logout
 * @return {void}
 */
Cypress.Commands.add("logout", () => {
  cy.url().should("not.include", "/login"); // Initial Assertions
  cy.get(loginObjects.Profile)
    .should("be.visible")
    .and("contain", usrData.user)
    .click();
  cy.get(loginObjects.Logout).should("be.visible").click({ force: true });
});

/**
 * Get login objects and user data
 * @return {any}
 */
Cypress.Commands.add("getLoginObjectsAndUsrData", () => {
  return { ...loginObjects, ...usrData };
});

/**
 * Getter for Page Objects
 * @param {string} fileName
 * @return {any}
 */
Cypress.Commands.add("getPageObjects", (fileName) => {
  cy.fixture(`Commons/${fileName}`).then(($Json) => {
    return $Json;
  });
});

/**
 * Click Outside
 * @return {void}
 */
Cypress.Commands.add("clickOutside", () => {
  cy.get(`body`).click(0, 0);
});

// Undert test

// // Get data-cy element.  *** Yet not in use
// Cypress.Commands.add('dataCy', ({ elem } = {}) => {
//     cy.get(`[data-cy=${elem}]`)
// });

// ClickButton
// Cypress.Commands.add("clickButton", (button) => {
//     cy.fixture('Commons/Buttons').then(($Json) => {
//         cy.get($Json[button]).click();
//     })
// });

// // Ellipsis
// Cypress.Commands.add("ellipsis", () => {
//     cy.fixture('Commons/Ellipsis').then(($Json) => {
//         return $Json;
//     })
// });

// // PagePaths
// Cypress.Commands.add("pagePaths", () => {
//     cy.fixture('Commons/PagePaths').then(($Json) => {
//         return $Json;
//     })
// });

// Deactivated
// SpinnerOff
// Cypress.Commands.add("spinnerOff", () => {
//     // Check if there are more loading-test elements with more texts to make the conditional more specific
//     const $elem = Cypress.$('.loading-text');
//     !($elem /* && $elem.length */) || cy.get($elem).as('spinner')/* .should('not.have.length') */.should('not.be.visible');
//     // if ($elem.length) {
//     // cy.get($elem).as('spinner')
//     // cy.get('@spinner').should('not.have.length').and('not.be.visible')
//     // }
// });

// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
