//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Cypress.config({ defaultCommandTimeout: 60_000, pageLoadTimeout: 80_000 });

Given("I navigate to {string}", (site) => {
  cy.visit(Cypress.env(site).url);
});

Then("I visit url {string} {string}", (site, url) => {
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
    cy.visit(`${Cypress.env(site).url}${$urlRequest[url]}`)
  });
});

When("I login on {string} as {string}", (site, role) => {
  cy.login(site, role);
});

And("I logout", () => {
  cy.logout();
});

Then("I validate user to be logged in", () => {
  cy.getLoginObjectsAndUsrData().then(($LoginObjAndUsrData) => {
    cy.get($LoginObjAndUsrData.Profile)
      .should("be.visible")
      .and("contain", $LoginObjAndUsrData.user);
  });
});
