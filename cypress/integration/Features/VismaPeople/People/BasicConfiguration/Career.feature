@vlpeople-nightly
Feature: People -> Configuracion Basica -> Carreras

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete Career

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
        And I go to card 'Career'
        And I load file 'Career' from 'VismaLatam/People'
        Given I wait request 'Institutions URL' and save with alias 'institutions'
        Given I wait request 'Career URL' and save with alias 'careers'

    @Smoke
    @VCore
    Scenario: Navigation
        Then I wait until spinner 'Loading Text' not exist   
        Then I click button 'Create'
        Then I wait for backend request taged as 'institutions'
        Then I wait until 'Payroll Skeleton' not exist
        Then I wait until DOM is loaded
        And I validate user to be on the 'Career Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        Then I wait until spinner 'Loading Text' not exist   
        And I validate user to be on the 'Career' page
        Then I click button 'Create' 
        Then I wait until 'Payroll Skeleton' not exist
        Then I wait until DOM is loaded 
        Then I click button 'Form Cancel Button'
        Then I wait until spinner 'Loading Text' not exist  
        And I validate user to be on the 'Career' page
        Then I wait until 'Payroll Skeleton' not exist
        Then I click button 'Create' 
        Then I wait for backend request taged as 'institutions'
        Then I click button 'BackArrow'
        Then I wait until spinner 'Loading Text' not exist   
        Then I wait for backend request taged as 'careers'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Career' page 
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        Then I wait until DOM is loaded
        And I go to card 'Career'
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page

    @Smoke
    Scenario: Validation 
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on 'Description'
        Then I click on empty space
        Then I validate hover 'Description (Obligatory Validation)' with 'obligatorio' is visible
        Then I validate button 'Accept Button' is disabled
        Then I set field 'Description' with 'Cypress Career'
        Then I validate button 'Accept Button' is not disabled
        Then I click on 'Add Button'
        And I set field 'Institution' with 'AUSTRAL DE ROSARIO'
        Then I click on empty space
        Then I validate hover 'Institution (Obligatory Validation)' with 'obligatorio' is visible
        And I set field 'Institution' with 'AUSTRAL DE ROSARIO'
        And I click on contain 'AUSTRAL DE ROSARIO'
        And I set field 'External Code' with '00214'
        Then I click button 'Form Cancel Button'
    
    @Smoke
    Scenario: Creation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'Cypress Career'
        Then I click on 'Add Button'
        And I set field 'Institution' with 'AUSTRAL DE ROSARIO'
        And I click on contain 'AUSTRAL DE ROSARIO'
        And I set field 'External Code' with '00214'
        Then I click button 'Accept Button'
        Then I wait until 'Spinner' is not visible
        # Then I validate image 'Create Image' with text 'Tipo de Archivo Cypress' is visible
        Then I click button 'Finish'
        Then I wait until DOM is loaded

     @Smoke
     Scenario: Modify
        Then I set filter field 'Filter Grid' with 'Cypress Career'
        Then I select option 'Modificar ' from ellipsis with value 'Cypress Career'
        Then I clear field 'Description'
        Then I set field 'Description' with 'Career Cypress'
        Then I click on 'Remove Institution'
        Then I click button 'Accept Button'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I set filter field 'Filter Grid' with 'Career Cypress'
        Then I select option 'Modificar ' from ellipsis with value 'Career Cypress'
        Then I click on 'Add Button'
        And I set field 'Institution' with 'AUSTRAL DE ROSARIO'
        And I click on contain 'AUSTRAL DE ROSARIO'
        And I set field 'External Code' with '00214'
        Then I click on 'Add Institution'
        Then I set field 'Institution1' with 'FLACSO'
        And I click on contain 'FLACSO'
        And I set field 'External Code1' with '21400'
        Then I click button 'Accept Button'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
   
    @Smoke
    Scenario: Delete
        Then I set filter field 'Filter Grid' with 'Career Cypress'
        Then I select option 'Eliminar ' from ellipsis with value 'Career Cypress'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'