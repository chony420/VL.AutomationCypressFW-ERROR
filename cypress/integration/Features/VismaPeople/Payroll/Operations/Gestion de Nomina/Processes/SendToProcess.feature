@vlpeople-flaky
Feature: Payroll -> Gestion de Nomina -> Enviar a procesar

 As a user I want to:
        - Assign employees using Organization and Hire Date filters 
        - In step 3 I launch the payroll-processing for a single employee
        - I validate the employee is processed
        - I verify PayrollProcessHasEmployees validation message is shown after trying to delete a process with employees assigned and processed
        - Unassign all employees in process
    
     
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
        Given I wait request 'Payroll SendToProcess Cypress URL' and save with alias 'payroll-sent-to-proces'
        Given I wait request 'StructureTypes URL' and save with alias 'structures'
    # Scenario: Add employees to Process
    #     Then I wait until DOM is loaded 
    #     Then I wait until 'Process Filter Skeleton' not exist
    #     Then I wait until 'Table' not have class 'skeleton-table'  
    #     And I set field 'Description' with 'Cypress Process for Automation (No Tocar)'
    #     Then I click button 'Apply Filter' 
    #     And I select option 'Modificar' from ellipsis with value 'Cypress Process for Automation (No Tocar)' and wait request 'payroll-sent-to-proces' 
    #     Then I wait until DOM is loaded 
    #     And I load file 'Processes' from 'VismaLatam/Payroll' 
    #     Then I validate text 'Configurar proceso' is visible
    #     Then I wait until 'Stepper-1-Inputs' not exist
    #     And I go to step 'Payroll-Process-Step-2'
    #     Then I wait until 'Progress Spinner' not exist
    #     And I validate button 'Incorporate Employee Clean HireTerminations Filter' is not disabled
    #     And I validate button 'Incorporate Employee Filter' is not disabled
    #     Then I click on 'HireTermination Filter Tab' 
    #     Then I click on list 'Status Payroll Process' of combobox 'Combobox Status' then select option by contain 'Alta de Colaboradores'
    #     Then I wait until DOM is loaded 
    #     Then I click on empty space 
    #      Then I validate 'Hire Terminations Panel' its attribute 'aria-expanded' contain 'true'  
    #     And I set field 'HireTermination DateFrom Input' with '01/06/2023'
    #     Then I wait until DOM is loaded 
    #     And I set field 'HireTermination DateTo Input' with '31/08/2023'
    #     Then I wait until DOM is loaded  
    #     Then I click on 'Organization Tab' 
    #     Then I wait until 'Progress Spinner' not exist
    #     Then I click on 'Structure Filter Tab'
    #     Then I click on 'Add Assets Values'
    #     Then I click on 'Structure Expansion Panel'
    #     Then I set field 'Structure Type Input' with 'Forma de Liquidación'
    #     Then I wait for backend request taged as 'structures'
    #     Then I delete last character in 'Structure Type Input'
    #     Then I click on empty space 
    #     And I set field 'Structure Type Input' with 'n'
    #     Then I force click 'Structure Option' 
    #     Then I click on empty space 
    #     Then I set field 'Structure Attribute Input' with 'Mensual' 
    #     Then I wait for '3' seconds   
    #     Then I delete last character in 'Structure Attribute Input'  
    #     Then I wait until 'Progress Spinner' not exist 
    #     Then I click autocomplete text 'Mensual'
    #     Then I click on empty space  
    #     Then I force click 'Between Date Option' 
    #     Then I wait until DOM is loaded 
    #     And I set field 'Structure StartDate Input' with '01/08/2023' 
    #     Then I click on empty space 
    #     And I set field 'Structure EndDate Input' with '31/08/2023' 
    #     Then I click on empty space 
    #     Given I wait request 'Structure Payroll Model URL' and save with alias 'payroll-model-structure'
    #     And I click button 'Incorporate Apply Filter'  
    #     Then I wait for backend request taged as 'payroll-model-structure'
    #     Then I wait until 'Progress Spinner' not exist  
    #     Then I validate 'Left Chip' not include '... - Encontrados'
    #     Then I validate content of blue chip when assigning employees
    #     Then I validate image 'Unassigned Employees' with text 'Employees not found' is visible
    #     And I click button contains 'Borrador'
    #     Then I validate user to be on the 'PayrollProcessGrid' page 
    #     And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
    #     Then I wait until DOM is loaded  

    Scenario: Send to process - One employee
        Then I wait until DOM is loaded 
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Cypress Process for Automation (No Tocar)'
        Then I click button 'Apply Filter' 
        And I select option 'Modificar' from ellipsis with value 'Cypress Process for Automation (No Tocar)' and wait request 'payroll-sent-to-proces' 
        Then I wait until DOM is loaded 
        And I load file 'Processes' from 'VismaLatam/Payroll' 
        Then I validate text 'Configurar proceso' is visible
        Then I wait until 'Stepper-1-Inputs' not exist 
        And I go to step 'Payroll-Process-Step-2' 
        Then I wait until 'Progress Spinner' not exist   
        Then I click button 'Continue Stepper Button' 
        Then I click on 'One Employee' 
        And I set field 'Search Employee' with 'Besone'
        Then I wait until DOM is loaded 
        Then I delete last character in 'Search Employee'
        Then I wait until 'Loading Text' not exist  
        Then I force click 'Structure Option'
        Then I wait until DOM is loaded 
        Then I click on empty space
        Then I validate button 'Process' is not disabled 
        And I validate 'Detailed Analysis Option Warning Description' toast of type 'Alert Warning' with message 'Al activar "Generar análisis detallado" podrás consultar cómo se obtuvieron los valores de los parámetros de los conceptos, pero ralentizará el proceso de cálculo. De no ser necesario, te recomendamos desactivarlo para obtener una mayor velocidad.' is visible
        Then I validate 'Detailed Analysis Checkbox' is checked
        Then I validate 'Detailed Log Checkbox' is not checked
        Then I 'unmark' checkbox in 'Detailed Analysis'    
        Then I wait until 'Progress Spinner' not exist   
        Then I click button 'Process'  
        Then I wait until spinner 'Spinner' not exist 
        Then I validate image 'Inprocess Image' with text 'Process Success' is visible
        And I click button 'Finish'   
        And I validate user to be on the 'PayrollProcessGrid' page
        
     Scenario: Delete process in Draft State with added employees validation
        Then I wait until DOM is loaded 
        Then I wait until 'Table' not have class 'skeleton-table'
        And I set field 'Description' with 'Cypress Process for Automation (No Tocar)'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table'  
        Then I load file 'Tablero' from 'VismaLatam/Payroll' 
        Then I validate 'Procesados Cell' to have text '1 / 5 Colaboradores'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Process for Automation (No Tocar)' and wait request 'payroll-sent-to-proces' 
        Then I click Modal button 'Accept'
        And I validate 'Employees Assigned in Process Message' toast of type 'Danger' with message '¡Atención! El proceso tiene colaboradores incorporados, no se permite eliminar.' is visible
    
    Scenario: Validate Processed Employee 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I wait until 'Table' not have class 'skeleton-table' 
        And I set field 'Description' with 'Cypress Process for Automation (No Tocar)' 
        Then I click button 'Apply Filter'
        And I load file 'Tablero' from 'VismaLatam/Payroll' 
        And I select option 'Ver tablero' from ellipsis with value 'Cypress Process for Automation (No Tocar)' and wait request 'payroll-sent-to-proces'   
        Then I validate 'Tablero Title' is a 'H1' with text 'Tablero de nómina'
        Then I validate user to be on the 'PayrollBoard' page
        Then I wait until 'Nombre Colaborador' is visible
        Then I click on 'Processed Employees Filter' 
        Then I click on 'Checkbox Processed Filter' 
        When I click on 'Apply Processed Filter'  
        And I load file 'Processes' from 'VismaLatam/Payroll'
        Then I wait until 'Progress Spinner' not exist
        When I click on 'Employee Description' 
        Then I validate 'Status Employee' to have text 'Procesado' 
  Scenario: Unassign
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I wait until 'Table' not have class 'skeleton-table' 
        And I set field 'Description' with 'Cypress Process for Automation (No Tocar)'
        Then I click button 'Apply Filter' 
        And I select option 'Modificar' from ellipsis with value 'Cypress Process for Automation (No Tocar)' and wait request 'payroll-sent-to-proces' 
        Then I wait until DOM is loaded 
        Then I validate text 'Configurar proceso' is visible
        And I load file 'Processes' from 'VismaLatam/Payroll' 
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait until DOM is loaded 
        And I go to step 'Payroll-Process-Step-2'
        Then I validate button 'MoveAllUnassigned' is not disabled
        Then I click button 'MoveAllUnassigned'
        Then I wait until 'Progress Spinner' not exist
        And I click button contains 'Borrador'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded 
        Then I wait for '15' seconds 
        Then I wait until 'Process Filter Skeleton' not exist

    #     Scenario: Send to process - All employees
    #     Then I click button 'Create'
    #     Then I wait until 'Spinner' is not visible
    #     And I set field 'Period Input' with 'Diciembre 2022'
    #     And I click on contain 'Diciembre 2022'
    #     And I set field 'Model Input' with 'Mensuales'
    #     And I click on contain 'Mensuales'  
    #     And I set field 'Description' with 'All Employees Cypress Model Automation'
    #     And I set field 'Company Input' with 'Automation'
    #     And I click on contain 'Automation'
    #     And I set field 'Payment Date Input' with '31/12/2022'
    #     Then I click button 'Save Button' 
    #     Then I wait until DOM is loaded 
    #     Then I validate text 'Configurar proceso' is visible
    #     Then I wait until 'Stepper-1-Inputs' not exist 
    #     Then I go to step 'Payroll-Process-Step-2' and intercept graphql 
    #     Then I click on 'HireTermination Filter Tab' 
    #      Then I validate 'Hire Terminations Panel' its attribute 'aria-expanded' contain 'true' 
    #     Then I wait until 'Progress Spinner' not exist
    #     Then I click on list 'Status Payroll Process' of combobox 'Combobox Status' then select option by contain 'Alta de Colaboradores'
    #     Then I wait until DOM is loaded 
    #     Then I click on empty space 
    #      Then I validate 'Hire Terminations Panel' its attribute 'aria-expanded' contain 'true' 
    #     And I set field 'HireTermination DateFrom Input' with '01/01/2023'
    #     Then I wait until DOM is loaded 
    #     And I set field 'HireTermination DateTo Input' with '31/05/2023'
    #     Then I wait until DOM is loaded  
    #     Then I click on 'Organization Tab' 
    #     Then I wait until 'Progress Spinner' not exist
    #     Then I click on 'Structure Filter Tab' 
    #     Then I click on empty space 
    #     Then I wait until 'Progress Spinner' not exist 
    #     Then I click on 'Between Date Option'  
    #     And I set field 'Organization StartDate' with '01/01/2023'  
    #     And I set field 'Organization EndDate' with '31/03/2023' 
    #     Then I wait for '3' seconds 
    #      Then I set field 'StructureType Payroll Process' with 'Empresa' 
    #     Then I wait until 'Progress Spinner' not exist
    #     Then I delete last character in 'StructureType Payroll Process'
    #     Then I force click 'Structure Option'
    #     Then I wait until DOM is loaded 
    #     Then I set field 'Structure Payroll Process' with 'VISMA PEOPLE'  
    #     Then I delete last character in 'Structure Payroll Process'  
    #     Then I wait until 'Progress Spinner' not exist   
    #     Then I force click 'Structure Option' 
    #     Then I wait until 'Organization' request 'Structure URL' status is OK
    #     And I click button 'Incorporate Apply Filter' 
    #     Then I wait until DOM is loaded 
    #     Then I validate content of blue chip when assigning employees
    #      Then I validate image 'Unassigned Employees' with text 'Employees not found' is visible
    #     Then I click button 'Continue Stepper Button'
    #     Then I wait until DOM is loaded 
    #     Then I click on 'All Employees' 
    #      Then I click on empty space
    #      Then I validate button 'Process' is not disabled  
    #      Then I wait until DOM is loaded  
    #     Then I wait until 'Progress Spinner' not exist  
    #     Then I wait until DOM is loaded  
    #     And I validate user to be on the 'PayrollProcessGrid' page
    #     Then I click button 'Process' 
    #     Then I save id from 'payroll-processing URL'
    #     Then I wait until DOM is loaded 
    #     Then I wait until spinner 'Spinner' not exist 
    #      Then I validate image 'Inprocess Image' with text 'Process Success' is visible
    #    And I click button 'Finish'  
    #    Then I wait for '15' seconds    
    #     And I validate user to be on the 'PayrollProcessGrid' page
    #     Then I click on 'Agent'
    #     Then I click on 'Update'
    # Scenario: Unassign all employees
    #     Then I wait until DOM is loaded 
    #     Then I wait until 'Process Filter Skeleton' not exist
    #     And I set field 'Description' with 'All Employees Cypress Model Automation'
    #     Then I wait until DOM is loaded 
    #     Then I click button 'Apply Filter'  
    #     Then I wait until 'Table' not have class 'skeleton-table'
    #     And I double click 'All Employees Cypress Model Automation' 
    #     Then I wait until DOM is loaded 
    #     Then I validate text 'Configurar proceso' is visible
    #     Then I wait until 'Stepper-1-Inputs' not exist
    #     And I go to step 'Payroll-Process-Step-2'
    #     Then I validate button 'MoveAllUnassigned' is not disabled
    #     Then I click button 'MoveAllUnassigned'
    #     Then I wait until 'Progress Spinner' not exist
    #     And I click button contains 'Borrador'
    #     And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
    #     Then I wait until DOM is loaded 
    #     Then I wait for '15' seconds 
    #     Then I wait until 'Process Filter Skeleton' not exist

    #  Scenario: Delete process in Draft State     
    #    And I validate user to be on the 'PayrollProcessGrid' page
    #     And I set field 'Description' with 'All Employees Cypress Model Automation'
    #     Then I wait until DOM is loaded 
    #     Then I click button 'Apply Filter'  
    #     Then I validate user to be on the 'PayrollProcessGrid' page  
    #     Then I wait until DOM is loaded 
    #     Then I wait until 'Table' not have class 'skeleton-table'
    #     Then I wait until 'Process Filter Skeleton' not exist
    #     Then I select option 'Eliminar' from ellipsis with value 'All Employees Cypress Model Automation'
    #     Then I wait until DOM is loaded  
    #     Then I click Modal button 'Accept'
    #     And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'