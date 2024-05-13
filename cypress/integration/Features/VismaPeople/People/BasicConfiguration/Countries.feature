@vlpeople-nightly
Feature: People -> Configuracion Basica -> Paises

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Modify a country

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
        And I go to card 'Countries'
        And I load file 'Countries' from 'VismaLatam/People'

    @Smoke
    Scenario: Navigation
        And I validate user to be on the 'Countries' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Countries'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Countries' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Countries'
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page

    @Smoke
    Scenario: Modify a country 
        Then I set filter field 'Filter Countries' with 'SIN DATOS'
        Then I select option 'Modificar ' from ellipsis with value 'SIN DATOS' 
        Then I wait until DOM is loaded
        And I clear field 'External Code Country'
        And I set field 'External Code Country' with '11'
        And I clear field 'Bank File Code'
        And I set field 'Bank File Code' with '22'
        And I clear field 'External Code'
        And I set field 'Bank File Code' with '88'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    @Smoke
    Scenario: Modify a country to his original settings
        Then I set filter field 'Filter Countries' with 'SIN DATOS'
        Then I select option 'Modificar ' from ellipsis with value 'SIN DATOS' 
        Then I wait until DOM is loaded
        And I clear field 'External Code Country'
        And I set field 'External Code Country' with '1'
        And I clear field 'Bank File Code'
        And I set field 'Bank File Code' with '2'
        And I clear field 'External Code'
        And I set field 'Bank File Code' with '8'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        