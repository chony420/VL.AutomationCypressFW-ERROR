@vlpeople-nightly
Feature: People -> Configuracion Basica -> Institucion

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete Institutions


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
        And I go to card 'Institution'
        And I load file 'Institution' from 'VismaLatam/People'
        
    @Smoke
    Scenario: Navigation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Institution Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Institution' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        And I validate user to be on the 'Institution' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Institution'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Institution' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Institution'
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page

    @Smoke
    Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on 'Country'
        Then I click on empty space
        Then I validate hover 'Country (Obligatory Validation)' with 'obligatorio' is visible        
        Then I click on 'Description'
        Then I click on empty space
        Then I validate hover 'Description (Obligatory Validation)' with 'obligatorio' is visible
        Then I validate button 'Save Button' is disabled
        Then I set field 'Description' with 'Insti tucion'
        And I set field 'Country' with 'ARGENTINA'
        And I click on contain 'ARGENTINA'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Cancel'

    @Smoke
    Scenario: Creation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Country' with 'ARGENTINA'
        And I click on contain 'ARGENTINA'
        And I set field 'Description' with 'Cypress Institution'
        And I set field 'External Code' with '00214'
        Then I click button 'Save'
        # Then I validate image 'Create Image' with text 'Tipo de Archivo Cypress' is visible
        Then I click button 'Finish'
        Then I set filter field 'Filter Grid' with 'Cypress Institution'
        Then I select option 'Modificar ' from ellipsis with value 'Cypress Institution'
        Then I clear field 'Description'
        Then I set field 'Description' with 'Institution Cypress'
        Then I clear field 'Country'
        Then I set field 'Country' with 'CHILE'
        Then I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I set filter field 'Filter Grid' with 'Institution Cypress'
        Then I select option 'Eliminar ' from ellipsis with value 'Institution Cypress'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'