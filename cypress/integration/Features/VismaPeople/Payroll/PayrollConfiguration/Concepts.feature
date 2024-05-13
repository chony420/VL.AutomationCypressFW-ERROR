@vlpeople-nightly
Feature: Payroll -> Configuraciones de Nomina -> Conceptos

    Background:
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Home' page
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Concepts'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Concepts' page

    Scenario: Navigation
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Concepts'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Concepts' page  
        Then I click breadcrumb 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Concepts'
        And I validate user to be on the 'Concepts' page
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page