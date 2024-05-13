@vlpeople-flaky
Feature: Payroll -> Gestion de Nomina -> Procesos

    As a user I want to:
        - Create payroll processes in draft state
        - Modify payroll processes in draft state
        - Validate ellipsis options by different process states
        - Validate I can't delete payroll process in draft state with added employees
        - Validate I can't unassign employees in a process that have payment order
        - Duplicate payroll process in Draft state
        - Delete payroll processes in draft state
    
     
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
        Given I wait request 'Structure URL' and save with alias 'structures'
        Given I wait request 'Models URL' and save with alias 'models'
        Given I wait request 'Payroll Process Payment URL' and save with alias 'payroll-process-payment'
        Given I wait request 'Payroll Process Cypress URL' and save with alias 'payroll-process-cypress'
        Given I wait request 'Payroll Process Duplicate Cypress URL' and save with alias 'payroll-process-duplicate-cypress'
        Given I wait request 'Payroll Processes Navigation URL' and save with alias 'payroll-process-navigation'

        Scenario: Grid - Ellipsis Options 
            And I validate user to be on the 'PayrollProcessGrid' page 
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I set field 'Description' with 'Estado Borrador Cypress (No Tocar)'  
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Estado Borrador Cypress (No Tocar)' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'DraftStateWithoutEmployees'    
            Then I click on empty space
            Then I clean field 'Description'
            Then I set field 'Description' with 'Estado Borrador con Empleados Cypress (No Tocar)' 
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Estado Borrador con Empleados Cypress (No Tocar)' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'DraftStateWithEmployees'
            Then I click on empty space
            Then I clean field 'Description'
            Then I set field 'Description' with 'Estado Procesado con Empleados Cypress (No Tocar)' 
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Estado Procesado con Empleados Cypress (No Tocar)' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'ProcessedStateWithEmployees'
            Then I click on empty space
            Then I clean field 'Description'
            Then I set field 'Description' with 'Estado Aprobado Provisorio Cypress (No Tocar)' 
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Estado Aprobado Provisorio Cypress (No Tocar)' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'ProcessedStateWithEmployees'
            Then I click on empty space
            Then I clean field 'Description'
            Then I set field 'Description' with 'Prueba Incorporar Colaboradores' 
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Prueba Incorporar Colaboradores' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'ProvisionalApprovedState'
            Then I click on empty space
            Then I clean field 'Description'
            Then I set field 'Description' with 'Tablero estados de Proceso' 
            Then I click button 'Apply Filter' 
            Then I wait until 'Table' not have class 'skeleton-table'
            And I click 'ellipsis' on row containing 'Tablero estados de Proceso' from 'Processes' grid
            Then I wait until 'Table' not have class 'skeleton-table'
            Then I validate options in ellipsis 'DefinitiveApprovedState'
      
    Scenario: Navegacion En Borrador
        Then I click button 'Create'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'CreateProcess' page  
        When I go to step 'Payroll-Process-Step-2'
        Then I validate 'Add Employees Form' is not visible
        And I validate user to be on the 'CreateProcess' page
        Then I click button 'Return'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'PayrollProcessGrid' page
        Then I click button 'Create'
        Then I wait until 'Spinner' is not visible
        Then I click on contain 'Cancelar'
        And I validate user to be on the 'PayrollProcessGrid' page
        Then I click button 'Previouspage'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Operations' page
        Then I wait until 'Spinner' is not visible
        And I go to card 'Payroll Management'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'PayrollProcessGrid' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Operations'
        And I go to card 'Payroll Management' 
        And I load file 'Processes' from 'VismaLatam/Payroll' 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I set field 'Description' with 'Navegacion Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait for backend request taged as 'payroll-process-navigation'
        Then I select option 'Modificar' from ellipsis with value 'Navegacion Cypress - No Tocar'   
        Then I validate user to be on the 'DraftProcess' page 
        Then I click button 'Return'
        Then I validate user to be on the 'PayrollProcessGrid' page  
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait for backend request taged as 'payroll-process-navigation'
        Then I select option 'Modificar' from ellipsis with value 'Navegacion Cypress - No Tocar'   
        Then I validate user to be on the 'DraftProcess' page 
        Then I validate text 'Configurar' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2'  
        Then I validate text 'Colaboradores' is visible
        Then I wait until 'Progress Spinner' not exist 
        And I go to step 'Payroll-Process-Step-1' 
        Then I click on contain 'Continuar' 
        Then I validate text 'Colaboradores' is visible
        Then I wait until 'Progress Spinner' not exist 
        Then I click on contain 'Anterior'
        Then I click on contain 'Cancelar' 
        Then I validate user to be on the 'PayrollProcessGrid' page   
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait for backend request taged as 'payroll-process-navigation'
        Then I double click 'Navegacion Cypress'
        Then I clean field 'Description'
        Then I clean field 'Payment Date Input' 
        And I set field 'Description' with 'Navegacion Cypress - No Tocar'
        And I set field 'Payment Date Input' with '31/12/2031'  
        Then I click button 'Arrow Stepper Button Configuration Process Navigation'   
        Then I validate user to be on the 'PayrollProcessGrid' page 
     
    Scenario: Create process in Draft State
        Then I click button 'Create'
        Then I wait until 'Spinner' is not visible
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait for backend request taged as 'models'
        Then I wait for backend request taged as 'structures'
        And I set field 'Period Input' with 'Diciembre 2022'
        And I click on contain 'Diciembre 2022'
        And I set field 'Model Input' with 'Mensuales'
        And I click on contain 'Mensuales'  
        And I set field 'Description' with 'Cypress Process Automation'
        And I set field 'Company Input' with 'Automation'
        And I click on contain 'Automation'
        And I set field 'Payment Date Input' with '31/12/2022' 
        Then I click button 'Arrow Stepper Button Configuration Process' 
        Then I click on contain 'Guardar borrador'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Cypress Process Automation'
        Then I click button 'Apply Filter' 
        And I double click 'Cypress Process Automation'
        Then I validate 'Model' to have text 'Mensuales' 
        Then I validate 'Description' its value contain 'Cypress Process Automation' 
        Then I validate 'Company' to have text 'Automation' 
        Then I validate 'Payment Date Input' its value contain '31/12/2022' 

    Scenario: Modify process in Draft State
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Cypress Process Automation'
        Then I click button 'Apply Filter' 
        Then I select option 'Modificar' from ellipsis with value 'Cypress Process Automation' and wait request 'payroll-process-cypress'
        Then I wait until 'Stepper-1-Inputs' not exist
        Then I wait for backend request taged as 'models'
        Then I wait for backend request taged as 'structures'
        And I clear field 'Model Input'
        And I set field 'Model Input' with '1ra. Quincena'
        And I click on contain '1ra. Quincena'
        And I clear field 'Payment Date Input'
        And I set field 'Payment Date Input' with '31/12/2022' 
        Then I click button 'Arrow Stepper Button Configuration Process' 
        Then I click on contain 'Guardar borrador'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Cypress Process Automation'
        Then I click button 'Apply Filter' 
        And I double click 'Cypress Process Automation'
        Then I validate 'Model' to have text '1ra. Quincena' 
        Then I validate 'Payment Date Input' its value contain '31/12/2022' 
        Then I validate 'Model Span' to have text '1ra. Quincena' 
       
    Scenario: Delete process in Draft State with added employees and with payment order validation
        Then I validate user to be on the 'PayrollProcessGrid' page  
        Then I wait until DOM is loaded 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I wait until 'Process Filter Skeleton' not exist
        And I validate user to be on the 'PayrollProcessGrid' page 
        And I set field 'Description' with 'Prueba Pago(No Tocar)'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter'  
        Then I select option 'Modificar' from ellipsis with value 'Prueba Pago(No Tocar)' and wait request 'payroll-process-payment'
        Then I wait until DOM is loaded   
        Then I validate text 'Configurar' is visible
        Then I wait until 'Stepper-1-Inputs' not exist
        And I go to step 'Payroll-Process-Step-2'
        Then I validate button 'MoveAllUnassigned' is not disabled
        Then I click button 'MoveAllUnassigned' 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I validate 'Left Chip' not include '... - Encontrados'
        Then I click button 'Arrow Stepper Button Employees'  
        Then I force click on contain 'Guardar y cerrar'
        Then I click Modal button 'Accept'
        And I validate 'Employees With Payment Order in Process Message' toast of type 'Danger Employees' with message 'No se permite desincorporar colaboradores con pedidos de pago cargados.' is visible
        Then I click on contain 'Anterior'
        Then I click on contain 'Cancelar'
        Then I wait until 'Table' not have class 'skeleton-table'
        And I wait for backend request taged as 'payroll-process-payment'
        Then I clean field 'Prueba Pago(No Tocar)'
        And I set field 'Description' with 'Prueba Pago(No Tocar)'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I select option 'Eliminar' from ellipsis with value 'Prueba Pago(No Tocar)' and wait request 'payroll-process-payment'
        Then I click Modal button 'Accept'
        And I validate 'Employees Assigned in Process Message' toast of type 'Danger' with message '¡Atención! El proceso tiene colaboradores incorporados, no se permite eliminar.' is visible
    
    Scenario: Duplicate process in Draft State
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Cypress Process Automation'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter'  
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I select option 'Duplicar' from ellipsis with value 'Cypress Process Automation' and wait request 'payroll-process-cypress'
        Then I validate user to be on the 'DuplicateProcess' page  
        Then I validate 'Payment Date Input' its value contain '31/12/2022' 
        Then I validate 'Model Span' to have text '1ra. Quincena'   
        Then I validate 'Period Span' to have text 'Diciembre 2022'   
        Then I validate 'Description' its value contain 'Copia de Cypress Process Automation'  
        Then I force click button 'Arrow Stepper Button Configuration Process' 
        Then I click on contain 'Guardar borrador'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist 
        Then I validate user to be on the 'PayrollProcessGrid' page  


    Scenario: Delete process in Draft State
        Then I wait until DOM is loaded 
        Then I wait until 'Process Filter Skeleton' not exist
        And I set field 'Description' with 'Copia de Cypress Process Automation'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter'  
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I select option 'Eliminar' from ellipsis with value 'Copia de Cypress Process Automation' and wait request 'payroll-process-duplicate-cypress'
        Then I wait until DOM is loaded 
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I clean field 'Description'
        And I set field 'Description' with 'Cypress Process Automation'
        Then I wait until DOM is loaded 
        Then I click button 'Apply Filter'  
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I wait until 'Process Filter Skeleton' not exist
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Process Automation' and wait request 'payroll-process-cypress'   
        Then I wait until DOM is loaded 
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        