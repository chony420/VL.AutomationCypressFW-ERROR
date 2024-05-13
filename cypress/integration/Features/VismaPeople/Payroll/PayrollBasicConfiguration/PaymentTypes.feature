@vlpeople-nightly
Feature: Payroll -> Payroll BasicConfiguration -> Payment types

    As a user I want:
        -Navigate for the differents menues option and links


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
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'Payment'
        And I validate user to be on the 'Payroll Payment' page
        And I go to card 'Payment Type'
        And I validate user to be on the 'Payment Types' page 

Scenario: Navigation
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll Payment' page
        And I go to card 'Payment Type'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payment Types' page

        Then I click breadcrumb 'Payroll'
        And I validate user to be on the 'Payroll' page
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'Payment'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll Payment' page
        And I go to card 'Payment Type'
        And I validate user to be on the 'Payment Types' page 

        Then I click breadcrumb 'BasicConfiguration'
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'Payment'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll Payment' page
        And I go to card 'Payment Type'
        And I validate user to be on the 'Payment Types' page 

        Then I click breadcrumb 'Payments'
        And I validate user to be on the 'Payroll Payment' page
        And I go to card 'Payment Type'
        And I validate user to be on the 'Payment Types' page 