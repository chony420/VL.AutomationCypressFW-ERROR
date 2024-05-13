# @vlpeople-flaky
# Feature: People -> Occupational Health
 
#  As a user I want to:
#         - Navigate through different views from Fichas médicas
#         - Create, modify and delete a new medical history for an employee
#         - Create, modify and delete clinical records with diferent actions
#         - Create, modify and delete vaccines for an employee
#         - Create, modify and delete medical exams for an employee

#     Background: 
#         When I login on 'VismaLatam' as 'superadmin'
#         Then I validate user to be on the 'Login' page
#         And I load file 'Login' from 'Commons/Login'
#         And I set field 'Database' with 'Cypress Argentina'
#         And I click on contain 'Cypress Argentina'
#         Then I click on 'ChooseBtn'
#         And I validate user to be on the 'Home' page
#         Then I wait until DOM is loaded
#         When I go to module 'PEOPLE'
#         And I go to card 'OccupationalHealth'
#         And I validate user to be on the 'OccupationalHealth' page
#         Then I wait until DOM is loaded
#         And I go to card 'ClinicalRecords' 
#         Then I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Given I wait request 'Pathologies URL' and save with alias 'Pathologies'
#         Given I wait request 'Vaccines URL' and save with alias 'Vaccines' 

#      Scenario: Delete type control 'Consultorio' and action 'Hisopado/PCR'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'        
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Ausencia'
#         #And I validate 'Medical Control With Absence Delete Message' toast of type 'Alert Message' with message 'El control médico tiene una ausencia asociada. Al realizar esta acción se eliminará el control médico, sus seguimientos, certificados subidos y la ausencia.' is visible
#         Then I click button 'Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Ausencia'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

#     Scenario: Create a Clinical Record with type control 'Consultorio' and action 'Descanso'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         And I click on 'Add Medical Control'
#         Then I wait until DOM is loaded
#         And I click on 'New Medical Control'
#         Then I wait until DOM is loaded
#         And I set field 'Medical Control Date' with '17/08/2019'
#         And I set field 'Id Control Type' with 'Consultorio'
#         And I click on contain 'Consultorio'
#         And I set field 'Id Action' with 'Descanso'
#         And I click on contain 'Descanso'
#         Then I click on empty space
#         And I set field 'Id Medical Service' with 'Polar'
#         And I click on contain 'Polar'
#         And I set field 'Occupational Doctor Name' with 'Almodovar, Pedro'
#         And I click on contain 'Almodovar, Pedro'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
#         And I click on 'Break Time'
#         Then I click on empty space
#         Then I validate 'Break Time Validation' to have text 'Campo obligatorio'
#         Then I set filter field 'Break Time' with '15 Minutos'
#         And I click on contain '15 Minutos'
#         And I click on 'Upload File'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate user to be on the 'HealthApp Success' page
#         Then I validate image 'Create Image' with text 'Create Text' is visible
#         Then I click button 'Finish'

#     Scenario: Modify type control 'Consultorio' and action 'Descanso'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I intercept 'Pathologies URL' and stub response 'Pathologies'
#         Then I wait for '5' seconds
#         Then I select option 'Modificar' from ellipsis with value 'Descanso'
#         And I clear field 'Medical Control Date'
#         And I set field 'Medical Control Date' with '17/08/2020'       
#         And I set field 'Id Medical Service' with 'CADA'
#         And I click on contain 'CADA'
#         And I set field 'Occupational Doctor Name' with 'Suarez, Matias'
#         And I click on contain 'Suarez, Matias'
#         And I clear field 'Diagnosis'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress - Modificada'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         And I wait until DOM is loaded

#     Scenario: Delete type control 'Consultorio' and action 'Descanso'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I intercept 'Vaccines URL' and stub response 'Vaccines'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Descanso'
#         Then I click button 'Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Descanso'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'