@vlpeople-nightly
Feature: Payroll -> Configuraciones de Nomina -> Formulas

    Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'Formulas'

    Scenario: Navigation
        And I load file 'Breadcrumb' from 'Commons'
        And I validate user to be on the 'Formulas' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Formulas'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Formulas' page
        Then I click breadcrumb 'Payroll'
        And I validate user to be on the 'Payroll' page
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Formulas'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Formulas' page 
        Then I click breadcrumb 'PayrollConfiguration'
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Formulas'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Formulas' page       