@vlpeople-nightly
Feature: People -> Configuracion Basica -> Types of templates

As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete types of templates

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
        And I go to card 'TemplateTypes'
        And I load file 'TemplatesTypes' from 'VismaLatam/People'
@Smoke
Scenario: Navigation
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Basic Configuration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'TemplateTypes'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TemplatesTypes' page  
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Basic Configuration' page
        And I go to card 'TemplateTypes'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TemplatesTypes' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Create TemplatesType' page
        Then I click button 'BackArrow'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate user to be on the 'TemplatesTypes' page  
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'TemplatesTypes' page
@Smoke
Scenario: Validations (when modifiyng with an existing code)
        Then I click button 'Create'
        Then I wait until DOM is loaded
        #Then I click 'Popover' question mark and popover 'Clasificá las plantilla de documentos, en diferentes tipos de plantillas. Ejemplo: Tipo de plantilla: Diplomas.' is visible
        And I set field 'Description' with 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
        Then I validate 'Description Validation' to have text 'El máximo de caracteres es de 100'
        And I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with 'Carta'
        And I set field 'Initials' with 'CARTAAAAAAAAAA'
        Then I validate 'Initials Validation' to have text 'El máximo de caracteres es de 10'
        And I clear field 'Initials'
        Then I set field 'Initials' with 'CARTA'
        Then I set field 'Document Type' with 'Certificados'
        Then I click on empty space
        Then I validate 'Document Type Validation' to have text 'Campo obligatorio'
        Then I set field 'Document Type' with 'Documentos'
        And I click on contain 'Documentos'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Save'
        And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible

Scenario: Create a type of template
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I set field 'Description' with 'Automation Cypress'
        And I set field 'Initials' with 'TST'
        Then I set field 'Document Type' with 'Documentos'
        And I click on contain 'Documentos'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Basic Configuration Success' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

 Scenario: Modify a type of template 
        
        Then I set filter field 'Template Type grid filter' with 'Automation Cypress'
        Then I select option 'Modificar ' from ellipsis with value 'Automation Cypress' 
        Then I wait until DOM is loaded
        And I clear field 'Description'
        Then I set field 'Description' with 'Automation Cypress modified'
        And I clear field 'Initials'
        Then I set field 'Initials' with 'TST2'
        Then I click on 'Clear Document Type'
        Then I set field 'Document Type' with 'Denuncia'
        And I click on contain 'Denuncia'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

Scenario: Delete a type of template 
        
        Then I set filter field 'Template Type grid filter' with 'Automation Cypress modified'
        Then I select option 'Eliminar' from ellipsis with value 'Automation Cypress modified' 
        Then I wait until DOM is loaded 
        Then I click button 'Cancel'
        Then I select option 'Eliminar' from ellipsis with value 'Automation Cypress modified' 
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'