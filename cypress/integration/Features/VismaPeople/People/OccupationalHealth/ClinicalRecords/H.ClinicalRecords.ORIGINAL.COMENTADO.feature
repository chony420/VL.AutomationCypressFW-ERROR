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
    
#     Scenario: Navigation
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'ClinicalRecords' page
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I set field 'Name' with 'NO BORRAR'
#         Then I set field 'Document Number' with '39674848'
#         Then I set field 'File Number' with '1234575952'
#         And I click on 'Organization Panel'
#         Then I set filter field 'Structure type' with 'Empresa'
#         And I click on contain 'Empresa'
#         Then I set filter field 'Structures' with 'VISMA LATAM'
#         And I click on contain 'VISMA LATAM'
#         Then I click button 'Apply Filter'
#         Then I wait until DOM is loaded
#         Then I double click '1234575952'
#         Then I click button 'LittleBackArrow'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'ClinicalRecords' page
#         Then I set field 'File Number' with '1234575952'
#         Then I click button 'Apply Filter'
#         Then I wait until DOM is loaded
#         And I select option 'Ver ficha' from ellipsis with value '1234575952'
#         Then I click breadcrumb 'Clinical Records'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'ClinicalRecords' page
#         Then I set field 'Document Number' with '39674848'
#         Then I click button 'Apply Filter'
#         Then I wait until DOM is loaded
#         Then I click breadcrumb 'Health'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'OccupationalHealth' page

#     Scenario: Modify a Medical history and Create a Clinical Record with type control 'Consultorio' and action 'Consulta'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         And I click on 'Is Not at Risk Group'
#         And I click on 'Is at Risk Group'
#         And I click on 'Is Not at Risk Group'
#         And I click on 'High Blood Pressure'
#         And I click on 'Normal Blood Pressure'
#         And I click on 'Low Blood Pressure'
#         Then I set filter field 'Blood Type' with 'A+'
#         And I click on contain 'A+'
#         Then I set filter field 'Disability' with 'Visual'
#         And I click on contain 'Visual'
#         And I click on 'Consult Pathologies'
#         Then I wait until DOM is loaded
#         Then I set field 'Search Patology' with 'Kernicterus - P57 - Afecciones originadas en el periodo neonatal'
#         Then I wait until DOM is loaded
#         And I click on 'Close Patologies'
#         And I click on 'Add Diagnostic'
#         Then I set field 'Pathology Search' with 'Asfixia' 
#         Then I wait until DOM is loaded     
#         Then I wait until 'Spinner' is not visible
#         And I click on contain 'Asfixia del nacimiento - P21 - Afecciones originadas en el periodo neonatal'
#         And I click on 'Add Pathology'
#         Then I set field 'Pathology Search' with 'Dificultad'
#         Then I wait until DOM is loaded
#         Then I wait until 'Spinner' is not visible
#         And I click on contain 'Dificultad respiratoria del recién nacido - P22 - Afecciones originadas en el periodo neonatal'
#         And I click on 'Remove Pathology'
#         Then I click button 'Submit'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         Then I wait until DOM is loaded
#         And I click on 'Add Medical Control'
#         Then I wait until DOM is loaded
#         And I click on 'New Medical Control'
#         Then I wait until DOM is loaded
#         And I set field 'Medical Control Date' with '14/08/20'
#         Then I click button 'Cancel'
#         Then I validate Modal to contain 'Change without save-Message'
#         Then I click Modal button 'Modal Cancel'
#         Then I click button 'Cancel'
#         Then I validate Modal to contain 'Change without save-Message'
#         Then I click Modal button 'Accept'
#         Then I wait until DOM is loaded
#         Then I click breadcrumb 'Clinical Records'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I wait until DOM is loaded
#         And I click on 'Add Medical Control'
#         Then I wait until DOM is loaded
#         And I click on 'New Medical Control'
#         And I set field 'Medical Control Date' with '14/0'
#         Then I click on empty space
#         Then I validate 'Date Validation' to have text 'Campo obligatorio'
#         And I set field 'Medical Control Date' with '14/08/20'
#         And I set field 'Id Control Type' with 'Consultorio'
#         And I click on contain 'Consultorio'
#         And I set field 'Id Action' with 'Consulta'
#         And I click on contain 'Consulta'
#         Then I click on empty space
#         And I set field 'Id Medical Service' with 'Paramedic'
#         And I click on contain 'Paramedic'
#         And I click on 'Occupational Doctor'
#         And I set field 'Occupational Doctor Name' with 'Acosta, Cecilio'
#         And I click on contain 'Acosta, Cecilio'
#         And I click on 'Private Doctor'
#         And I click on 'Private Doctor Name'
#         Then I click on empty space
#         Then I validate 'Private Doctor Name Validation' to have text 'Campo obligatorio'
#         And I set field 'Private Doctor Name' with 'Rossi, Valentino'
#         Then I validate 'Enrollment Validation' to have text 'Campo obligatorio' 
#         And I set field 'Enrollment' with 'MN 5642131'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
#         And I click on 'Upload File'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate user to be on the 'HealthApp Success' page
#         Then I validate image 'Create Image' with text 'Create Text' is visible
#         Then I click button 'Finish'

