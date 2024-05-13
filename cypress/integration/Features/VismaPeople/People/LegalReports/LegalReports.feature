@vlpeople-nightly
Feature: People -> Legal Reports

    As a user I want to:
        - Navigate though People breadcrumb
    
    Background: (Repeats on all scenarios)
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        Then I wait until DOM is loaded
        And I go to card 'LegalReports'
        Then I wait until DOM is loaded
        And I load file 'LegalReports' from 'VismaLatam/People'

    Scenario: Navigation
        And I validate user to be on the 'LegalReports' page 
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page