@vlpeople-flaky
Feature: People -> Relatives

 As a user I want to:
        - Create, modify and Delete Relative
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
        Given I wait request 'Geolocation URL' and save with alias 'zoneRequest'
        Given I wait request 'Organization Models Relative URL' and save with alias 'organizationModel' 
        Given I wait request 'Education Level URL' and save with alias 'educationRequest'
        Given I wait request 'Relationship URL' and save with alias 'relationshipRequest'
        Given I wait request 'Health Insurance URL' and save with alias 'healthInsuranceRequest'
        Given I wait request 'Relatives URL' and save with alias 'relatives'
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'  
        And I load file 'FilterMenu' from 'Commons'

      Scenario: Relative Create 
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I wait for backend request taged as 'organizationModel'
        Then I wait for request 'relatives' and navigate to tab parent element containing 'Contactos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'Relative' from 'VismaLatam/People' 
        Then I click on 'Relative Modal'   
        Then I wait for backend request taged as 'educationRequest'
        And I set field 'Name' with 'Juan'
        And I set field 'LastName' with 'Lopez'  
        And I click on list 'Nationality' after wait for 'nacionalitiesRequest' then type option 'Argentina'   
        And I set field 'Gender' with 'Masculino'
        And I click on contain 'Masculino'   
        And I set field 'DateOfBirth' with '26/04/1992' 
        And I set field 'MaritalStatus' with 'SOLTERO'
        And I click on contain 'SOLTERO'  
        And I click on list 'CountryOfBirth' after wait for 'countryRequest' then type option 'Argentina'  
        And I wait until 'Progress Spinner' not exist
        Then I validate 'No Documents Text' to have text 'Aún no tenés registros'
        Then I validate 'Add Documents Text' to have text 'Podés agregar documentos desde aquí'
        Then I click button 'Feedback Action'   
        And I click on list 'Country for DNI' after wait for 'countryRequest' then type option 'ARGENTINA'  
        And I set field 'Document Type for DNI' with 'DNI'
        And I click on contain 'DNI - Doc. Nac. de Identi'  
        And I set field 'DNI' with '21369815' 
        Then I click button 'Add Document'  
        And I click on list 'Country for CUIL' after wait for 'countryRequest' then type option 'ARGENTINA'  
        And I click on list 'Document Type for CUIL' after wait for 'documentTypesRequest' then type option 'CUIL - CUIL'    
        And  I set field 'CUIL' with '23-21369815-9'
        Then I click on 'Main Document'
        Then I validate 'Required Document' is not visible
        Then I scroll into view 'Save'
        Then I click on 'General Info Panel'
        Then I click on 'Relationship'
        And I click on list 'Relationship' after wait for 'relationshipRequest' then type option 'CONYUGE'
        Then I click button 'Save' 
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'    

      Scenario: Relative Modify 
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I wait until 'organizationModel' request 'Organization Models URL' status is OK   
        Then I wait for request 'relatives' and navigate to tab parent element containing 'Contactos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'Relative' from 'VismaLatam/People'  
        Then I click on 'Options' 
        Then I click on 'Modify Relative'
        Then I wait for backend request taged as 'educationRequest'
        And I wait until 'Progress Spinner' not exist
        Then I scroll into view 'Save'
        Then I click on 'General Info Panel'
        And I set field 'Relationship StartDate' with '01/01/2000'
        And I click on list 'Health Insurance' after wait for 'healthInsuranceRequest' then type option '000000 - SIN O.S.'
        Then I click button 'Save' 
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'   

      Scenario: Relative Delete
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cy'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation FE'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'  
        Then I wait for backend request taged as 'organizationModel'
        Then I wait for request 'relatives' and navigate to tab parent element containing 'Contactos'
        Then I wait until DOM is loaded 
        Then I validate text '07/02/2000' is visible 
        Then I validate text 'PROGRAMADOR' is visible   
        Then I click button 'Modify Employee Profile' 
        And I load file 'Relative' from 'VismaLatam/People'  
        Then I click on 'Options' 
        Then I click on 'Delete Relative'   
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'     