@vlpeople-nightly
Feature: Payroll -> Configuraciones de Nomina

As user I want to:

-Return to Payroll using the breadcrumbs contained in this card. 
-Use filter search and options from elipsis
-Assign and Modify structure type to a scope

        Background:
        Given I login on 'VismaLatam' as 'superadmin'
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
        And I go to card 'PayrollScope'
        Then I wait until DOM is loaded 
        Given I wait request 'PayrollScopeAdvances URL' and save with alias 'payrollscopeadvances'
        Scenario: Navigation
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'PayrollScope'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollScope' page
        Then I click breadcrumb 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'PayrollScope'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollScope' page
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        Scenario: Filter  
        And I load file 'FilterMenu' from 'Commons'
        Then I set filter field 'FilterPayrollScope' with 'Anticipos' 
        Then I wait until DOM is loaded  
        Then I wait until 'Spinner' is not visible    
        Then I wait until DOM is loaded  
        Then I validate 'FilterPayrollScope' its value contain 'Anticipos'
        Then I wait until DOM is loaded  
        Then I validate text 'Empleos Anteriores' not exist
        And I load file 'Grid' from 'Commons/Grid'
        Then I validate row containing 'Anticipos' from grid 'General Table' to be visible
        Then I validate 'Row Table' to have length of '1' 
        When I select option 'Modificar' from ellipsis with value 'Anticipos' and wait request 'payrollscopeadvances'
        And I validate user to be on the 'PayrollScope' page
        Then I click button 'BackArrow'
        Then I click breadcrumb 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page

      
        Scenario: Assign structure to Scope
        And I load file 'FilterMenu' from 'Commons'
        Given I wait request 'PayrollScopeResolutions URL' and save with alias 'payrollscoperesolutions'
        Then I set filter field 'FilterPayrollScope' with 'Resoluciones' 
        Then I wait until DOM is loaded  
        Then I wait until 'Spinner' is not visible    
        Then I wait until DOM is loaded  
        Then I validate 'FilterPayrollScope' its value contain 'Resoluciones'   
        Then I validate text 'Empleos Anteriores' not exist
        And I load file 'Grid' from 'Commons/Grid'
        Then I validate row containing 'Resoluciones' from grid 'General Table' to be visible
        Then I validate 'Row Table' to have length of '1' 
        When I select option 'Modificar' from ellipsis with value 'Resoluciones' and wait request 'payrollscoperesolutions'
        And I validate user to be on the 'PayrollScope modify' page
        And I load file 'PayrollScope' from 'VismaLatam/Payroll'
        Then I wait until 'Progress Spinner' not exist
        Then I set filter field 'Unassigned' with 'Empresa' 
        Then I mark checkbox containing 'Empresa'
        Then I click on 'Move To Assigned' to drag  
        Then I set filter field 'Unassigned' with 'Actividad' 
        Then I mark checkbox containing 'Actividad'
        Then I click on 'Move To Assigned' to drag  
        Then I click on 'Edit Company'
        Then I validate 'Order' its value contain '2'
        Then I click button 'Close' 
        Then I click on 'Edit Activity'
        Then I validate 'Order' its value contain '1'
        Then I click button 'Close' 
        Then I click button 'Save'
        Then I wait for '2' seconds
        And I validate user to be on the 'PayrollScope' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until 'Spinner' is not visible  
        And I load file 'FilterMenu' from 'Commons'
        Then I set filter field 'FilterPayrollScope' with 'Resoluciones' 
        Then I wait until DOM is loaded  
        And I load file 'PayrollScope' from 'VismaLatam/Payroll'
        Then I validate 'Structure Type Scope' to have text 'Actividad;Empresa'
   
        Scenario: Modify structure to Scope
        And I load file 'FilterMenu' from 'Commons'
        Given I wait request 'PayrollScopeResolutions URL' and save with alias 'payrollscoperesolutions'
        Then I set filter field 'FilterPayrollScope' with 'Resoluciones' 
        Then I wait until DOM is loaded  
        Then I wait until 'Spinner' is not visible    
        Then I wait until DOM is loaded  
        Then I validate 'FilterPayrollScope' its value contain 'Resoluciones'   
        Then I validate text 'Empleos Anteriores' not exist
        And I load file 'Grid' from 'Commons/Grid'
        Then I validate row containing 'Resoluciones' from grid 'General Table' to be visible
        Then I validate 'Row Table' to have length of '1' 
        When I select option 'Modificar' from ellipsis with value 'Resoluciones' and wait request 'payrollscoperesolutions'
        And I validate user to be on the 'PayrollScope modify' page
        And I load file 'PayrollScope' from 'VismaLatam/Payroll'
        Then I wait until 'Progress Spinner' not exist
        Then I wait until 'Progress Spinner' not exist 
        Then I click on 'Move All To Unassigned' to drag
        Then I wait for '2' seconds
        Then I click button 'Save'
        Then I wait for '2' seconds
        And I validate user to be on the 'PayrollScope' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'