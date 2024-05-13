@vlpeople-nightly
Feature: Payroll -> Tipos de Divisas

    As a user I want to:
        - Navigate for the differents menues option and links 
        - Modify Currency Types External Code & Initials
      
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
        And I go to card 'Currencies' 
        And I validate user to be on the 'Currencies' page
        And I go to card 'Currency Types'  
        Given I wait request 'Currencies URL' and save with alias 'currencies'

    Scenario: Navigation 
        And I load file 'Breadcrumb' from 'Commons'
        And I validate user to be on the 'Currencies' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Currencies' page
        Then I wait until DOM is loaded
        And I go to card 'Currency Types'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Currencies Types' page 
        Then I click breadcrumb 'Payroll Exchanges' 
        And I validate user to be on the 'Currencies' page
        And I go to card 'Currency Types'
        And I load file 'Currencies' from 'VismaLatam/Payroll' 
        And I validate user to be on the 'Currencies Types' page 
        Then I set filter field 'Filter Input' with 'Peso argentino'  
        Then I click on 'Options' 
        Then I click on 'Modify' 
        Then I click button 'BackArrow'  
        And I validate user to be on the 'Currencies Types' page 
        Then I set filter field 'Filter Input' with 'Peso argentino'  
        Then I click on 'Options' 
        Then I click on 'Modify' 
        Then I validate user to be on the 'Currencies Modify' page 
        Then I set field 'Description' with 'Descripcion'
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Modal Cancel' 
        Then I validate user to be on the 'Currencies Modify' page 
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Accept' 
        And I validate user to be on the 'Currencies Types' page
        And I load file 'Currencies' from 'VismaLatam/Payroll' 
        Then I set filter field 'Filter Input' with 'Peso argentino'  
        Then I double click element 'First Cell'
        Then I click button 'BackArrow' 
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Payroll Exchanges' 
        And I validate user to be on the 'Currencies' page
        Then I intercept 'Currencies URL' and stub response 'currencies'
        And I go to card 'Currency Types'
        And I validate user to be on the 'Currencies Types' page 
        Then I validate image 'Feedback Without Results Image' with text 'Feedback Without Results Text' is visible 

     Scenario: Modification 
        And I load file 'Currencies' from 'VismaLatam/Payroll' 
        And I validate user to be on the 'Currencies Types' page 
        Then I set filter field 'Filter Input' with 'Solana'   
        Then I double click element 'First Cell'
        Then I validate user to be on the 'Currencies Modify' page 
        Then I clear field 'ExternalCode'
        Then I clear field 'Initials'
        Then I set filter field 'ExternalCode' with '1111'    
        Then I set filter field 'Initials' with 'USDT'   
        Then I click button 'Save'
        Then I wait until spinner 'Loading Text' not exist  
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'     
        And I validate user to be on the 'Currencies Types' page 
        Then I set filter field 'Filter Input' with 'Solana'   
        Then I double click element 'First Cell'
        Then I validate 'ExternalCode' to contain '1111'  
        Then I validate 'Initials' to contain 'USDT'
        Then I click button 'BackArrow'  
        And I validate user to be on the 'Currencies Types' page 
        Then I set filter field 'Filter Input' with 'Solana'   
        Then I double click element 'First Cell'
        Then I validate user to be on the 'Currencies Modify' page 
        Then I clear field 'ExternalCode'
        Then I clear field 'Initials'
        Then I set filter field 'ExternalCode' with '2222'    
        Then I set filter field 'Initials' with 'Sol'    
        Then I click button 'Save'
        Then I wait until spinner 'Loading Text' not exist  
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt' 