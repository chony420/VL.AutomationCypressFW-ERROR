//// <reference types="Cypress" />
/// <reference path="./../index.d.ts" />
// @ts-check

import { Then } from 'cypress-cucumber-preprocessor/steps';

Then("I validate chip {string} contains value {string}", (chip, value) => {
    cy.fixture("Commons/Chip").then(($Chip) => {
      cy.get($Chip[chip])
        .should("be.visible")
        .should('contain', value);
    });
  });
  
  
  Then("I validate content of blue chip with {string} results", (results) => {
    cy.get('.chip-result')
    .should("be.visible")
    .should('contain', results);
  });