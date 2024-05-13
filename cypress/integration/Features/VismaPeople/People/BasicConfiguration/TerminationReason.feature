@vlpeople-nightly
Feature: People -> Configuracion Basica -> Motivos de baja

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete a termination reason

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
        And I go to card 'TerminationReason'
        And I load file 'TerminationReason' from 'VismaLatam/People'
@Smoke
Scenario: Navigation
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Basic Configuration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'TerminationReason'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TerminationReasons' page  
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'TerminationReason'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TerminationReasons' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Create TerminationReasons' page
        Then I click button 'BackArrow'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate user to be on the 'TerminationReasons' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TerminationReasons' page

@Smoke
Scenario: Validations
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Description' with 'DESPIDO'
        #NO existe validacion por limite de caracteres
        And I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with 'DESPIDO'
        And I set field 'External Code' with '59'
        Then I set field 'ID Structure' with 'BAJA POR DESPIDO'
        And I click on contain 'BAJA POR DESPIDO'
        Then I 'mark' checkbox in 'End of Relationship'
        Then I 'unmark' checkbox in 'End of Relationship'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Save'
        And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible
        
@Smoke
Scenario: Create a termination reason
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Description' with 'Cypress Automation Test'
        And I set field 'External Code' with '12'
        Then I set field 'ID Structure' with 'BAJA POR DESPIDO'
        And I click on contain 'BAJA POR DESPIDO'
        Then I 'mark' checkbox in 'End of Relationship'
        Then I 'unmark' checkbox in 'End of Relationship'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Basic Configuration Success' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

@Smoke
Scenario: Modify a termination reason   
        Then I set filter field 'Filter Termination Reason' with 'Cypress Automation Test'
        Then I select option 'Modificar ' from ellipsis with value 'Cypress Automation Test' 
        Then I wait until DOM is loaded
        And I clear field 'Description'
        Then I set field 'Description' with 'Cypress Automation Test 2'
        And I clear field 'External Code'
        And I set field 'External Code' with '24'
        And I click on 'Clear Wrapper'
        Then I set field 'ID Structure' with 'LICENCIA SIN GOCE DE HABERES'
        And I click on contain 'LICENCIA SIN GOCE DE HABERES'
        Then I 'mark' checkbox in 'End of Relationship'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

@Smoke
Scenario: Delete a termination reason
        Then I set filter field 'Filter Termination Reason' with 'Cypress Automation Test 2'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Automation Test 2' 
        Then I wait until DOM is loaded 
        Then I click button 'Cancel'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Automation Test 2' 
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'