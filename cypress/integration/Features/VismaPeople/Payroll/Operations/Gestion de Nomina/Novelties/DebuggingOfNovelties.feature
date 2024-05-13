@vlpeople-nightly
Feature: Payroll -> Tablero de Nomina

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
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I go to card 'Novelties'
        Then I wait until DOM is loaded
        And I go to card 'DebbugingOfNovelties'
        And I load file 'DebbugingOfNovelties' from 'VismaLatam/Payroll'