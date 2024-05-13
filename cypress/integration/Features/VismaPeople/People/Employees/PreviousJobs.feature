@vlpeople-flaky
Feature: People -> Previous Jobs

 As a user I want to:
        - Create, modify and delete a previous job's Employee

    Background: 
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Given I wait request 'Person Cy URL' and save with alias 'personCy'
        Given I wait request 'Previous Jobs URL' and save with alias 'Previous Jobs'
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'

 Scenario: Create a previous job

        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1'
        Then I wait for '2' seconds 
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People' 
        Then I wait for request 'personCy' and navigate to tab parent element containing 'Organización' 
        Then I wait until 'Modify' is visible
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Previous Job Title'
        Then I validate button 'Save Report' is disabled
        Then I wait until 'Previous Jobs' request 'Previous Jobs URL' status is OK 
        Then I click button 'Add Previous Jobs'
        Then I 'mark' checkbox in 'Compensation'
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        Then I click button 'Add Previous Jobs'
        Then I validate button 'Save Config' is disabled  
        Then I click on 'Company'
        Then I click on 'Job'
        Then I validate 'Company Validation' to have text 'Campo obligatorio'
        Then I set field 'Company' with 'HRCore Company'
        Then I click on 'Job'
        Then I click on 'Start Date'
        Then I validate 'Job Validation' to have text 'Campo obligatorio'
        Then I set field 'Job' with 'Tester QA'
        #Then I click on 'Start Date'   ------> Se carga PBI porque no tiene la validacion 'Campo obligatorio'
        #Then I click on empty space
        #Then I validate 'Start Date Validation' to have text 'Campo obligatorio'
        Then I set field 'Start Date' with '18/04/2016'
        Then I click on 'End Date'
        Then I click on 'Start Date'
        Then I validate 'End Date Validation' to have text 'Campo obligatorio'
        Then I set field 'End Date' with '31/12/2000'
        Then I validate 'End Date Validation' to have text 'La fecha debe estar en un rango válido'
        Then I clear field 'End Date'
        Then I set field 'End Date' with '31/12/2022'
        Then I validate button 'Save' is not disabled
        Then I 'mark' checkbox in 'Real'
        Then I validate 'Real check' is checked
        Then I 'unmark' checkbox in 'Real'
        Then I validate 'Real check' is not checked
        Then I 'mark' checkbox in 'Real'
        Then I 'mark' checkbox in 'Salary'
        Then I validate 'Salary check' is checked
        Then I 'unmark' checkbox in 'Salary'
        Then I validate 'Salary check' is not checked
        Then I 'mark' checkbox in 'Salary'
        Then I 'mark' checkbox in 'Holidays'
        Then I validate 'Holidays check' is checked
        Then I 'unmark' checkbox in 'Holidays'
        Then I validate 'Holidays check' is not checked
        Then I 'mark' checkbox in 'Holidays'
        Then I 'mark' checkbox in 'Compensation'
        Then I validate 'Compensation check' is checked
        Then I 'unmark' checkbox in 'Compensation'
        Then I validate 'Compensation check' is not checked
        Then I 'mark' checkbox in 'Compensation'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        Then I wait for '5' seconds
        Then I validate 'Company Tittle' to have text 'HRCore Company'
        Then I validate 'Job Tittle' to have text 'Tester QA'
        Then I validate 'Period Tittle' to have text 'Fase laboral: 18/04/2016 - 31/12/2022'

 Scenario: Modify a previous job

        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1'
        Then I wait for '2' seconds 
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People' 
        Then I wait for request 'personCy' and navigate to tab parent element containing 'Organización'
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Previous Job Title'
        Then I validate button 'Save Report' is disabled
        Then I wait until 'Previous Jobs' request 'Previous Jobs URL' status is OK 
        Then I click on 'Options'
        Then I click on 'Edit'
        Then I clear field 'Start Date'
        Then I set field 'Start Date' with '18/04/2017'
        Then I clear field 'End Date'
        Then I set field 'End Date' with '31/12/2023'
        Then I 'unmark' checkbox in 'Real'
        Then I 'unmark' checkbox in 'Salary'
        Then I 'unmark' checkbox in 'Holidays'
        Then I 'unmark' checkbox in 'Compensation'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I validate 'Company Tittle' to have text 'HRCore Company'
        Then I validate 'Job Tittle' to have text 'Tester QA'
        Then I validate 'Period Tittle' to have text 'Fase laboral: 18/04/2017 - 31/12/2023'

Scenario: Create another previous job

        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        Then I wait for '2' seconds 
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People' 
        Then I wait for request 'personCy' and navigate to tab parent element containing 'Organización' 
        Then I wait until 'Modify' is visible
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Previous Job Title'
        Then I validate button 'Save Report' is disabled
        Then I wait until 'Previous Jobs' request 'Previous Jobs URL' status is OK
        Then I click button 'Add Another Job'
        Then I set field 'Company' with 'Visma LATAM'
        Then I set field 'Job' with 'QA Advisor'
        Then I set field 'Start Date' with '18/04/2035'
        Then I set field 'End Date' with '31/12/2037'
        Then I validate button 'Save' is not disabled
        Then I 'mark' checkbox in 'Real'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        Then I wait for '5' seconds
        Then I validate 'Company Tittle' to have text 'HRCore Company'
        Then I validate 'Job Tittle' to have text 'Tester QA'
        Then I validate 'Period Tittle' to have text 'Fase laboral: 18/04/2035 - 31/12/2037'

Scenario: Delete both previous jobs

        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        Then I wait for '2' seconds 
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People' 
        Then I wait for request 'personCy' and navigate to tab parent element containing 'Organización'
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Previous Job Title'
        Then I validate button 'Save Report' is disabled
        Then I wait until 'Previous Jobs' request 'Previous Jobs URL' status is OK 
        Then I click on 'First Job'
        Then I click on 'Delete'
        Then I click Modal button 'Modal Cancel'
        Then I wait until DOM is loaded
        Then I click on 'First Job'
        Then I click on 'Delete'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I wait for '5' seconds
        Then I click on 'Options'
        Then I click on 'Delete'
        Then I click Modal button 'Modal Cancel'
        Then I wait until DOM is loaded
        Then I click on 'Options'
        Then I click on 'Delete'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'



