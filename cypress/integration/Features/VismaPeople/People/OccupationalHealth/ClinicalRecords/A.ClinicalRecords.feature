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
    
    # Scenario: Navigation
    #     Then I wait until DOM is loaded
    #     And I validate user to be on the 'ClinicalRecords' page
    #     Then I set field 'Last Name' with 'Cypress Ficha Medica'
    #     Then I set field 'Name' with 'NO BORRAR'
    #     Then I set field 'Document Number' with '39674848'
    #     Then I set field 'File Number' with '1234575952'
    #     And I click on 'Organization Panel'
    #     Then I set filter field 'Structure type' with 'Empresa'
    #     And I click on contain 'Empresa'
    #     Then I set filter field 'Structures' with 'VISMA LATAM'
    #     And I click on contain 'VISMA LATAM'
    #     Then I click button 'Apply Filter'
    #     Then I wait until DOM is loaded
    #     Then I double click '1234575952'
    #     Then I click button 'LittleBackArrow'
    #     Then I wait until DOM is loaded
    #     And I validate user to be on the 'ClinicalRecords' page
    #     Then I set field 'File Number' with '1234575952'
    #     Then I click button 'Apply Filter'
    #     Then I wait until DOM is loaded
    #     And I select option 'Ver ficha' from ellipsis with value '1234575952'
    #     Then I click breadcrumb 'Clinical Records'
    #     Then I wait until DOM is loaded
    #     And I validate user to be on the 'ClinicalRecords' page
    #     Then I set field 'Document Number' with '39674848'
    #     Then I click button 'Apply Filter'
    #     Then I wait until DOM is loaded
    #     Then I click breadcrumb 'Health'
    #     Then I wait until DOM is loaded
    #     And I validate user to be on the 'OccupationalHealth' page

    # Scenario: Modify a Medical history and Create a Clinical Record with type control 'Consultorio' and action 'Consulta'
    #     And I load file 'ClinicalRecords' from 'VismaLatam/People'
    #     Then I set field 'Last Name' with 'Cypress Ficha Medica'
    #     Then I click button 'Apply Filter'
    #     Then I double click '1234575952'
    #     Then I wait until DOM is loaded
    #     Then I click button 'Edit Medical History'
    #     And I click on 'Is Not at Risk Group'
    #     And I click on 'Is at Risk Group'
    #     And I click on 'Is Not at Risk Group'
    #     And I click on 'High Blood Pressure'
    #     And I click on 'Normal Blood Pressure'
    #     And I click on 'Low Blood Pressure'
    #     Then I click on 'Clear Blood Type'
    #     Then I validate 'Blood Type Validation' to have text 'Campo obligatorio'
    #     Then I set filter field 'Blood Type' with '0+'
    #     And I click on contain '0+'
    #     Then I click on 'Clear Disability'        
    #     Then I set filter field 'Disability' with 'No Especificado'
    #     And I click on contain 'No Especificado'
    #     And I click on 'Consult Pathologies'
    #     Then I wait until DOM is loaded
    #     Then I set field 'Search Patology' with 'Kernicterus - P57 - Afecciones originadas en el periodo neonatal'
    #     Then I wait until DOM is loaded
    #     Then I click button 'Close'
    #     Then I wait until DOM is loaded
    #     And I click on 'Add Diagnostic'
    #     Then I set field 'Pathology Search' with 'Asfixia' 
    #     Then I wait until DOM is loaded     
    #     Then I wait until 'Spinner' is not visible
    #     And I click on contain 'Asfixia del nacimiento - P21 - Afecciones originadas en el periodo neonatal'
    #     And I click on 'Add Pathology'
    #     Then I set field 'Pathology Search' with 'Dificultad'
    #     Then I wait until DOM is loaded
    #     Then I wait until 'Spinner' is not visible
    #     And I click on contain 'Dificultad respiratoria del recién nacido - P22 - Afecciones originadas en el periodo neonatal'
    #     And I click on 'Remove Pathology'
    #     #Then I click button 'Submit'
    #     Then I wait until 'Spinner' is not visible
    #     And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
    #     Then I wait until DOM is loaded
    #     And I click on 'Add Medical Control'
    #     Then I wait until DOM is loaded
    #     And I click on 'New Medical Control'
    #     Then I wait until DOM is loaded
    #     And I set field 'Medical Control Date' with '14/08/20'
    #     Then I click button 'Cancel'
    #     Then I validate Modal to contain 'Change without save-Message'
    #     Then I click Modal button 'Modal Cancel'
    #     Then I click button 'Cancel'
    #     Then I validate Modal to contain 'Change without save-Message'
    #     Then I click Modal button 'Accept'
    #     Then I wait until DOM is loaded
    #     Then I click breadcrumb 'Clinical Records'
    #     Then I set field 'Last Name' with 'Cypress Ficha Medica'
    #     Then I click button 'Apply Filter'
    #     Then I double click '1234575952'
    #     Then I wait until DOM is loaded
    #     Then I click button 'Edit Medical History'
    #     Then I wait until DOM is loaded
    #     And I click on 'Add Medical Control'
    #     Then I wait until DOM is loaded
    #     And I click on 'New Medical Control'
    #     And I set field 'Medical Control Date' with '14/0'
    #     Then I click on empty space
    #     Then I validate 'Date Validation' to have text 'Campo obligatorio'
    #     And I set field 'Medical Control Date' with '14/08/20'
    #     And I set field 'Id Control Type' with 'Consultorio'
    #     And I click on contain 'Consultorio'
    #     And I set field 'Id Action' with 'Consulta'
    #     And I click on contain 'Consulta'
    #     Then I click on empty space
    #     And I set field 'Id Medical Service' with 'Paramedic'
    #     And I click on contain 'Paramedic'
    #     And I click on 'Occupational Doctor'
    #     And I set field 'Occupational Doctor Name' with 'Acosta, Cecilio'
    #     And I click on contain 'Acosta, Cecilio'
    #     And I click on 'Private Doctor'
    #     And I click on 'Private Doctor Name'
    #     Then I click on empty space
    #     Then I validate 'Private Doctor Name Validation' to have text 'Campo obligatorio'
    #     And I set field 'Private Doctor Name' with 'Rossi, Valentino'
    #     Then I validate 'Enrollment Validation' to have text 'Campo obligatorio' 
    #     And I set field 'Enrollment' with 'MN 5642131'
    #     And I set field 'Diagnosis' with 'Esta es una prueba de Cypress'
    #     And I click on 'Upload File'
    #     Then I click button 'Save'
    #     Then I wait until 'Spinner' is not visible
    #     And I validate user to be on the 'HealthApp Success' page
    #     Then I validate image 'Create Image' with text 'Create Text' is visible
    #     Then I click button 'Finish'

    # Scenario: Delete a Medical History
    #     And I load file 'ClinicalRecords' from 'VismaLatam/People'
    #     Then I set field 'Last Name' with 'Cypress Ficha Medica'
    #     Then I click button 'Apply Filter'
    #     Then I double click '1234575952'
    #     Then I wait until DOM is loaded
    #     Then I click button 'Edit Medical History'
    #     And I click on 'Remove Pathology'
    #     Then I click button 'Submit'
    #     Then I wait until 'Spinner' is not visible
    #     # And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' ** NO ESTA DESARROLLADO, SE LEVANTO EN PBI DE BUG FIXING
    #     And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
    #     Then I wait until DOM is loaded