@vlpeople-nightly
Feature: Payroll -> Gestion de Nomina -> Incompatibilidades

 As a user I want to:
        - Validate when assigning employees to a process that has a model with absolute incompatibility to deny assign employees
        - Validate when assigning employees to a process that has a model with notification incompatibility to let me assign employees and notify them
        - Interact with filter-toggle button to apply filters in assigned employees in drag & drop
     
    Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page 
        Then I wait for '2' seconds
        Given I wait request 'Processes URL' and save with alias 'payroll-processes'
        Given I wait request 'Incompatibility Warning Cypress URL' and save with alias 'payroll-process-incompatibilities-cypress'
        Given I wait request 'Process Filter URL' and save with alias 'payroll-processes-filter'
        Given I wait request 'Periods URL' and save with alias 'payroll-periods'
        And I load file 'Processes' from 'VismaLatam/Payroll'
        When I go to module 'PAYROLL'
        Then I go to card 'Operations'
        And I go to card 'Payroll Management'  
         
  Scenario: Incompatibilities Employees Validation
        Then I wait for backend request taged as 'payroll-processes'
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I wait until 'Table' not have class 'skeleton-table'
        And I set field 'Description' with 'Incompatibilidades - Cypress No borrar'
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I select option 'Modificar' from ellipsis with value 'Incompatibilidades - Cypress No borrar' and wait request 'payroll-process-incompatibilities-cypress' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist 
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait until 'Progress Spinner' not exist
        Then I click button 'MoveAllAssigned'
        Then I wait until 'Stepper-1-Inputs' not exist
        And I validate 'Notification Employees With Incompatibilities Validation' toast of type 'Toast Warning' with message '¡Atención! Los siguientes colaboradores fueron incorporados en un proceso del período, con un modelo incompatible al actual:' and download list is visible 
        And I validate 'Absolute Employees With Incompatibilities Validation' toast of type 'Toast Warning' with message '¡Atención! Los siguientes colaboradores fueron incorporados en un proceso del período, con un modelo incompatible al actual. Al continuar, serán desincorporados.' and download list is visible
        Then I click on 'Filter Toggle'
        And I go to tab 'Processes'
        Then I click on 'Salary Advance Panel' 
        Then I wait for backend request taged as 'payroll-periods' 
        Then I click on 'Process Period From'
        Then I click on empty space
        Then I click on list 'Process Period From' of combobox 'Combobox Process Period From' then select option by contain 'Septiembre 2023'
        Then I click on empty space
        Then I click on 'Process Period To'
        Then I click on empty space
        Then I click on list 'Process Period To' of combobox 'Combobox Process Period To' then select option by contain 'Septiembre 2023'
        Then I wait for backend request taged as 'payroll-processes-filter'
        Then I click on empty space 
        Then I validate hover 'Process Required Validation' with 'Campo obligatorio' is visible
        Then I click on 'Incorporate Process Processes'
        Then I click on contain '1era Quincena - Cypress No Borrar'  
        Then I click on contain '2da Quincena - Cypress No Borrar'  
        Then I click on empty space
        And I click button 'Incorporate Assigned Apply Filter'   
        Then I validate 'Right Chip' not include '... - Encontrados'
        Then I validate button 'MoveAllUnassigned' is not disabled
        Then I click button 'MoveAllUnassigned'
        Then I validate 'Right Chip' to have text '51 - Incorporados'
        Then I validate 'Left Chip' to have text '3 - Encontrados'
        Then I click button 'Continue Stepper Button'
        Then I force click 'Some Employees'
        Then I validate 'Right Chip' not include '... - Encontrados'
        Then I wait until 'Progress Spinner' not exist
        Then I validate 'Right Some Employes Drawer Chip' to have text '0 - Incorporados'
        Then I force click button 'Close Drawer Process'
        Then I go to step 'Payroll-Process-Step-2'
        Then I click on 'Clean Process Filter'
        Then I wait until 'Progress Spinner' not exist
        Then I validate 'Right Chip' to have text '51 - Incorporados'
        Then I click button 'MoveAllUnassigned' 
        Then I wait until 'Progress Spinner' not exist
        Then I click button 'Arrow Stepper Button' 
        Then I force click on contain 'Guardar borrador'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'PayrollProcessGrid' page