@vlpeople-nightly
Feature: Payroll -> Configuraciones Basica -> Escalas

    As a user I want to:
        - Navigate for the differents menues option and links
 
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
        And I go to card 'Escala'
        And I validate user to be on the 'Escala' page
    
    Scenario: Navigation
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'Escala'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Escala' page
        Then I click breadcrumb 'Payroll'
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'Escala'
        And I validate user to be on the 'Escala' page
        Then I click breadcrumb 'BasicConfiguration' 
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'Escala'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Escala' page

        # Queda pendiente los casos de modificación y baja por que aún no está desarrollado

        

