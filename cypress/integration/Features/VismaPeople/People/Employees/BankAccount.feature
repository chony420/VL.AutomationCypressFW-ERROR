@vlpeople-flaky
Feature: People -> Bank Accounts

 As a user I want to:
        - Create, modify and Delete Bank Account
    Background: 
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Given I wait request 'Nacionalities URL' and save with alias 'nacionalitiesRequest'
        Given I wait request 'Country URL' and save with alias 'countryRequest'
        Given I wait request 'Documents URL' and save with alias 'documentTypesRequest'
        Given I wait request 'BanksEmployee URL' and save with alias 'banks'
        Given I wait request 'BanksRoot URL' and save with alias 'bankroot'
        Given I wait request 'Geolocation URL' and save with alias 'zoneRequest' 
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'  
        And I load file 'FilterMenu' from 'Commons'
      Scenario: Bank Account Create 
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886' 
        Then I wait for request 'banks' and navigate to tab parent element containing 'Bancos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'BanksEmployee' from 'VismaLatam/People' 
        Then I click on 'Add Bank Account' 
        Then I wait until 'Modal Bank Account Employee' is not visible
        And I click on list 'Payment Method' then type option 'CAJA DE AHORRO' 
        And I click on list 'Type Payment' then type option 'Sueldo'   
        And I click on list 'Bank' then type option 'FRANCES(368)'   
        And I click on list 'Company Bank Account' then type option 'NACION'   
        And I set field 'Bank Account Number' with '321-52168-8'
        And I set field 'Company Branch' with '321'
        And I set field 'Code Company Branch' with '8'   
        Then I click button 'Save bank'  
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'     
     Scenario: Bank Account Modify 
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886' 
        Then I wait for request 'banks' and navigate to tab parent element containing 'Bancos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'BanksEmployee' from 'VismaLatam/People'  
        Then I click on 'Options' 
        Then I click on 'Modify'
        Then I wait until spinner 'Loading Text' not exist
        Then I wait for backend request taged as 'zoneRequest'
        Then I set field 'cbuNumber' with '5345353462462331335578'   
        Then I click button 'Save bank' 
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'         
      Scenario: Bank Account Delete
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886' 
        Then I wait for request 'banks' and navigate to tab parent element containing 'Bancos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'BanksEmployee' from 'VismaLatam/People' 
        Then I click on 'Options' 
        Then I click on 'Delete'   
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'     

      Scenario: Validations at Creation
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886' 
        Then I wait for request 'banks' and navigate to tab parent element containing 'Bancos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'BanksEmployee' from 'VismaLatam/People'  
        Then I click on 'Add Bank Account' 
        Then I wait until 'Modal Bank Account Employee' is not visible
        And I click on list 'Payment Method' then type option 'CAJA DE AHORRO' 
        And I click on list 'Type Payment' then type option 'Sueldo'   
        And I click on list 'Bank' then type option 'FRANCES(368)'   
        And I click on list 'Company Bank Account' then type option 'NACION'   
        And I set field 'Bank Account Number' with '321-52168-8'
        And I set field 'Company Branch' with '321'
        And I set field 'Code Company Branch' with '8'   
        Then I clean field 'Payment Percentage'
        And I set field 'Payment Percentage' with '150'    
        Then I validate 'Payment Percentage Validation' to have text 'Cantidad máxima: 100' 
        Then I set field 'cbuNumber' with '53'   
        Then I validate 'CBU Number Validation' to have text 'El mínimo de caracteres es de 22' 
        Then I validate button 'Save bank' is disabled
        Then I clean field 'Payment Percentage'
        And I set field 'Payment Percentage' with '90'   
        Then I clean field 'cbuNumber'
        Then I set field 'cbuNumber' with '5351651516553165154562'   
        Then I validate button 'Save bank' is not disabled
        Then I click button 'Save bank'  
        And I validate 'Account Should Be 100 percent' toast of type 'Warning' with message 'Las cuentas activas de tipo sueldo deben sumar un porcentaje del 100%.' is visible
        Then I click on 'Add Bank Account'   
        Then I wait until 'Modal Bank Account Employee' is not visible
        And I click on list 'Payment Method' then type option 'CAJA DE AHORRO' 
        And I click on list 'Type Payment' then type option 'Sueldo'   
        And I click on list 'Bank' then type option 'Banco de Cordoba(3276)'   
        And I click on list 'Company Bank Account' then type option 'NACION'   
        And I set field 'Bank Account Number' with '35-526168-8'
        And I set field 'Company Branch' with '131'
        And I set field 'Code Company Branch' with '77'    
        Then I click button 'Save bank'  
        And I validate 'Percentage Is Invalid' toast of type 'Danger' with message 'Las cuentas activas de tipo sueldo deben sumar un porcentaje del 100%.' is visible
       
       Scenario: Validations at Modify
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886' 
        Then I wait for request 'banks' and navigate to tab parent element containing 'Bancos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'BanksEmployee' from 'VismaLatam/People'   
        Then I click on 'Options'
        Then I click on 'Modify'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I wait for backend request taged as 'bankroot'
        Then I clean field 'Payment Percentage'
        And I set field 'Payment Percentage' with '90'     
        Then I click button 'Save bank'    
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'  
        Then I click on 'Add Bank Account' 
        Then I wait until 'Modal Bank Account Employee' is not visible
        And I click on list 'Payment Method' then type option 'CAJA DE AHORRO' 
        And I click on list 'Type Payment' then type option 'Sueldo'   
        And I click on list 'Bank' then type option 'GALICIA(381)'   
        And I click on list 'Company Bank Account' then type option 'NACION'   
        And I set field 'Bank Account Number' with '821-63168-8'
        And I set field 'Company Branch' with '531'
        And I set field 'Code Company Branch' with '4'  
        Then I clean field 'Payment Percentage'
        And I set field 'Payment Percentage' with '10'   
        Then I click button 'Save bank' 
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        Then I wait until spinner 'Loading Text' not exist     
        Then I wait for backend request taged as 'banks'
        Then I wait until 'Options 2' is visible
        Then I click on 'Options 1'
        Then I click on 'Modify'
        Then I wait until spinner 'Loading Text' not exist
        Then I wait for backend request taged as 'zoneRequest' 
        Then I clean field 'Payment Percentage'
        And I set field 'Payment Percentage' with '100'      
        Then I click button 'Save bank'   
        And I validate 'Percentage Is Invalid To Update' toast of type 'Danger' with message 'El porcentaje total de las cuentas activas de tipo sueldo debe sumar el 100%. Modificá el valor de las cuentas existentes o creá una nueva sin sobrepasar el tope máximo.' is visible
        Then I click on 'Options 1'
        Then I click on 'Inactivate'
        Then I wait until spinner 'Loading Text' not exist 
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'  
        And I validate 'Account Should Be 100 percent' toast of type 'Warning' with message 'Las cuentas activas de tipo sueldo deben sumar un porcentaje del 100%.' is visible
        Then I click on 'Options 1'
        Then I click on 'Activate'   
        Then I wait until spinner 'Loading Text' not exist 
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'  
        Then I click on 'Options 1'
        Then I click on 'Delete'   
        Then I click Modal button 'Accept'
        Then I wait for backend request taged as 'banks' 
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 
        Then I validate 'Row Table' to have length of '1'  
        Then I click on 'Options' 
        Then I click on 'Delete'   
        Then I click Modal button 'Accept'
        Then I wait for backend request taged as 'banks' 
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'   
        