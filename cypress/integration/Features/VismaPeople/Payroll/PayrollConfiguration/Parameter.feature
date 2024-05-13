@vlpeople-nightly
Feature: Payroll -> Configuraciones de Nomina -> Parametros

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Create, modify and delete payroll parameter


    Background: (Repeats on all scenarios)
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'Parameter'
        And I load file 'Parameter' from 'VismaLatam/Payroll'
        Given I wait request 'Parameters URL' and save with alias 'parameters'

    Scenario: Navigation

        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Parameter create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Parameter' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        And I validate user to be on the 'Parameter' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'Parameter'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Parameter' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'Parameter'
        And I load file 'Parameter' from 'VismaLatam/Payroll' 
        And I validate user to be on the 'Parameter' page
        And I wait until 'Parameter Table Skeleton' not exist
        And I wait for backend request taged as 'parameters'
        Then I set filter field 'Parameter grid filter' with 'Tickets de Alimentos'
        Then I select option 'Fórmulas' from ellipsis menu inside material grid with value 'Tickets de Alimentos' 
        Then I validate Modal to contain 'Parameter Formulas text'
        Then I click Modal button 'Close' 
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page


    Scenario: Validation
        
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on 'Description'
        Then I click on empty space
        Then I validate hover 'Description (Obligatory Validation)' with 'obligatorio' is visible
        Then I click on 'Unit'
        Then I click on empty space
        Then I validate hover 'Unit (Obligatory Validation)' with 'obligatorio' is visible
        Then I set field 'Description' with 'Descripcion'
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Modal Cancel' 
        Then I set field 'Description' with 'Valor del Sdo Básico dos'
        Then I validate hover 'Description (Obligatory Validation)' with 'El máximo de caracteres es de 30' is visible
        Then I click on list 'Unit' then select option 'Cantidad'
        Then I clean field 'Description'
        Then I set field 'Description' with 'Valor del Sdo Básico dos'
        Then I click button 'Save'


    Scenario: Creation Parameter
        
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Parameter create' page
        Then I set field 'Description' with 'Descripcion Cypress'
        Then I set field 'Observation' with 'Observacion'
        Then I click on list 'Unit' then select option 'Cantidad'
        Then I click button 'Save'
        Then I validate image 'Create Image' with text 'Create Text' is visible
        Then I click button 'Finish'
        And I validate user to be on the 'Parameter' page
        Then I set filter field 'Parameter grid filter' with 'Descripcion Cypress'
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Descripcion Cypress' 
        Then I validate 'Observation' its value contain 'Observacion'  
        Then I validate 'Span Unity' is a 'SPAN' with text 'Cantidad'
        Then I click button 'BackArrow'
        And I validate user to be on the 'Parameter' page
    Scenario: Modify Parameter    
        And I validate user to be on the 'Parameter' page
        Then I set filter field 'Parameter grid filter' with 'Descripcion Cypress' 
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Descripcion Cypress' 
        And I validate user to be on the 'Parameter modify' page
        Then I click on list 'Unit' then select option 'Porcentaje'
        Then I clear field 'Observation'
        Then I set field 'Observation' with 'Obs. Vacion'
        Then I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'Parameter' page
        Then I set filter field 'Parameter grid filter' with 'Descripcion Cypress'
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Descripcion Cypress' 
        Then I validate 'Observation' its value contain 'Obs. Vacion'  
        Then I validate 'Span Unity' is a 'SPAN' with text 'Porcentaje'
        Then I click button 'BackArrow'
        And I validate user to be on the 'Parameter' page

    Scenario: Delete Parameter     
        And I validate user to be on the 'Parameter' page
        Then I set filter field 'Parameter grid filter' with 'Descripcion Cypress'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Descripcion Cypress' 
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'