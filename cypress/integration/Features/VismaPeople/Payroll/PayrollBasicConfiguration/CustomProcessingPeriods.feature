@vlpeople-nightly
Feature: Payroll -> Periodos de corte

    As a user I want to:
        - Navigate for the differents menues option and links
        - Validations when creating a custom processing period
        - Create, modify and delete a custom processing period
             
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
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'CustomProcessingPeriods' 
        And I validate user to be on the 'CustomProcessingPeriods' page
        And I load file 'CustomProcessingPeriods' from 'VismaLatam/Payroll'
                
    Scenario: Navigation 
        And I load file 'Breadcrumb' from 'Commons'
        And I validate user to be on the 'CustomProcessingPeriods' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'CustomProcessingPeriods'
        Then I wait until DOM is loaded
        And I validate user to be on the 'CustomProcessingPeriods' page 
        Then I click breadcrumb 'BasicConfiguration' 
        And I validate user to be on the 'Payroll BasicConfiguration' page
        And I go to card 'CustomProcessingPeriods'
        Then I wait until DOM is loaded
        And I validate user to be on the 'CustomProcessingPeriods' page
        Then I click breadcrumb 'Payroll' 
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'CustomProcessingPeriods' 
        Then I wait until DOM is loaded
        And I validate user to be on the 'CustomProcessingPeriods' page
        Then I click button 'Create'
        And I validate user to be on the 'CustomProcessingPeriods Create' page

      Scenario: Validation
        Then I wait until 'CustomProcessingPeriods Skeleton' not exist
        Then I set filter field 'CustomProcessingPeriods Filter' with 'Descripción inexistente'
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible         
        Then I click button 'Create'
        Then I wait until 'DesciptionFIeld Skeleton' not exist
        Then I click on 'Description'
        Then I click on empty space
        Then I validate 'Description Validation' to have text 'Campo obligatorio' 
        Then I set field 'Description' with 'Cypress Validation'
        And I set field 'Month' with 'Enero'
        Then I click on contain 'Enero'
        Then I click on 'Year'
        Then I click on empty space
        Then I validate 'Year Validation' to have text 'Campo obligatorio' 
        Then I set field 'Year' with '20'
        Then I validate 'Year Validation' to have text 'El mínimo de caracteres es de 4' 
        Then I set field 'Year' with '2024'
        Then I click on 'StartDate'
        Then I click on empty space
        Then I validate 'StartDate Validation' to have text 'Campo obligatorio' 
        Then I set field 'StartDate' with '01/01/2024'
        Then I click on 'EndDate'
        Then I click on empty space
        Then I validate 'EndDate Validation' to have text 'Campo obligatorio'
        Then I validate button 'Save Config' is disabled
        Then I set field 'EndDate' with '31/01/2024'
        Then I validate image 'Feedback Without Attributes Imagen' with text 'Feedback Without Attributes Text' is visible
        Then I validate image 'Feedback Without Attributes Imagen' with text 'Feedback Without Attributes Assigned' is visible
        Then I validate button 'Save' is not disabled
        Then I click button 'Save'
        And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible

    Scenario: Creation of a Custom Processing Period
        Then I wait until 'CustomProcessingPeriods Skeleton' not exist      
        Then I click button 'Create'
        Then I wait until 'DesciptionFIeld Skeleton' not exist
        Then I click on 'Description'
        Then I click on empty space
        Then I set field 'Description' with 'Cypress Custom Processing'
        And I set field 'Month' with 'Enero'
        Then I click on contain 'Enero'
        Then I set field 'Year' with '2024'
        Then I set field 'StartDate' with '01/01/2024'
        Then I set field 'EndDate' with '31/01/2024'
        And I set field 'Structure Scope' with 'Puesto'
        Then I click on contain 'Puesto'
        Then I validate 'Left Attributes Drawer Chip' to have text '84 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I set field 'Structures Drag and Drop Search' with 'Administrativo'
        Then I validate 'Left Attributes Drawer Chip' to have text '6 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I click button 'MoveAllAssigned'
        Then I clear field 'Structures Drag and Drop Search'
        Then I validate 'Left Attributes Drawer Chip' to have text '78 - Encontrados'
        Then I click button 'MoveAllUnassigned'
        Then I validate 'Left Attributes Drawer Chip' to have text '84 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I set field 'Structures Drag and Drop Search' with 'CAJERO'
        Then I validate 'Left Attributes Drawer Chip' to have text '1 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I click button 'MoveAllAssigned'
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '1 - Seleccionados'
        Then I click button 'Save'
        Then I validate image 'Create Image' with text 'Custom Processing Period created' is visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        Then I click button 'Finish'

 Scenario: Modify a Custom Processing Period
        Then I set filter field 'CustomProcessingPeriods Filter' with 'Cypress Custom Processing'
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Cypress Custom Processing'
        And I set field 'Month' with 'Marzo'
        Then I click on contain 'Marzo'
        Then I clear field 'Year'
        Then I set field 'Year' with '2025'
        Then I clear field 'StartDate'
        Then I set field 'StartDate' with '01/03/2025'
        Then I clear field 'EndDate'
        Then I set field 'EndDate' with '31/03/2025'
        And I set field 'Structure Scope' with 'Empresa'
        Then I click on contain 'Empresa'
        Then I validate 'Left Attributes Drawer Chip' to have text '62 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I set field 'Structures Drag and Drop Search' with 'ARCOS PLATEADOS'
        Then I validate 'Left Attributes Drawer Chip' to have text '1 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I click button 'MoveAllAssigned'
        Then I clear field 'Structures Drag and Drop Search'
        Then I validate 'Left Attributes Drawer Chip' to have text '61 - Encontrados'
        Then I click button 'MoveAllUnassigned'
        Then I validate 'Left Attributes Drawer Chip' to have text '62 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I set field 'Structures Drag and Drop Search' with 'EMPRESA'
        Then I validate 'Left Attributes Drawer Chip' to have text '21 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Seleccionados'
        Then I click button 'MoveAllAssigned'
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '21 - Seleccionados'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'CustomProcessingPeriods' page

 Scenario: Delete a Custom Processing Period
        Then I set filter field 'CustomProcessingPeriods Filter' with 'Cypress Custom Processing'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress Custom Processing'
        Then I click Modal button 'Modal Cancel'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress Custom Processing'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
    