@vlpeople-nightly
Feature: Payroll -> Configuraciones Basica -> Periodos de Nomina

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check the different field Validations
        - Modify payroll periods

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
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'Periods'
        And I load file 'Periods' from 'VismaLatam/Payroll' 
        Given I wait request 'Structure URL' and save with alias 'structureRequest'
        
    Scenario: Navigation
        Then I double click 'Enero 2031'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Periods modify' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Periods' page
        Then I double click 'Enero 2031'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I click Modal button 'Accept'
        And I validate user to be on the 'Periods' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'Periods'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Periods' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll BasicConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'Periods'
        Then I wait until DOM is loaded
        And I load file 'Periods' from 'VismaLatam/Payroll'
        Then I double click 'Enero 2031'
        And I click on disabled 'Description Period'
        And I click on disabled 'Date From'
        And I click on disabled 'Date To'
        And I click on disabled 'SMVM'
        Then I validate 'SMVM' its attribute 'data-placeholder' contain 'Salario Mínimo Vital y Móvil (SMVM)'
        Then I click 'LastMonth' question mark and popover 'Last Month of Year' is visible
        Then I click 'BlockPeriod' question mark and popover 'Block Period' is visible
        Then I click on 'Company'
        Then I click on list 'Structure Attribute' then select option 'VISMA LATAM'
        Then I validate button 'Save' is not disabled
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Accept' 

    Scenario: Modify - Social Taxes for Company
        Then I double click 'Enero 2031'   
        Then I wait for '5' seconds 
        Then I wait until 'Payroll Skeleton' not exist
        Then I 'mark' checkbox in 'isLastMonthOfYear'
        Then I 'mark' checkbox in 'isBlocked'  
        Then I click on 'Company' 
        Then I click on list 'Structure Attribute' after wait for 'structureRequest' then type option 'VISMA LATAM' 
        Then I set field 'Period to Deposit' with 'Periodo 1' 
        Then I set field 'Deposit Date' with '01/01/2022' 
        Then I set field 'Bank to Deposit' with 'Banco Automation' 
        Then I set field 'Branch Bank to Deposit' with 'Sucursal Automation' 
        Then I click on 'Add Element'
        Then I click on combo list 'Structure Attribute 2' then select option 'VISMA PEOPLE'  
        Then I set field 'Period to Deposit 2' with 'Periodo 2' 
        Then I set field 'Deposit Date 2' with '01/02/2022' 
        Then I set field 'Bank to Deposit 2' with 'Banco Automation 2' 
        Then I set field 'Branch Bank to Deposit 2' with 'Sucursal Automation 2'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Periods' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt' 
        And I double click 'Enero 2031'   
        Then I wait until 'Payroll Skeleton' not exist
        Then I validate 'LastMonthOfYearCheck' is checked
        Then I validate 'BlockedCheck' is checked
        Then I validate 'Period to Deposit' to contain 'Periodo 1' 
        Then I validate 'Deposit Date' to contain '01/01/2022' 
        Then I validate 'Bank to Deposit' to contain 'Banco Automation' 
        Then I validate 'Branch Bank to Deposit' to contain 'Sucursal Automation' 
        Then I validate 'Period to Deposit 2' to contain 'Periodo 2' 
        Then I validate 'Deposit Date 2' to contain '01/02/2022' 
        Then I validate 'Bank to Deposit 2' to contain 'Banco Automation 2' 
        Then I validate 'Branch Bank to Deposit 2' to contain 'Sucursal Automation 2'  
    
    Scenario: Modify - Social Taxes for Companies
        And I double click 'Enero 2031'  
        Then I wait for '5' seconds 
        Then I wait until 'Payroll Skeleton' not exist
        Then I click on 'All Companies' 
        Then I validate button 'Save' is not disabled
        Then I 'unmark' checkbox in 'isLastMonthOfYear'
        Then I 'unmark' checkbox in 'isBlocked'
        Then I set field 'Period to Deposit' with 'Periodo modificado' 
        Then I set field 'Deposit Date' with '01/03/2022' 
        Then I set field 'Bank to Deposit' with 'Banco modificado' 
        Then I set field 'Branch Bank to Deposit' with 'Sucursal modificado' 
        Then I click button 'Save'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Periods' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I double click 'Enero 2031' 
        Then I wait until 'Payroll Skeleton' not exist
        Then I validate 'Period to Deposit' to contain 'Periodo modificado' 
        Then I validate 'Deposit Date' to contain '01/03/2022' 
        Then I validate 'Bank to Deposit' to contain 'Banco modificado' 
        Then I validate 'Branch Bank to Deposit' to contain 'Sucursal modificado'
        Then I validate 'LastMonthOfYearCheck' is not checked
        Then I validate 'BlockedCheck' is not checked 
        Then I clear all non obligatory text inputs
        Then I validate button 'Save' is not disabled
        Then I click button 'Save'