//// <reference types="Cypress" />
/// <reference path="./../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import { pageObj } from "./General.spec";

 
Then("I validate the element {string} to have a padding-left of {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'padding-left', value)
  })
Then("I validate the element {string} to have a margin-left of {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'margin-left', value)
  })
  
Then("I validate the element {string} to have a flex-wrap of {string}", (elem,value) => {
    cy.get(pageObj[elem]).should("have.css", "flex-wrap").and("contain", `${value}`);
  });
  
Then("I validate the element {string} to have a gap of {string}", (elem,value) => {
    cy.get(pageObj[elem]).should("have.css", "gap").and("contain", `${value}`);
  });
  
Then("I validate the element {string} to have a flex-grow of {string}", (elem,value) => {
    cy.get(pageObj[elem]).should("have.css", "flex-grow").and("contain", `${value}`);
  });
  
  Then("I validate the element {string} to have a padding-top of {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'padding-top', value)
  }) 
  Then("I validate the element {string} to have a margin-top of {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'margin-top', value)
  }) 
  Then("I validate the element {string} its font-family is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'font-family', value)
  })
  Then("I validate the element {string} its font-weight is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'font-weight', value)
  })
  Then("I validate the element {string} its letter-spacing is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'letter-spacing', value)
  })
  Then("I validate the element {string} its gap is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'gap', value)
  })
  Then("I validate the element {string} its color is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'color', value)
  })
  Then("I validate the element {string} its font-size is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'font-size', value)
  })
  Then("I validate the element {string} its line-height is {string}", (elem,  value) => {
    cy.get(pageObj[elem]).should('have.css', 'line-height', value)
  })
  
  Then("I validate the element {string} its font-size is {string} in shadow root", (elem,  value) => {
    cy.get('vlfrontendreports-root').shadow().find(pageObj[elem]).should('have.css', 'font-size', value)
  })