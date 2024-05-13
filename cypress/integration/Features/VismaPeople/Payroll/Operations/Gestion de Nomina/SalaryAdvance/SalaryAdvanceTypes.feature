@vlpeople-nightly
Feature: Payroll -> Tipos de anticipos

    As a user I want to:
        - Navigate for the differents menues option and links
        - Check Validation at delete of Salary Advance Type in use 
        - Create Salary Advance Type 
        - Modify Salary Advance Type to have checks Visible in TuRecibo and Fixed Amount checked
        - Delete Salary Advance Type  
        
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
        And I go to card 'SalaryAdvanceType'
        And I load file 'SalaryAdvanceType' from 'VismaLatam/Payroll'

    Scenario: Navigation

        And I validate user to be on the 'SalaryAdvanceType' page 
        Then I click button 'Create'  
        Then I wait until spinner 'Loading Text' not exist   
        And I validate user to be on the 'SalaryAdvanceType Create' page  
        Then I set filter field 'Description' with 'Automation Cy'   
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Modal Cancel'  
        Then I click button 'BackArrow'  
        And I validate user to be on the 'SalaryAdvanceType' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I go to card 'SalaryAdvanceType'
        Then I wait until DOM is loaded
        And I validate user to be on the 'SalaryAdvanceType' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        Then I wait until DOM is loaded 

      Scenario: Validation
        Then I wait until 'Table' not have class 'skeleton-table' 
        Then I click button 'Options'
        Then I click button 'Delete'
        Then I validate Modal to contain 'Delete Confirm'
        Then I click button 'Accept'
        And I validate 'Record In Use Its Not Allowed To Delete' toast of type 'Danger' with message '¡Atención! Este registro está en uso, no se permite eliminar.' is visible

      Scenario: Creation  
        And I validate user to be on the 'SalaryAdvanceType' page 
        Then I click button 'Create'  
        Then I wait until spinner 'Loading Text' not exist  
        And I validate user to be on the 'SalaryAdvanceType Create' page  
        Then I validate button 'Save Button' is disabled
        Then I set filter field 'Description' with 'Automation Cy'   
        Then I validate button 'Save Button' is not disabled
        Then I wait until DOM is loaded
        Then I click button 'Save' 
        Then I wait until spinner 'Loading Text' not exist   
        Then I validate image 'Create Image' with text 'Create Text' is visible 
        And I click button 'Finish'   
        And I validate user to be on the 'SalaryAdvanceType' page
    Scenario: Modify  
        And I validate user to be on the 'SalaryAdvanceType' page    
        Then I wait until 'Salary Advance Table Skeleton' not exist
        Then I set field 'Filter Input' with 'Automation Cy'    
        And I load file 'SalaryAdvanceType' from 'VismaLatam/Payroll'
        Then I double click element 'First Cell'
        Then I wait until spinner 'Loading Text' not exist  
        And I validate user to be on the 'SalaryAdvanceType Modify' page  
        Then I validate button 'Save Button' is disabled
        Then I wait until 'Salary Advance Skeleton Form' not exist  
        Then I 'mark' checkbox in 'VisibleTuRecibo'
        Then I 'mark' checkbox in 'PermanentAmount' 
        Then I validate hover 'AmountValidation' with 'Campo obligatorio' is visible
        Then I set filter field 'Amount' with '1000'   
        Then I validate button 'Save Button' is not disabled 
        Then I click button 'Save' 
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt' 
        And I validate user to be on the 'SalaryAdvanceType' page 
        Then I set filter field 'Filter Input' with 'Automation Cy'   
        Then I double click element 'First Cell'
        Then I wait until spinner 'Loading Text' not exist  
        Then I wait until 'Salary Advance Skeleton Form' not exist  
        Then I validate 'VisibleTuRecibo-Check' is checked
        Then I validate 'PermanentAmount-Check' is checked
        Then I validate 'Amount' its value contain '1000'  
        Then I click button 'BackArrow'
        Then I wait until spinner 'Loading Text' not exist  
        Then I wait until 'Salary Advance Table Skeleton' not exist
        And I validate user to be on the 'SalaryAdvanceType' page 

    Scenario: Delete  
        And I validate user to be on the 'SalaryAdvanceType' page   
        Then I wait until 'Salary Advance Table Skeleton' not exist
        Then I set field 'Filter Input' with 'Automation Cy'    
        And I load file 'SalaryAdvanceType' from 'VismaLatam/Payroll'
        Then I click on 'Options' 
        Then I click on 'Delete'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I wait until spinner 'Loading Text' not exist  
        Then I wait until 'Salary Advance Table Skeleton' not exist
        And I validate user to be on the 'SalaryAdvanceType' page
        