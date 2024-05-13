//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from 'cypress-cucumber-preprocessor/steps';
export { pageObj }; 
 
let pageObj;

And("I validate {string} toast of type {string} with message {string} is visible",
  (toast, type, message) => {
    cy.fixture("Commons/Validations/Toasts").then(($Toast) => {
    cy.get($Toast[toast]).as('toast')
      .parents($Toast[`Alert ${type}`]).first().should('be.visible')
    cy.get($Toast[`${type} Icon`]).first().should('be.visible')
    cy.get('@toast').should('include.text',message.trim())  
    })
  }
);

And("I validate {string} toast of type {string} with message {string} and download list is visible",
  (toast, type, message) => {
    cy.fixture("Commons/Validations/Toasts").then(($Toast) => {
    cy.get($Toast[toast]).as('toast')
      .parents($Toast[`Alert ${type}`]).first().should('be.visible')
    cy.get($Toast[`${type} Icon`]).first().should('be.visible')
    cy.get('@toast').should('include.text',message.trim())  
    cy.get('.link-data').should('be.visible').and('include.text', $Toast[`Alert List Message`].trim()) 

    })
  }
);
