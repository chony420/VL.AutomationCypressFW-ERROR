//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { And } from "cypress-cucumber-preprocessor/steps";

/*And("I validate snackbar {string} is visible", (elem) => {
  cy.fixture("Commons/Validations/Snackbars").then(($Fixture) => {
    cy.get($Fixture[elem]).should("be.visible");
    if ($Fixture[elem] == "Modified") {
      cy.get($Fixture[elem]).should("have.text", "Modificado exitosamente");
    }
  });
});*/

And("I validate snackbar {string} is visible and have the text {string}", (elem,text) => {
  cy.fixture("Commons/Validations/Snackbars").then(($Fixture) => {
    cy.get($Fixture[elem]).should("be.visible","have.text",text);
  });
});