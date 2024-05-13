@vlpeople-nightly
Feature: People -> Configuracion Basica -> Nacionalidades

As a user I want to:
    - Navigate for the differents menues option and links
    - Check the different field Validations
    - Modify nationalities

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
        And I go to card 'Basic Configuration'
        Then I wait until DOM is loaded
        And I go to card 'Nationalities'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Nationality' page
        And I load file 'Nationality' from 'VismaLatam/People'
        Given I wait request 'Nationalities URL' and save with alias 'nationalities'
        Given I wait request 'NationalitiesArgentina URL' and save with alias 'nationalitiesFilter'

    Scenario: Navigation
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Nationalities'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Nationality' page
        Then I intercept 'Nationalities URL' and stub response 'nationalities'
        Then I set filter field 'Filter Grid' with 'Argentina'
        Then I wait for '5' seconds
        When I select option 'Modificar' from ellipsis with value 'Argentina ' and wait request 'nationalitiesFilter'
        Then I click button 'Cancel'
        And I validate user to be on the 'Nationality' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'Nationalities'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Nationality' page
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page

    Scenario: Validations
        Then I set filter field 'Filter Grid' with 'Argentina'
        When I select option 'Modificar' from ellipsis with value 'Argentina ' and wait request 'nationalitiesFilter'
        Then I clear field 'ExternalCode'
        Then I validate hover 'ExternalCodeObligatory' with 'obligatorio' is visible
        Then I validate button 'Save Button' is disabled
        Then I set field 'ExternalCode' with '12345'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Accept'
