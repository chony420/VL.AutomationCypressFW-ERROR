//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Then } from 'cypress-cucumber-preprocessor/steps';


Then("I validate image {string} with text {string} is visible",
  (image, text) => {
    cy.fixture("Commons/Validations/Feedback").then(($Feedback) => {
        cy.get($Feedback[image])
        .should("be.visible")
        .siblings("p")
        .should("include.text", $Feedback[text])
        .and("be.visible");
    }); 
  }
);