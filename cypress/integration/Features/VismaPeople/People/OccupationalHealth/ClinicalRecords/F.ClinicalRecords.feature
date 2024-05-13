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

    Scenario: Add Medical Exams
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I click button 'Edit Medical History'
        Then I wait for backend request taged as 'Person Clinical Records'
        Then I click on 'Add Exam'
        And I wait until DOM is loaded
        Then I click on 'Id File Type'
        Then I click on 'Exam Date'
        Then I validate 'Id File Type Validation' to have text 'Campo obligatorio'
        #Then I set field 'Id File Type' with 'Examen Médico'
        #And I click on contain 'Examen Médico'
        Then I click on list 'Id File Type' after wait for 'Employee Clinical Records' then type option 'Examen Médico'
        #Then I click on filter list 'Id File Type' then select option 'Examen Médico'
        Then I validate 'Exam Date Validation' to have text 'Campo obligatorio'
        Then I set field 'Exam Date' with '14/05/2023'
        # Then I set field 'Expiration Date' with '01/05/2023'
        # Then I validate 'Expiration Date Validation' to have text 'La fecha debe estar en un rango válido'
        # Then I set field 'Expiration Date' with '31/05/2023'
        # LOS SIGUIENTES DOS PASOS ESTAN COMENTADOS PORQUE AUN NO ESTA DESARROLLADA LA VENTANA PARA CONFIRMAR LA CANCELACION DE LA ACCION
        # Then I click button 'Cancel'
        # Then I validate Modal to contain 'Change without save-Message'
        # And I click on 'Upload File'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        And I wait until DOM is loaded

    Scenario: Add Another Medical Exams
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I click button 'Edit Medical History'
        Then I click on 'Add Another Exam'
        Then I click button 'Cancel'
        And I wait until DOM is loaded

    Scenario: Modify Medical Exams
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I click button 'Edit Medical History'
        Then I intercept 'Person Clinical Records URL' and stub response 'Person Clinical Records'
        Then I click on 'List View'
        Then I click on 'Grid View'
        Then I click on 'List View'
        And I select option 'Modificar' from ellipsis with value '14/05/2023'
        And I clear field 'Exam Date'
        And I set field 'Exam Date' with '17/12/2019'
        And I set field 'Expiration Date' with '21/12/2019'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    # Scenario: Visualize a Medical Exam  *** NO ESTA DESARROLLADA LA FUNCONALIDAD ***
    #     And I load file 'ClinicalRecords' from 'VismaLatam/People'
    #     Then I set field 'Last Name' with 'Cypress Ficha Medica'
    #     Then I click button 'Apply Filter'
    #     Then I double click '1234575952'
    #     Then I wait until DOM is loaded
    #     And I go to tab 'Medical Exams'
    #     Then I click button 'Edit Medical History'
    #     Then I click on 'List View'
    #     Then I click on 'Grid View'
    #     Then I click on 'List View'
    #     And I select option 'Visualizar' from ellipsis with value '17/12/2019'
    #     Then I wait until DOM is loaded

    Scenario: Download a Medical Exam
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I click button 'Edit Medical History'
        Then I intercept 'Person Clinical Records URL' and stub response 'Person Clinical Records'
        Then I click on 'List View'
        Then I click on 'Grid View'
        Then I click on 'List View'
        And I select option 'Descargar' from ellipsis with value '17/12/2019'
        Then I wait until DOM is loaded

    Scenario: Delete a Medical Exam
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Medical Exams'
        Then I click button 'Edit Medical History'
        Then I intercept 'Person Clinical Records URL' and stub response 'Person Clinical Records'
        Then I click on 'List View'
        Then I click on 'Grid View'
        Then I click on 'List View'
        And I select option 'Eliminar' from ellipsis with value '17/12/2019'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        And I wait until DOM is loaded
        And I select option 'Eliminar' from ellipsis with value '17/12/2019'
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        #And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I wait until DOM is loaded