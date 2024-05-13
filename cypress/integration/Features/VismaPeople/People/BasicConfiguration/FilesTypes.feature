@vlpeople-nightly
Feature: People -> Configuracion Basica -> Tipo de Archivos

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete type of files

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
        And I go to card 'File Type'
        And I load file 'FileType' from 'VismaLatam/People'

    @Smoke
    Scenario: Navigation

        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'File Type Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'File Type' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        And I validate user to be on the 'File Type' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'File Type'
        Then I wait until DOM is loaded
        And I validate user to be on the 'File Type' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'File Type'
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page

    @Smoke
    Scenario: Validation

        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on 'Description'
        Then I click on empty space
        Then I validate hover 'Description (Obligatory Validation)' with 'Campo obligatorio' is visible
        Then I validate button 'Save Button' is disabled
        Then I set field 'Description' with 'Tipo de Archivo'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Cancel'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'Certificados'
        Then I click button 'Save'
        And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible

    Scenario: Creation

        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'Tipo de Archivo Cypress'
        Then I set field 'Initials' with 'Tip Arc Cypress'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Create Image' with text 'Successfully Created' is visible
        And I validate user to be on the 'Basic Configuration Success' page
        Then I click button 'Finish'

    Scenario: Modify a type of note
        Then I set filter field 'FileType Filter Grid' with 'Tipo de Archivo Cypress'
        Then I select option 'Modificar' from ellipsis with value 'Tipo de Archivo Cypress'
        Then I wait until 'Spinner' is not visible
        Then I clear field 'Initials'
        Then I set field 'Initials' with 'Tip Arc Cypress - Modificado'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Delete a type of note
        Then I set filter field 'FileType Filter Grid' with 'Tipo de Archivo Cypress'
        Then I select option 'Eliminar ' from ellipsis with value 'Tipo de Archivo Cypress'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'