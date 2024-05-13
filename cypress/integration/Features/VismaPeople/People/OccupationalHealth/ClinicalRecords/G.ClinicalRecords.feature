@vlpeople-flaky
Feature: People -> Occupational Health
 
 As a user I want to:
        - Navigate through different views from Fichas médicas
        - Create, modify and delete a new medical history for an employee
        - Create, modify and delete clinical records with diferent actions
        - Create, modify and delete vaccines for an employee
        - Create, modify and delete medical exams for an employee

    Background: 
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page
        Then I wait until DOM is loaded
        And I go to card 'ClinicalRecords' 
        Then I load file 'ClinicalRecords' from 'VismaLatam/People'
        Given I wait request 'Clinical Records URL' and save with alias 'Clinical Records'     
        Given I wait request 'Employee Clinical Records URL' and save with alias 'Employee Clinical Records'   
        Given I wait request 'Person Clinical Records URL' and save with alias 'Person Clinical Records'   
             
                    
    Scenario: Add another Medical Exam to be removed from options button
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'        
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I wait for backend request taged as 'Employee Clinical Records'
        Then I click button 'Edit Medical History'
        Then I wait until DOM is loaded
        Then I click on 'Add Exam'
        Then I wait until DOM is loaded
        #Then I set field 'Id File Type' with 'Examen Médico'
        #And I click on contain 'Examen Médico'
        Then I click on list 'Id File Type' after wait for 'Person Clinical Records' then type option 'Examen Médico'
        Then I set field 'Exam Date' with '01/12/2023'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        #Las siguientes lineas se agregan en el escenario "Add another Medical Exam Options" dado a que no está cargando bien cypress el front, lo que hace que rompa con la prueba
        #And I wait until DOM is loaded
        #Then I click on 'Add Another Exam'
        #Then I click button 'Cancel'

    Scenario: Add another Medical Exam options
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'        
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I wait for backend request taged as 'Person Clinical Records'
        Then I click button 'Edit Medical History'
        Then I wait until DOM is loaded
        And I wait until DOM is loaded
        Then I click on 'Add Another Exam'
        Then I click button 'Cancel'

    Scenario: Download and delete a Medical Exam from options button
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I wait for backend request taged as 'Person Clinical Records'
        Then I click button 'Edit Medical History'
        Then I click on 'Options'
        Then I click on 'Download All'
        Then I click on 'Options'
        Then I click on 'Delete All'
        Then I click button 'Cancel'
        Then I click on 'Options'
        Then I click on 'Delete All'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I wait until DOM is loaded

     Scenario: Modify a Medical history
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        Then I wait for backend request taged as 'Person Clinical Records'
        Then I click button 'Edit Medical History'
        And I click on 'Is Not at Risk Group'
        And I click on 'Is at Risk Group'
        And I click on 'Is Not at Risk Group'
        And I click on 'High Blood Pressure'
        And I click on 'Normal Blood Pressure'
        And I click on 'Low Blood Pressure'
        Then I click on 'Clear Blood Type'
        Then I set filter field 'Blood Type' with 'NEGATIVO'
        And I click on contain 'NEGATIVO'
        Then I click on 'Clear Disability'
        Then I set filter field 'Disability' with 'Mental'
        And I click on contain 'Mental'
        Then I click button 'Submit'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'