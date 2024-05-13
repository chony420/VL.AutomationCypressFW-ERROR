//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-check

import { Then } from 'cypress-cucumber-preprocessor/steps';
import { pageObj } from "./../General.spec.js";


Then('I set filter field {string} with {string}', (field, text) => {
    cy.get(pageObj[field]).should('be.visible').clear().type(text)
});

Then('I click {string} on filter menu', (elem) => {
    cy.fixture('Commons/FilterMenu').then(($FilterMenu) => {
        cy.get($FilterMenu[elem]).should('be.visible').click()
    })
});

Then('I click on filter list {string} then select option {string}', (list, option) => {

    cy.fixture('Commons/FilterMenu').then(($FilterMenu) => {
        cy.get($FilterMenu[list]).should('be.visible')
            .as('list').click()
    })

    cy.get('@list').should('have.attr', 'aria-expanded', 'true')

    cy.get('[role=listbox]', { timeout: 25000 })
        .as('selectList').should('be.visible')

    cy.get('@selectList').within(($list) => {
        cy.wrap($list).contains(option, { matchCase: false })
            .as('option').click()
    })

    cy.get('@selectList').should('not.exist')
    cy.get('@list').should('have.attr', 'aria-expanded', 'false')
});
