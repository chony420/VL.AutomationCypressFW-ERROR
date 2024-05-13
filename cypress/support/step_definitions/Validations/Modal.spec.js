//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Then("I validate Modal to contain {string}", (text) => {
  cy.fixture("Commons/Validations/Modal").then(($Modal) => {
    cy.get($Modal["Dialog"]).should("be.visible").and("contain", $Modal[text]);
  });
});

Then("I click Modal button {string}", (elem) => {
  cy.fixture("Commons/Validations/Modal").then(($Modal) => {
    
    cy.get($Modal["Dialog"]).within(($ElementsInModal) => {
      cy.wrap($ElementsInModal).get($Modal[elem]).click();
    });
    
  });
});
