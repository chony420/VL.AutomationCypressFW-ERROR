@vlpeople-nightly
Feature: People -> Plantillas

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete templates

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
        And I go to card 'Templates'
        And I load file 'Templates' from 'VismaLatam/People'
    @Smoke
    Scenario: Navigation
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Basic Configuration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'Templates'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Templates' page  
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'Templates'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Templates' page
        Then I click button 'References'
        Then I wait until DOM is loaded
        Then I set field 'Search References' with 'CONFREP_tipo'
        Then I click button 'Close'
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Templates create' page
        Then I click button 'BackArrow'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate user to be on the 'Templates' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Templates' page
        
    Scenario: Validations
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Name' with 'NO ELIMINAR - Cypress'
        And I clear field 'Name'
        Then I validate 'Name Validation' to have text 'Campo obligatorio'
        And I set field 'Name' with 'NO ELIMINAR - Cypress'
        And I set field 'Description' with 'NO ELIMINAR - Cypress'
        And I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with 'NO ELIMINAR - Cypress'
        Then I set field 'Template Type' with 'Documento Legal'
        And I click on contain 'Documento Legal'
        And I click on 'Clear Template Type'
        Then I validate 'Template Type Validation' to have text 'Campo obligatorio'
        Then I set field 'Template Type' with 'Documento Legal'
        And I click on contain 'Documento Legal'
        Then I set field 'Origin' with 'Empleados'
        And I click on contain 'Empleados'
        And I click on 'Clear Origin'
        Then I validate 'Origin Validation' to have text 'Campo obligatorio'
        Then I set field 'Origin' with 'Empleados'
        And I click on contain 'Empleados'
        Then I set field 'Filter' with 'Filtro Empresas'
        And I click on contain 'Filtro Empresas'
        And I click on 'Clear Filter'
        Then I validate 'Filter Validation' to have text 'Campo obligatorio'
        Then I set field 'Filter' with 'Filtro Empresas'
        And I click on contain 'Filtro Empresas'
        Then I set field 'Start Date' with 'dasdasd'
        Then I validate 'Start Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I clear field 'Start Date'
        Then I set field 'Start Date' with '19/07/2023'
        Then I set field 'End Date' with '35/18/2023'
        Then I validate 'End Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I clear field 'End Date'
        Then I set field 'End Date' with '19/07/2024'
        Then I set field 'Output Template Name' with 'NO ELIMINAR - Cypress'
        And I clear field 'Output Template Name'
        Then I validate 'Output Template Name Validation' to have text 'Campo obligatorio'
        Then I set field 'Output Template Name' with 'NO ELIMINAR - Cypress'
        And I click on 'Upload File'
        Then I click on empty space
        Then I upload file 'Image.jpg'
        #And I validate 'Template File Extension Validation' toast of type 'Alert Warning' with message 'Las extensiones admitidas, de los archivos a importar, son odt y xml.' is visible
        Then I click button 'Save'
        And I validate 'File Name Is Required' toast of type 'Danger' with message 'Deberás importar el archivo desde tu dispositivo para generar la plantilla.' is visible
        And I validate 'Name Already Exists' toast of type 'Danger' with message 'El nombre ingresado ya existe.' is visible

  Scenario: Create a template
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I 'mark' checkbox in 'Active'
        And I set field 'Name' with 'Cypress Automation'
        And I set field 'Description' with 'Esta es una prueba automatizada de frontend'
        Then I set field 'Template Type' with 'Documento Legal'
        And I click on contain 'Documento Legal'
        Then I set field 'Origin' with 'Empleados'
        And I click on contain 'Empleados'
        Then I set field 'Filter' with 'Filtro Empresas'
        And I click on contain 'Filtro Empresas'
        Then I set field 'Start Date' with '19/07/2023'
        Then I set field 'End Date' with '31/12/2023'
        Then I set field 'Output Template Name' with 'Cypress Automation - Prueba automatizada'
        And I click on 'Upload File'
        Then I click on empty space
        Then I upload file 'Plantilla.odt'
        Then I 'mark' checkbox in 'Visible In Employees Self Service'
        Then I 'mark' checkbox in 'Manager'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Basic Configuration Success' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

  Scenario: Modify a template
        Then I set filter field 'Search' with 'Cypress Automation'
        Then I select option 'Modificar' from ellipsis with value 'Cypress Automation' 
        Then I wait until DOM is loaded
        Then I wait for '5' seconds
        Then I 'unmark' checkbox in 'Active'
        And I clear field 'Name'
        Then I set field 'Name' with 'Cypress Automation Modified'
        And I clear field 'Description'
        Then I set field 'Description' with 'Esta es una prueba automatizada de frontend modificada'
        And I click on 'Clear Template Type'
        Then I set field 'Template Type' with 'Contrato'
        And I click on contain 'Contrato'
        And I click on 'Clear Origin'
        Then I set field 'Origin' with 'Sucursales'
        And I click on contain 'Sucursales'
        Then I clear field 'Start Date'
        Then I set field 'Start Date' with '14/08/2016'
        Then I clear field 'End Date'
        Then I set field 'End Date' with '31/12/2016'
        Then I clear field 'Output Template Name'
        And I set field 'Output Template Name' with 'Cypress Automation - Prueba automatizada modificada'
        And I click on 'Upload File'
        Then I click on empty space
        Then I upload file 'Plantilla.odt'
        Then I 'unmark' checkbox in 'Visible In Employees Self Service'
        Then I 'unmark' checkbox in 'Manager'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        
Scenario: Activate a template        
        Then I set filter field 'Search' with 'Cypress Automation Modified'
        Then I select option 'Activar' from ellipsis with value 'Cypress Automation Modified' 
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

Scenario: Inactivate a template        
        Then I set filter field 'Search' with 'Cypress Automation Modified'
        Then I select option 'Inactivar' from ellipsis with value 'Cypress Automation Modified' 
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

Scenario: Delete a template
        Then I set filter field 'Search' with 'Cypress Automation Modified'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Automation Modified' 
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'