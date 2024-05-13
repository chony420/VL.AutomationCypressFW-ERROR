# @vlpeople-flaky
# Feature: People -> Occupational Health
 
#  As a user I want to:
#         - Navigate through different views from Fichas médicas
#         - Create, modify and delete a new medical history for an employee
#         - Create, modify and delete clinical records with diferent actions
#         - Create, modify and delete vaccines for an employee
#         - Create, modify and delete medical exams for an employee

# Background: 
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

# Scenario: Create a Clinical Record with type control 'Consultorio' and action 'Hisopado/PCR'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I intercept 'Pathologies URL' and stub response 'Pathologies'
#         And I click on 'Add Medical Control'
#         Then I wait until DOM is loaded
#         And I click on 'New Medical Control'
#         Then I wait until DOM is loaded
#         And I set field 'Medical Control Date' with '17/08/2021'
#         And I set field 'Id Control Type' with 'Consultorio'
#         And I click on contain 'Consultorio'
#         And I set field 'Id Action' with 'Hisopado/PCR'
#         And I click on contain 'Hisopado/PCR'
#         And I set field 'Id Medical Service' with 'Alerta SRL'
#         And I click on contain 'Alerta SRL'
#         And I click on 'Private Doctor'
#         And I click on 'Private Doctor Name'
#         And I set field 'Private Doctor Name' with 'Messi, Leonel'
#         And I set field 'Enrollment' with 'MN 5642131'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
#         And I click on 'Test Date'
#         Then I click on empty space
#         Then I validate 'Test Date Validation' to have text 'Campo obligatorio'
#         And I set field 'Test Date' with '17/08/2021'
#         And I click on 'Test Date'
#         # And I click on 'Test Result'
#         # Then I click on empty space
#         # Then I validate 'Test Date Validation' to have text 'Campo obligatorio' *** NO TIENE VALIDACION DE CAMPO OBLIGATORIO, SE CARGO BUG PARA QUE LO AGREGUEN
#         And I set filter field 'Test Result' with 'No detectable'
#         And I click on contain 'No detectable'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate user to be on the 'HealthApp Success' page
#         Then I validate image 'Create Image' with text 'Create Text' is visible
#         Then I click button 'Finish'

#     Scenario: Modify type control 'Consultorio' and action 'Hisopado/PCR'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I wait for '5' seconds
#         Then I click button 'Edit Medical History'
#         Then I wait for '5' seconds
#         Then I select option 'Modificar' from ellipsis with value 'Hisopado/PCR'
#         And I set field 'Id Medical Service' with 'Vittality'
#         And I click on contain 'Vittality'
#         And I click on 'Private Doctor'
#         And I click on 'Private Doctor Name'
#         And I clear field 'Private Doctor Name'
#         And I set field 'Private Doctor Name' with 'Ronaldo, Cristiano'
#         And I clear field 'Enrollment'
#         And I set field 'Enrollment' with 'MN 7942145'
#         And I clear field 'Diagnosis'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress - Modificada'        
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         And I wait until DOM is loaded

#      Scenario: Delete type control 'Consultorio' and action 'Hisopado/PCR'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Hisopado/PCR'
#         Then I click button 'Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Hisopado/PCR'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'