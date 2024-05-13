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

#     Scenario: Modify type control 'Consultorio' and action 'Consulta'
#             And I load file 'ClinicalRecords' from 'VismaLatam/People'
#             Then I set field 'Last Name' with 'Cypress Ficha Medica'
#             Then I click button 'Apply Filter'
#             Then I double click '1234575952'
#             Then I wait until DOM is loaded
#             Then I click button 'Edit Medical History'
#             Then I wait for '5' seconds
#             Then I select option 'Modificar' from ellipsis with value 'Consultorio'
#             And I clear field 'Medical Control Date'
#             And I set field 'Medical Control Date' with '17/08/2020'
#             And I set field 'Id Medical Service' with 'CADA'
#             And I click on contain 'CADA'
#             And I click on 'Occupational Doctor'
#             And I set field 'Occupational Doctor Name' with 'Suarez, Matias'
#             And I click on contain 'Suarez, Matias'
#             And I clear field 'Diagnosis'
#             And I set field 'Diagnosis' with 'Esta es una prueba de Cypress - Modificada'
#             Then I click button 'Save'
#             Then I wait until 'Spinner' is not visible
#             And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#             And I wait until DOM is loaded
    
#     Scenario: Delete type control 'Consultorio' and action 'Consulta'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Consultorio'
#         Then I click button 'Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Consultorio'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

#     Scenario: Create a Clinical Record with type control 'Consultorio' and action 'Ausencia'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click on 'Edit Medical History'
#         And I click on 'Add Medical Control'
#         Then I wait until DOM is loaded
#         And I click on 'New Medical Control'
#         Then I wait until DOM is loaded
#         And I set field 'Medical Control Date' with '17/0'
#         Then I click on empty space
#         Then I validate 'Date Validation' to have text 'Campo obligatorio'
#         And I set field 'Medical Control Date' with '17/08/2018'
#         And I set field 'Id Control Type' with 'Consultorio'
#         And I click on contain 'Consultorio'
#         And I set field 'Id Action' with 'Ausencia'
#         And I click on contain 'Ausencia'
#         Then I click on empty space
#         And I set field 'Id Medical Service' with 'Paramedic'
#         And I click on contain 'Paramedic'
#         And I set field 'Occupational Doctor Name' with 'Acosta, Cecilio'
#         And I click on contain 'Acosta, Cecilio'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
#         And I click on 'Date From'
#         Then I click on empty space
#         Then I validate 'Date From Validation' to have text 'Campo obligatorio'
#         And I set field 'Date From' with '14/08/2018' 
#         And I click on 'Rest Days'
#         Then I click on empty space
#         Then I validate 'Rest Days Validation' to have text 'Campo obligatorio'
#         And I set field 'Rest Days' with '2'
#         Then I validate 'Date Validation' to have text 'La fecha debe estar en un rango válido'
#         Then I clear field 'Medical Control Date'
#         And I set field 'Medical Control Date' with '14/08/2018'
#         And I click on 'Id Absence Type'
#         Then I click on empty space
#         Then I validate 'Id Absence Type Validation' to have text 'Campo obligatorio'
#         And I set field 'Id Absence Type' with 'Licencia Enfermedad'
#         And I click on contain 'Licencia Enfermedad'
#         And I click on 'Upload File'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate user to be on the 'HealthApp Success' page
#         Then I validate image 'Create Image' with text 'Create Text' is visible
#         Then I click button 'Finish'

#  Scenario: Validation when creating a Clinical Record with type control 'Consultorio'
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
#         And I set field 'Medical Control Date' with '17/0'
#         Then I click on empty space
#         Then I validate 'Date Validation' to have text 'Campo obligatorio'
#         And I set field 'Medical Control Date' with '17/08/2018'
#         And I set field 'Id Control Type' with 'Consultorio'
#         And I click on contain 'Consultorio'
#         And I set field 'Id Action' with 'Ausencia'
#         And I click on contain 'Ausencia'
#         Then I click on empty space
#         And I set field 'Id Medical Service' with 'Paramedic'
#         And I click on contain 'Paramedic'
#         And I set field 'Occupational Doctor Name' with 'Acosta, Cecilio'
#         And I click on contain 'Acosta, Cecilio'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
#         And I click on 'Date From'
#         Then I click on empty space
#         Then I validate 'Date From Validation' to have text 'Campo obligatorio'
#         And I set field 'Date From' with '14/08/2018' 
#         And I click on 'Rest Days'
#         Then I click on empty space
#         Then I validate 'Rest Days Validation' to have text 'Campo obligatorio'
#         And I set field 'Rest Days' with '2'
#         Then I validate 'Date Validation' to have text 'La fecha debe estar en un rango válido'
#         Then I clear field 'Medical Control Date'
#         And I set field 'Medical Control Date' with '14/08/2018'
#         And I click on 'Id Absence Type'
#         Then I click on empty space
#         Then I validate 'Id Absence Type Validation' to have text 'Campo obligatorio'
#         And I set field 'Id Absence Type' with 'Licencia Enfermedad'
#         And I click on contain 'Licencia Enfermedad'
#         And I click on 'Upload File'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate 'Day Overlap Exists' toast of type 'Danger' with message 'Esta ausencia se superpone con otra.' is visible