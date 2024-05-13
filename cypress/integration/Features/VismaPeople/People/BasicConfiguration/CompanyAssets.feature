@vlpeople-nightly
Feature: People -> Configuracion Basica -> Bienes de la compañia

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete Company Asssets

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
        And I go to card 'Company Assets'
        And I load file 'Company Assets' from 'VismaLatam/People'
    @Smoke
    Scenario: Navigation
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Basic Configuration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'Company Assets'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Company Assets' page  
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'Company Assets'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Company Assets' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Create Company Assets' page
        Then I click button 'BackArrow'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate user to be on the 'Company Assets' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Company Assets' page
    
    Scenario: Validations (when modifiyng with an existing code)
        Then I click button 'Create'
        Then I wait until DOM is loaded
        #Then I click 'Popover' question mark and popover 'Cargá todos los bienes de la compañía, luego podrán ser asignados desde cada ficha personal, en la solapa Organización.' is visible
        And I set field 'Description' with '1Asset'
        And I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with '1Asset Automation - No Borrar'
        Then I set filter field 'Asset' with '1Asset-Type Automation - No Borrar'
        And I click on contain '1Asset-Type Automation - No Borrar'
        And I set field 'Code' with 'Asset'
        And I clear field 'Code'
        Then I validate 'Code Validation' to have text 'Campo obligatorio'
        And I set field 'Code' with 'Asset Automation'
        And I clear field 'Price'
        Then I validate 'Price Validation' to have text 'Campo obligatorio'
        And I set field 'Price' with '100'
        Then I click button 'Save'
        And I validate 'Code already exists' toast of type 'Danger' with message 'El código ingresado ya existe.' is visible
    
     Scenario: Validation when deleting a company asset asigned to an employee
        Then I set filter field 'Filter Asset' with 'Cypress - Bien asignado a un empleado'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress - Bien asignado a un empleado'
        Then I wait until DOM is loaded  
        Then I click button 'Cancel'
        Then I wait until DOM is loaded  
        Then I select option 'Eliminar' from ellipsis with value 'Cypress - Bien asignado a un empleado'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        And I validate 'Delete is related with employer' toast of type 'Danger' with message '¡Atención! Este bien no se puede eliminar porque está asignado a un colaborador.' is visible     

     Scenario: Create a company asset
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Description' with 'Cypress Company Asset'
        Then I set filter field 'Asset' with 'TV'
        And I click on contain 'TV'
        And I set field 'Code' with 'Code 654'
        And I set field 'Price' with '100'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Create Image' with text 'Create Text' is visible 
        And I click button 'Finish'

     Scenario: Modify a company asset
        Then I set filter field 'Filter Asset' with 'Cypress Company Asset'
        Then I select option 'Modificar' from ellipsis with value 'Cypress Company Asset'
        Then I wait until 'Spinner' is not visible
        And I clear field 'Description'
        Then I set field 'Description' with 'Cypress Company Asset - Modificado'
        And I click on 'Clear wrapper'
        Then I set filter field 'Asset' with 'Radio'
        And I click on contain 'Radio'
        And I clear field 'Code'
        Then I set field 'Code' with 'aa95496'
        And I clear field 'Price'
        Then I set field 'Price' with '250'
        Then I click button 'Save' 
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Delete a company asset
        Then I set filter field 'Filter Asset' with 'Cypress Company Asset - Modificado'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Company Asset - Modificado'
        Then I wait until DOM is loaded  
        And I click on 'Close modal'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Company Asset - Modificado'
        Then I wait until DOM is loaded  
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        



