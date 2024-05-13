@vlpeople-flaky

Feature: Payroll -> Anticipos solicitados

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check Validation at delete of Salary Advance included in a process
        - Delete Salary Advance
        - Configure an advanced payment
        - Valide toast while modifying an advance payment
        - Create, modify and delete an advance payment
        
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
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I go to card 'SalaryAdvance'
        Then I wait until DOM is loaded
        And I go to card 'AdvancePaymentRequested'
        And I load file 'AdvancePaymentRequested' from 'VismaLatam/Payroll'
        Given I wait request 'AdvancePaymentRequested URL' and save with alias 'AdvancePaymentRequested'
        Given I wait request 'Configure AdvancePaymentRequested URL' and save with alias 'Configure AdvancePaymentRequested'

    Scenario: Navigation
        And I validate user to be on the 'AdvancePaymentRequested' page 
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'SalaryAdvanceType' page
        Then I wait until DOM is loaded
        And I go to card 'AdvancePaymentRequested'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AdvancePaymentRequested' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        Then I wait until DOM is loaded
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I go to card 'SalaryAdvance'
        Then I wait until DOM is loaded
        And I go to card 'AdvancePaymentRequested'
        Then I wait until DOM is loaded
        Then I click breadcrumb 'Advanceds'
        Then I wait until DOM is loaded
        And I go to card 'AdvancePaymentRequested'
        Then I wait until DOM is loaded

    Scenario: Filter
        And I load file 'FilterMenu' from 'Commons'
        Then I validate chip 'Chip IdPeriodDiscount' contains value 'Todos'
        Then I wait until DOM is loaded
        Then I validate chip 'Chip IdSalaryAdvanceType' contains value 'Todos'
        Then I wait until DOM is loaded
        Then I set field 'LastName' with 'CYPRESS'
        Then I wait until DOM is loaded
        Then I set field 'FirstName' with 'ANTICIPOS'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '2'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'tst2'
        Then I wait until DOM is loaded
        Then I click on filter list 'PeriodDiscount' then select option 'Diciembre 2030'
        Then I wait until DOM is loaded
        Then I click on filter list 'SalaryAdvanceType' then select option 'Capacitaciones'
        Then I click button 'Apply Filter'
        And I load file 'Chip' from 'Commons'
        Then I validate chip 'Chip LastName' contains value 'Apellido: CYPRESS'
        Then I validate chip 'Chip FistName' contains value 'Nombre: ANTICIPOS'
        Then I validate chip 'Chip FileNumber' contains value 'Legajo: 2'
        Then I validate chip 'Chip Description' contains value 'tst2'
        Then I validate chip 'Chip IdPeriodDiscount' contains value 'Diciembre 2030'
        Then I validate chip 'Chip IdSalaryAdvanceType' contains value 'Capacitaciones'
        Then I validate content of blue chip with '1' results
        Then I click on 'Chip LastName'
        Then I click on 'Chip FistName'
        Then I click on 'Chip FileNumber'
        Then I click on 'Chip Description'
        Then I click on 'Chip IdPeriodDiscount'
        Then I click on 'Chip IdSalaryAdvanceType'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'CYPRESS'
        Then I wait until DOM is loaded
        Then I set field 'FirstName' with 'ANTICIPOS'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '2'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'tst2'
        Then I wait until DOM is loaded
        Then I click on filter list 'PeriodDiscount' then select option 'Diciembre 2030'
        Then I wait until DOM is loaded
        Then I click on filter list 'SalaryAdvanceType' then select option 'Capacitaciones'
        Then I click button 'Apply Filter'
        Then I click on 'Clear Filter'
        Then I set field 'LastName' with '11'
        Then I click button 'Apply Filter'
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        Then I validate content of blue chip with '0' results
        Then I wait until DOM is loaded        
        Then I click on 'PersonalInformation Panel'
        Then I validate 'PersonalInformation Filters' is not visible
        And I validate 'PersonalInformationPanelHeader' orientation is 0
        Then I click on 'PersonalInformation Panel'
        Then I validate 'PersonalInformation Filters' is visible
        And I validate 'PersonalInformationPanelHeader' orientation is 180
        Then I click on 'Advance Panel'
        Then I validate 'Advance Filters' is not visible
        And I validate 'AdvancePanelHeader' orientation is 0
        Then I click on 'Advance Panel'
        Then I validate 'Advance Filters' is visible
        And I validate 'AdvancePanelHeader' orientation is 180
        Then I click on 'ShowFilter'
        Then I validate 'AdvancePaymentRequestedFilterVertical' is not visible
        Then I click on 'ShowFilter'
        Then I validate 'AdvancePaymentRequestedFilterVertical' is visible
       
    Scenario: Visualize and validate an approved payment requested
        
        Then I set field 'LastName' with 'CYPRESS'
        Then I set field 'FirstName' with 'ANTICIPOS'
        Then I set field 'FileNumber' with '2'
        Then I set field 'Description' with 'Valesss'
        Then I click on filter list 'SalaryAdvanceType' then select option 'Adelanto de vacaciones'
        Then I click button 'Apply Filter'
        Then I wait until 'Payroll Skeleton' not exist
        #Then I hover 'IdProcess Column' and 'Proceso: 61492' is visible
        Then I select option 'Visualizar' from ellipsis menu inside material grid with value 'CYPRESS, ANTICIPOS'
        And I validate user to be on the 'AdvancePaymentRequested View Employee' page 
        Then I wait until 'Payroll Skeleton' not exist
        Then I clear field 'Description'
        Then I set field 'Description' with 'Cypress'
        Then I set field 'Salary Advance Type Wrapper' with 'Capacitaciones'
        And I click on contain 'Capacitaciones'
        Then I clear field 'Request Date'
        Then I set field 'Request Date' with '01/01/2031'   
        Then I clear field 'Planned Date'
        Then I set field 'Planned Date' with '31/01/2031' 
        Then I set field 'Period Discount' with 'Enero 2031'
        And I click on contain 'Enero 2031'
        Then I set field 'Currency' with 'Dólar'
        And I click on contain 'Dólar'
        Then I clear field 'Amount'
        Then I set field 'Amount' with '130'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate 'Advance Payment Requested Cant Be Modified' toast of type 'Danger' with message 'El anticipo fue procesado desde nómina, no se permite modificar.' is visible
        Then I click on 'Icon close'

    Scenario: Configure an advanced payment
        Then I hover 'Configuration' and 'Configuración' is visible
        Then I click on 'Configuration'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I click on 'Modal Close'
        Then I click on 'Configuration'
        Then I validate 'Configure Advanced Payment Windows' is visible
        Then I wait until DOM is loaded
        Then I click on 'Modal Close'
        Then I click on 'Configuration'
        Then I click on 'Modal Close'
        Then I click on 'Configuration'
        Then I intercept 'Configure AdvancePaymentRequested URL' and stub response 'Configure AdvancePaymentRequested'
        Then I wait for '5' seconds
        Then I clear field 'Yearly Quantity'
        Then I clear field 'Maximum Limit'        
        Then I set field 'Yearly Quantity' with '50'
        Then I validate button 'Save Config' is disabled
        Then I click Modal button 'Close'
        Then I click on 'Configuration'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I click Modal button 'Modal Cancel'
        Then I click on 'Configuration'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I click on 'Accumulator Wrapper'
        Then I force click 'Acuerdos Anteriores'
        Then I clear field 'Maximum Limit'
        Then I clear field 'Yearly Quantity' 
        Then I validate 'Maximum Limit Validation' to have text 'Campo obligatorio'
        Then I set field 'Maximum Limit' with '0'
        Then I validate 'Maximum Limit Validation' to have text 'Cantidad mínima:  1'
        Then I clear field 'Maximum Limit'
        Then I set field 'Maximum Limit' with '101'
        Then I validate 'Maximum Limit Validation' to have text 'Cantidad máxima: 100'
        Then I clear field 'Maximum Limit'
        Then I set field 'Maximum Limit' with '50'         
        Then I set field 'Yearly Quantity' with '0'
        Then I validate 'Yearly Quantity Validation' to have text 'Cantidad mínima:  1'
        Then I clear field 'Yearly Quantity'
        Then I set field 'Yearly Quantity' with '101'
        Then I validate 'Yearly Quantity Validation' to have text 'Cantidad máxima: 100'
        Then I clear field 'Yearly Quantity'
        Then I set field 'Yearly Quantity' with '50'
        Then I 'mark' checkbox in 'Is Restrictive'   
        Then I validate button 'Save' is not disabled
        Then I click Modal button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Modify config of an advanced payment
        Then I click on 'Configuration'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I click on 'Accumulator Wrapper'
        Then I force click 'Acumulador 1'
        Then I clear field 'Maximum Limit'
        Then I set field 'Maximum Limit' with '75'
        Then I clear field 'Yearly Quantity'
        Then I set field 'Yearly Quantity' with '30'
        Then I 'unmark' checkbox in 'Is Restrictive'
        Then I click Modal button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt' 

     Scenario: Create an advanced payment
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'SalaryAdvanceCreate' page        
        Then I set field 'Employee' with 'Asd'
        Then I clear field 'Employee'
        Then I validate 'Employee Validation' to have text 'Campo obligatorio'
        Then I set field 'Employee' with '39795'
        And I wait for '2' seconds
        And I click on contain '39795 - FE Cypress (No Borrar)'
        Then I set field 'Description' with 'Cypress test'
        Then I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        Then I set field 'Description' with 'Cypress test'
        Then I click on 'Salary Advance Type Wrapper'
        Then I click on empty space
        Then I validate 'Salary Advance Type Validation' to have text 'Campo obligatorio'
        Then I set field 'Salary Advance Type Wrapper' with 'Nuevo'
        #Agregar step para validar tooltip de Adelantos de Sueldos
        And I click on contain 'Nuevo'
        Then I set field 'Request Date' with '01/01/2031'
        Then I clear field 'Request Date'
        Then I validate 'Request Date Validation' to have text 'Campo obligatorio'
        Then I set field 'Request Date' with '01/01/2031'
        Then I set field 'Planned Date' with '31/01/2031'
        Then I clear field 'Planned Date'
        Then I validate 'Planned Date Validation' to have text 'Campo obligatorio'
        Then I set field 'Planned Date' with '31/01/2031'
        Then I click on 'Period Discount'
        Then I click on empty space
        Then I validate 'Period Discount Validation' to have text 'Campo obligatorio'
        Then I set field 'Period Discount' with 'Enero 2031'
        #Agregar step para validar tooltip de Periodo de descuento
        And I click on contain 'Enero 2031'
        Then I click on 'Payment Percentage Option'
        Then I click on 'Accumulator Id Wrapper'
        Then I click on empty space
        Then I validate 'Accumulator Validation' to have text 'Campo obligatorio'
        Then I set field 'AccumulatorId' with 'Neto'
        And I click on contain 'Neto'
        Then I set field 'Payroll Period' with 'Diciembre 2030'
        And I click on contain 'Diciembre 2030'
        Then I set field 'Percentage' with '15'
        Then I clear field 'Percentage'
        Then I validate 'Percentage Validation' to have text 'Campo obligatorio'
        Then I set field 'Percentage' with '15'
        Then I click on 'Amount Option'    
        Then I validate button 'Save Config' is disabled
        Then I set field 'Amount' with '5500'
        Then I clear field 'Amount'
        Then I validate 'Amount Validation' to have text 'Campo obligatorio'
        Then I set field 'Amount' with '35000'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'
        
    Scenario: Modify and validate toasts when modifying an advanced payment

        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait for '5' seconds
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Cypress (No Borrar), FE'
        Then I wait until 'Salary Advance Skeleton' not exist
        Then I set field 'Salary Advance Type Wrapper' with 'Capacitaciones'
        And I click on contain 'Capacitaciones'
        Then I clear field 'Request Date'
        Then I set field 'Request Date' with '01/12/2020'
        Then I clear field 'Planned Date'
        Then I set field 'Planned Date' with '31/12/2020'
        Then I set field 'Period Discount' with 'Diciembre 2030'
        And I click on contain 'Diciembre 2030'
        Then I set field 'Currency' with 'Peso Uruguayo'
        And I click on contain 'Peso Uruguayo'
        Then I click on 'Payment Percentage Option'
        Then I set field 'AccumulatorId' with 'Neto'
        And I click on contain 'Neto'
        Then I set field 'Payroll Period' with 'Enero 2031'
        And I click on contain 'Enero 2031'
        Then I set field 'Percentage' with '15'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate 'No Accumulator For That Period' toast of type 'Danger' with message 'No pudimos calcular el porcentaje debido a que en el período anterior al indicado, el acumulador seleccionado no existe.' is visible
        Then I click on 'Icon close'
        Then I set field 'Salary Advance Type Wrapper' with 'Monto Fijo'
        And I click on contain 'Monto Fijo'
        And I validate 'Fixed Amount Warning' toast of type 'Warning' with message 'El tipo de anticipo seleccionado posee un monto fijo configurado.' is visible
        Then I click on 'Icon close'
        And I click on disabled 'Amount'

     Scenario: Modify an advanced payment

        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Cypress (No Borrar), FE'
        Then I wait until 'Salary Advance Skeleton' not exist
        Then I set field 'Salary Advance Type Wrapper' with 'Capacitaciones'
        And I click on contain 'Capacitaciones'
        Then I clear field 'Request Date'
        Then I set field 'Request Date' with '01/12/2020'
        Then I clear field 'Planned Date'
        Then I set field 'Planned Date' with '31/12/2020'
        Then I set field 'Period Discount' with 'Diciembre 2030'
        And I click on contain 'Diciembre 2030'
        Then I set field 'Currency' with 'Peso Uruguayo'
        And I click on contain 'Peso Uruguayo'
        Then I set field 'Amount' with '50000'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Delete an advanced payment

        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress (No Borrar), FE' 
        Then I wait until DOM is loaded 
        Then I click button 'Cancel'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress (No Borrar), FE' 
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'