//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Then } from "cypress-cucumber-preprocessor/steps";

const tenSecondsTimeout = {timeout: 10000};

Then("I select option {string} from ellipsis with value {string}", (option, value) => {
  cy.fixture("Commons/Grid/Ellipsis").then(($Ellipsis) => {
    cy.contains(value)
      .parent("tr")
      .within(() => {
        cy.get($Ellipsis["Options"]).eq(0).within(($option) => {
          cy.wrap($option).should("be.visible").as('option')
          cy.get('@option').click(tenSecondsTimeout);
        });
      });
    cy.get($Ellipsis["List"]).contains(option).should("be.visible").as('list')
    cy.get('@list').click();
  });
});

Then("I select option {string} from ellipsis with value {string} inside shadow root {string}", (option, value, shadowRoot) => {
  cy.fixture("Commons/Grid/Ellipsis").then(($ellipsisPageObject) => {
    const gridCellLocator = ($ellipsisPageObject["Grid Cell"]).replace("#{content}", value);
    //cy.log(`************ TD Grid Cell Locator = ${gridCellLocator}`);
    cy.get($ellipsisPageObject[shadowRoot]).shadow().find(gridCellLocator).parent("tr")
    .within(($row) => {
      cy.wrap($row).find($ellipsisPageObject["Options Span"]).then(($option) => {
        cy.wrap($option).should("be.visible").click(tenSecondsTimeout);
      });
    });
    cy.get($ellipsisPageObject["Menu Item Button"]).contains(option).should("be.visible").click(tenSecondsTimeout);
  });
});

Then("I select option {string} from ellipsis menu inside material grid with value {string}", (option, value) => {
  cy.fixture("Commons/Grid/Ellipsis").then(($Ellipsis) => {
     cy.contains('.mat-row', value).within(() => {
     cy.get($Ellipsis["Options"]).eq(0).as('option');
     cy.get('@option').should("be.visible").click();
    });
    cy.get($Ellipsis["List"]).contains(option).should("be.visible").as('list')
    cy.get('@list').click();
  });
});

Then("I select option {string} from ellipsis with value {string} and wait request {string}", (option, value, request) => {
  cy.fixture("Commons/Grid/Ellipsis").then(($Ellipsis) => {
    cy.wait(`@${request}`)
    cy.contains(value)
      .parent("tr")
      .within(() => {
        cy.get($Ellipsis["Options"]).eq(0).within(($option) => {
          cy.wrap($option).should("be.visible").as('option')
          cy.get('@option').click(tenSecondsTimeout);
        });
      });
    cy.get($Ellipsis["List"]).contains(option).should("be.visible").as('list')
    cy.get('@list').click();
  });
});
