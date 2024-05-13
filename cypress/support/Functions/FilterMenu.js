import FilterMenu from '../../fixtures/Commons/FilterMenu.json'

Cypress.Commands.add('setFilterList', (list, option) => {
    
    cy.get(FilterMenu[list]).should('be.visible')
        .and('have.length.gte', 1)
        .as('list').click()

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