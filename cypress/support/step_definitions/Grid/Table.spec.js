//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import { cssProperty } from "../../cssProperties";
let pageObj;

Then("I click {string} on row containing {string} from {string} grid",
  (elem, text, grid) => {
    cy.fixture("Commons/Grid/Grid").then(($Grid) => {
      cy.get(`${$Grid[grid]} > tbody > tr`)
        .should("be.visible")
        .and("contain", text)
        .first()
        .as("row");
    });

    cy.get("@row").then(($Row) => {
      if (elem === "ellipsis") {
        cy.fixture("Commons/Grid/Ellipsis").then(($Ellipsis) => {
          // @ts-ignore
          cy.get($Row)
            .find($Ellipsis["Options"])
            .should("be.visible")
            .as("ellipsis")
            .click();
        });
      } else {
        // @ts-ignore
        cy.get($Row).find(pageObj[elem]).click();
      }
      // }
    });
  }
);

Then("I validate row containing {string} from grid {string} to be visible",
  (text, grid) => {
    cy.fixture("Commons/Grid/Grid").then(($Grid) => {
      cy.get(`${$Grid[grid]} > tbody > tr`)
        .should("be.visible")
        .and("contain", text)
        .first()
        .as("row");
    });
  }
);

Then("I validate row number {string} from {string} grid to be visible",
  (number, grid) => {
    cy.fixture("Commons/Grid/Grid").then(($Grid) => {
      cy.get(`${$Grid[grid]} > tbody > tr`)
        .eq(+number - 1)
        .should("be.visible")
        .as("row");
    });
  }
);

Then("I click {string} from {string}", (text, elem) => {
  cy.get(pageObj[elem]).should("be.visible").as("table");
  cy.get("@table").contains(text, { matchCase: false }).click();
});

Then("I click {string} on row number {string} from {string}",
  (text, number, table) => {
    cy.get(`${pageObj[table]} > tbody > tr`)
      .eq(+number - 1)
      .should("be.visible")
      .as("row")
      .then(($Row) => {
        // @ts-ignore
        cy.get($Row).find(pageObj[text]).click();
      });
  }
);

Then("I set field {string} with {string} on row {string} from {string} grid",
  (elem, text, rowTitle, grid) => {
    cy.fixture("Commons/Grid/GridSubscriptions").then(($Grid) => {
      cy.get(`${$Grid[grid]} > mat-form-field`)
        .should("be.visible")
        .and("contain", $Grid[rowTitle]) 
        .as("row");
    });

    cy.get("@row").then(($Row) => {
      // @ts-ignore
      cy.get($Row).find(pageObj[elem]).type(text);
    });
  }
);

Then("I validate {string} with long descriptions have three dots and title",
  (elem) => {
    cy.get(`td[mat-cell].mat-column-${pageObj[elem]}`).as("cells");

    cy.get("@cells")
      .should("have.css", "white-space")
      .and("contain.value", cssProperty["white-space"]);
    cy.get("@cells")
      .should("have.css", "text-overflow")
      .and("contain.value", cssProperty["text-overflow"]);
  }
);

Then("I validate header is fixed when I scroll grid", () => {
  cy.get("tr.mat-header-row.cdk-header-row").as("header");
  cy.get("@header")
    .should("have.css", "top")
    .and("contain.value", cssProperty["top"]);
  cy.get("@header")
    .should("have.css", "z-index")
    .and("contain.value", cssProperty["z-index"]);
  cy.scrollTo("bottom");
  cy.get("role='table'").scrollTo("bottom");
});
