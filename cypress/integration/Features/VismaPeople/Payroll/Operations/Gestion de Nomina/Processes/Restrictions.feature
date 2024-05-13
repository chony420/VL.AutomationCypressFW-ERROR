@vlpeople-nightly
Feature: Payroll -> Gestion de Nomina -> Restricciones

 As a user I want to:
        - Validate when assigning employees to a process that has a model with restriction to deny active employees
        - Validate when assigning employees to a process that has a model with restriction to deny inactive employees
        - Validate when assigning employees to a process that has a model with restriction to alert inactive employees
        - Validate when assigning employees to a process that has a model with restriction to alert active employees
    
     
    Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page 
        Then I wait for '2' seconds
        When I go to module 'PAYROLL'
        Then I go to card 'Operations'
        And I go to card 'Payroll Management'  
        And I load file 'Processes' from 'VismaLatam/Payroll' 
        Given I wait request 'Processes URL' and save with alias 'payroll-processes'
        Given I wait request 'Incompatibility Deny Active Cypress URL' and save with alias 'payroll-process-deny-active-cypress'
        Given I wait request 'Incompatibility Deny Inactive Cypress URL' and save with alias 'payroll-process-deny-inactive-cypress'
        Given I wait request 'Incompatibility Alert Inactive Cypress URL' and save with alias 'payroll-process-alert-inactive-cypress'
        Given I wait request 'Incompatibility Alert Active Cypress URL' and save with alias 'payroll-process-alert-active-cypress'
    Given I wait request 'Incompatibilities URL' and save with alias 'incompatibilities'
    Scenario: Warning Active Employees With Restrictions Validation
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait for backend request taged as 'payroll-processes'
        And I set field 'Description' with 'Denegar Activos - Cypress No Borrar'
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I select option 'Modificar' from ellipsis with value 'Denegar Activos - Cypress No Borrar' and wait request 'payroll-process-deny-active-cypress' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist
        Then I wait for backend request taged as 'incompatibilities'
        And I validate 'Deny Active Employees With Restrictions Validation' toast of type 'Toast Warning' with message '¡Atención! No se visualizan los colaboradores con estado activo, ya que el modelo de nómina restringe su incorporación.' is visible
       
    Scenario: Warning Inactive Employees With Restrictions Validation
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait for backend request taged as 'payroll-processes'
        And I set field 'Description' with 'Denegar Inactivos - Cypress No Borrar'
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I select option 'Modificar' from ellipsis with value 'Denegar Inactivos - Cypress No Borrar' and wait request 'payroll-process-deny-inactive-cypress' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist
        Then I wait for backend request taged as 'incompatibilities'
        And I validate 'Deny Inactive Employees With Restrictions Validation' toast of type 'Toast Warning' with message '¡Atención! No se visualizan los colaboradores con estado inactivo, ya que el modelo de nómina restringe su incorporación.' is visible
      
      
  Scenario: Alert Inactive Employees With Restrictions Validation
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait for backend request taged as 'payroll-processes'
        And I set field 'Description' with 'Alertar Inactivos - Cypress No Borrar'
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I select option 'Modificar' from ellipsis with value 'Alertar Inactivos - Cypress No Borrar' and wait request 'payroll-process-alert-inactive-cypress' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist 
        Then I force click 'Expansion Status Panel' 
        Then I force click 'Incorporate Inactive Employees Option' 
        And I click button 'Incorporate Apply Filter' 
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait until 'Progress Spinner' not exist
        Then I click button 'MoveAllAssigned'
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait for backend request taged as 'incompatibilities'
        And I validate 'Warning Inactive Employees With Restrictions Validation' toast of type 'Toast Warning' with message '¡Atención! El modelo de nómina restringe la incorporación de colaboradores con estado inactivo.' and download list is visible 
      
  Scenario: Alert Inactive Employees With Restrictions Validation
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait for backend request taged as 'payroll-processes'
        And I set field 'Description' with 'Alertar Activos - Cypress No Borrar'
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I select option 'Modificar' from ellipsis with value 'Alertar Activos - Cypress No Borrar' and wait request 'payroll-process-alert-active-cypress' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist 
        Then I force click 'Expansion Status Panel' 
        Then I force click 'Incorporate Active Employees Option' 
        And I click button 'Incorporate Apply Filter' 
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait until 'Progress Spinner' not exist
        Then I click button 'MoveAllAssigned'
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait for backend request taged as 'incompatibilities'
        And I validate 'Warning Active Employees With Restrictions Validation' toast of type 'Toast Warning' with message '¡Atención! El modelo de nómina restringe la incorporación de colaboradores con estado activo.' and download list is visible