#     Scenario: Delete a Medical History
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         And I click on 'Remove Pathology'
#         Then I click button 'Submit'
#         Then I wait until 'Spinner' is not visible
#         # And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' ** NO ESTA DESARROLLADO, SE LEVANTO EN PBI DE BUG FIXING
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         Then I wait until DOM is loaded

#     Scenario: Modify type control 'Consultorio' and action 'Consulta'
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         Then I wait for '5' seconds
#         Then I select option 'Modificar' from ellipsis with value 'Consultorio'
#         And I clear field 'Medical Control Date'
#         And I set field 'Medical Control Date' with '17/08/2020'
#         And I set field 'Id Medical Service' with 'CADA'
#         And I click on contain 'CADA'
#         And I click on 'Occupational Doctor'
#         And I set field 'Occupational Doctor Name' with 'Suarez, Matias'
#         And I click on contain 'Suarez, Matias'
#         And I clear field 'Diagnosis'
#         And I set field 'Diagnosis' with 'Esta es una prueba de Cypress - Modificada'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         And I wait until DOM is loaded
    
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
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Descanso'
#         Then I click button 'Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis with value 'Descanso'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

#     Scenario: Create a Clinical Record with type control 'Consultorio' and action 'Hisopado/PCR'
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

#     Scenario: Add Vaccines
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Vaccines'
#         Then I click button 'Modify Vaccine' 
#         Then I click on 'Add Vaccine'
#         Then I click on 'Remove Vaccine'
#         Then I click on 'Add Vaccine'
#         Then I set field 'Vaccine' with 'Antigripal anual'
#         And I click on contain 'Antigripal anual'
#         Then I set field 'Application Date' with '14/0'
#         Then I click on empty space
#         Then I validate 'Application Date Validation' to have text 'Campo obligatorio'
#         And I clear field 'Application Date'
#         Then I set field 'Application Date' with '14/08/2016'
#         Then I click on 'Add Integration Vaccine'
#         Then I set field 'Vaccine 1' with 'Varicela'
#         And I click on contain 'Varicela'
#         Then I set field 'Application Date 1' with '14/0/'
#         Then I click on empty space
#         Then I validate 'Application Date 1 Validation' to have text 'Campo obligatorio'
#         And I clear field 'Application Date 1'
#         Then I set field 'Application Date 1' with '14/03/2000'
#         Then I click on 'Add Integration Vaccine'
#         Then I set field 'Vaccine 2' with 'Triple Viral'
#         And I click on contain 'Triple Viral'
#         Then I set field 'Application Date 2' with '01/0'
#         Then I click on empty space
#         Then I validate 'Application Date 2 Validation' to have text 'Campo obligatorio'
#         And I clear field 'Application Date 2'
#         Then I set field 'Application Date 2' with '01/03/2015'
#         Then I click on 'Add Integration Vaccine'
#         Then I click on 'Remove Last Vaccine'
#         Then I click button 'Submit'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         And I wait until DOM is loaded

#     Scenario: Modify Vaccines
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Vaccines'
#         Then I click button 'Modify Vaccine' 
#         Then I set field 'Vaccine' with 'Fiebre amarilla'
#         And I click on contain 'Fiebre amarilla'
#         And I clear field 'Application Date'
#         Then I set field 'Application Date' with '25/11/2015'
#         Then I set field 'Vaccine 1' with 'Hepatitis A'
#         And I click on contain 'Hepatitis A'
#         And I clear field 'Application Date 1'
#         Then I set field 'Application Date 1' with '01/08/1998'
#         Then I set field 'Vaccine 2' with 'Herpes Zóster'
#         And I click on contain 'Herpes Zóster'
#         And I clear field 'Application Date 2'
#         Then I set field 'Application Date 2' with '01/03/2015'
#         Then I click on 'Add Integration Vaccine'
#         Then I click on 'Remove Last Vaccine'
#         Then I click button 'Submit'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
#         And I wait until DOM is loaded

#  Scenario: Delete Vaccines
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Vaccines'
#         Then I click button 'Modify Vaccine' 
#         Then I click on 'Remove Vaccine 2'
#         Then I click on 'Remove Vaccine 1'
#         Then I click on 'Remove Vaccine'

