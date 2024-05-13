/// <reference types="cypress" />
declare namespace Cypress {
  interface Chainable<Subject> {
    /**
     * Sets environment using the same used in the specs file
     * @example cy.setCommandsFileEnv('VismaLatam')
     */
    setEnvironment(site: string): Chainable<any>;
  /**
     * Waits until all DOM is fully loaded
     * @example cy.setCommandsFileEnv('VismaLatam')
     */
  DOMisLoaded(): Chainable<any>;
 /**
     * Waits until all DOM is fully loaded
     * @example cy.setCommandsFileEnv('VismaLatam')
     */
  WaitRequest(urlRequest:string): Chainable<any>;

    /**
     * Logs in with user of a given role
     * @example cy.login('DEV', superadmin')
     */
    login(site: string, role: string): Chainable<any>;
  /**
     * Determines if element exists in DOM
     * @example cy.login('DEV', superadmin')
     */
    exists(el: string): Chainable<any>;

    /**
     *  Logs out current user
     * @example cy.logout()
     */
    logout(): Chainable<any>;

    /**
     * Obtains the name of the currently running test (.feature file) to use as page objects file.
     ** Page objects file must be in fixtures folder and both file and test names must match.
     * @example cy.setPageObjFile()
     */
    setPageObjects(): Chainable<any>;

    /**
     * Returns Login page objects current user data.
     * @example cy.getLoginObjAndUsrData()
     */
    getLoginObjectsAndUsrData(): Chainable<any>;

    /**
     * Sets field on Filter menu.
     * @example cy.setFilterField('Tenant')
     */
    setFilterField(filter: string, text: string): Chainable<any>;

    // /**
    //  * Navigates to a given card.
    //  * @example cy.goToCard('Users')
    //  */
    //  goToCard(card: string): Chainable<any>;

    /**
     * Returns the common objects.
     * @example cy.getPageObjects()
     */
    getPageObjects(pageObjectFile: string): Chainable<any>;

    /**
     * When present waits until the loading spinner is off de DOM.
     ** The loading spinner appears when API requests are made under the hood.
     * @example cy.spinnerOff()
     */
    spinnerOff(): Chainable<any>;
    /**
     * *Click coordinates X:0, Y:0 in body to remove any attached element from DOM like popups.*
     * @example cy.clickOutside()
     */
    clickOutside(): Chainable<any>;
  }
}

// ****************************** EXAMPLES ****************************

// /// <reference types="cypress" />

// declare namespace Cypress {
//   interface Chainable<Subject> {
//     /**
//      * Create several Todo items via UI
//      * @example
//      * cy.createDefaultTodos()
//      */
//      createDefaultTodos(): Chainable<any>
//      /**
//       * Creates one Todo using UI
//       * @example
//       * cy.createTodo('new item')
//       */
//      createTodo(title: string): Chainable<any>

//      /**
//       * Command that injects Axe core library into app html.
//       * @example
//       *  cy.visit('/')
//       *  cy.v()
//       */
//      addAxeCode(): Chainable<any>

//      /**
//       * Run a11y tests or only a subset of all tests
//       * @see https://github.com/avanslaars/cypress-axe
//       * @example
//       *  cy.checkA11y()
//       */
//      checkA11y(any, object): Chainable<any>
//    }
//  }
