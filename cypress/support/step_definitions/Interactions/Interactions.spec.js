//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import { pageObj } from "./../../step_definitions/General.spec.js";

Then("I set field {string} with {string}", (field, text) => {
  if (text === "Cypress translation") {
    cy.get(pageObj[field])
      .should("be.visible")
      .type(`${text} ${Math.random()}`);
  } else {
    cy.get(pageObj[field]).should("be.visible").type(text);
  }
});

Then("I set field {string} with {string} from shadow root {string}", (field, text, shadowRoot) => {
  if (text === "Cypress translation") {
    cy.get(pageObj[shadowRoot]).shadow().find(pageObj[field]).should("be.visible").type(`${text} ${Math.random()}`);
  } else {
    cy.get(pageObj[shadowRoot]).shadow().find(pageObj[field]).should("be.visible").type(text);
  }
});

Then("I {string} checkbox in {string}", (action, checkbox) => {
  /**
   * @param {any} action
   */
  function check(action) {
    return action == "mark" ? "true" : "false";
  }
  cy.get(`[for='${pageObj[checkbox]}'] > .mat-checkbox-inner-container`).click();
  cy.get(`input[type='checkbox'][id='${pageObj[checkbox]}']`).should(
    "have.attr",
    "aria-checked",
    check(action)
  );
});

Then("I click on {string} to drag", (arrow) => {
  cy.fixture("Commons/DragAndDrop").then(($DragAndDrop) => {
    cy.get($DragAndDrop[arrow]).click({ force: true });
  });
});

Then("I clean field {string}", (field) => {
  cy.get(pageObj[field]).clear();
});

Then("I clear all non obligatory text inputs", () => {
  cy.fixture("Commons/Inputs").then(($inputs) => {
    cy.get($inputs["notObligatory"]).clear();
  });
});

Then("I hover {string} and {string} is visible", (tooltip, msg) => {
  cy.fixture("Commons/Tooltip").then(($Tooltips) => {
    cy.get($Tooltips[tooltip]).trigger("mouseenter");
    cy.get(".cdk-overlay-container").as("container");
    cy.get("@container").contains(msg).should("be.visible");
    cy.clickOutside();
  });
});

Then("I validate hover {string} with {string} is visible", (field, text) => {
      cy.get(pageObj[field]).should("be.visible").contains(text);
});

Then("I click {string} question mark and popover {string} is visible",
  (popup, msg) => {
    cy.fixture("Commons/PopUps").then(($PopUps) => {
      cy.get($PopUps[popup])
        .click()
        .then(() => {
          cy.get(".popover-content").should("be.visible").as("questionmark");
        });
      cy.get("@questionmark").contains(pageObj[msg]).should("be.visible");
      cy.clickOutside();
    });
  }
);

Then("I click button contains {string}", (text) => {
  cy.get(`button:contains('${text}')`).eq(1).click();
});

And("I double click {string}", (text) => {
  cy.get(`td:contains('${text}')`).eq(0).dblclick();
});
And("I double click element {string}", (el) => {
  cy.get(pageObj[el]).eq(0).dblclick();
});