#     Scenario: Add Medical Exams
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'Add Exam'
#         And I wait until DOM is loaded
#         Then I click on 'Id File Type'
#         Then I click on 'Exam Date'
#         Then I validate 'Id File Type Validation' to have text 'Campo obligatorio'
#         Then I set field 'Id File Type' with 'Examen Médico'
#         And I click on contain 'Examen Médico'
#         Then I set field 'Exam Date' with 'dasdf'
#         Then I validate 'Exam Date Validation' to have text 'Campo obligatorio'
#         And I clear field 'Exam Date'
#         Then I set field 'Exam Date' with '14/05/2023'
#         #Then I set field 'Expiration Date' with '01/05/2023'
#         # Then I validate 'Expiration Date Validation' to have text 'La fecha debe estar en un rango válido'
#         # Then I set field 'Expiration Date' with '31/05/2023'
#         # **** LOS SIGUIENTES DOS PASOS ESTAN COMENTADOS PORQUE AUN NO ESTA DESARROLLADA LA VENTANA PARA CONFIRMAR LA CANCELACION DE LA ACCION
#         # Then I click button 'Cancel'
#         # Then I validate Modal to contain 'Change without save-Message'
#         #And I click on 'Upload File'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Created' is visible and have the text 'Created_txt'
#         And I wait until DOM is loaded

#     Scenario: Add Another Medical Exams
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'Add Another Exam'
#         Then I click button 'Cancel'
#         And I wait until DOM is loaded

#     Scenario: Modify Medical Exams
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'List View'
#         Then I click on 'Grid View'
#         Then I click on 'List View'
#         And I select option 'Modificar' from ellipsis with value '14/05/2023'
#         And I clear field 'Exam Date'
#         And I set field 'Exam Date' with '17/12/2019'
#         And I set field 'Expiration Date' with '21/12/2019'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

#     Scenario: Visualize a Medical Exam  *** NO ESTA DESARROLLADA LA FUNCONALIDAD 
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'List View'
#         Then I click on 'Grid View'
#         Then I click on 'List View'
#         And I select option 'Visualizar' from ellipsis with value '17/12/2019'
#         Then I wait until DOM is loaded
        
#     Scenario: Download a Medical Exam
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'List View'
#         Then I click on 'Grid View'
#         Then I click on 'List View'
#         And I select option 'Descargar' from ellipsis with value '17/12/2019'
#         Then I wait until DOM is loaded

#     Scenario: Delete a Medical Exam
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'List View'
#         Then I click on 'Grid View'
#         Then I click on 'List View'
#         And I select option 'Eliminar' from ellipsis with value '17/12/2019'
#         Then I wait until DOM is loaded
#         Then I click button 'Cancel'
#         And I wait until DOM is loaded
#         And I select option 'Eliminar' from ellipsis with value '17/12/2019'
#         Then I click Modal button 'Accept'
#         Then I wait until DOM is loaded
#         Then I wait until 'Spinner' is not visible
#         #And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
#         Then I wait until DOM is loaded
                
#     Scenario: Add another Medical Exam to be removed from options button
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'        
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I wait until DOM is loaded
#         Then I click on 'Add Exam'        
#         Then I set field 'Id File Type' with 'Examen Médico'
#         Then I wait until DOM is loaded
#         Then I wait for '5' seconds
#         And I click on contain 'Examen Médico'
#         Then I set field 'Exam Date' with '01/12/2023'
#         Then I click button 'Save'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Created' is visible and have the text 'Created_txt'
#         #Las siguientes lineas se agregan en el escenario "Add another Medical Exam Options" dado a que no está cargando bien cypress el front, lo que hace que rompa con la prueba
#         #And I wait until DOM is loaded
#         #Then I click on 'Add Another Exam'
#         #Then I click button 'Cancel'

#     Scenario: Add another Medical Exam options
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'        
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I wait until DOM is loaded
#         And I wait until DOM is loaded
#         Then I click on 'Add Another Exam'
#         Then I click button 'Cancel'

#     Scenario: Download and delete a Medical Exam from options button
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         And I go to tab 'Medical Exams'
#         Then I click button 'Edit Medical History'
#         Then I click on 'Options'
#         Then I click on 'Download All'
#         Then I click on 'Options'
#         Then I click on 'Delete All'
#         Then I click button 'Cancel'
#         Then I click on 'Options'
#         Then I click on 'Delete All'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
#         Then I wait until DOM is loaded

#      Scenario: Modify a Medical history
#         And I load file 'ClinicalRecords' from 'VismaLatam/People'
#         Then I set field 'Last Name' with 'Cypress Ficha Medica'
#         Then I click button 'Apply Filter'
#         Then I double click '1234575952'
#         Then I wait until DOM is loaded
#         Then I click button 'Edit Medical History'
#         And I click on 'Is Not at Risk Group'
#         And I click on 'Is at Risk Group'
#         And I click on 'Is Not at Risk Group'
#         And I click on 'High Blood Pressure'
#         And I click on 'Normal Blood Pressure'
#         And I click on 'Low Blood Pressure'
#         Then I set filter field 'Blood Type' with 'NEGATIVO'
#         And I click on contain 'NEGATIVO'
#         Then I set filter field 'Disability' with 'Mental'
#         And I click on contain 'Mental'
#         Then I click button 'Submit'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'