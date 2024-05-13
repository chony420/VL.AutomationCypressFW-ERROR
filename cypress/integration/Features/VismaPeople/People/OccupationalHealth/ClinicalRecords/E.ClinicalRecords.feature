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
        Given I wait request 'Employee Clinical Records URL' and save with alias 'Employee Clinical Records'

    Scenario: Add Vaccines
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Vaccines'
        Then I wait for backend request taged as 'Employee Clinical Records'
        Then I click button 'Edit Medical History'
        Then I click on 'Add Vaccine'
        Then I click on 'Remove Vaccine'
        Then I click button 'Submit'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I wait until DOM is loaded
        Then I wait for '5' seconds
        Then I click on 'Add Vaccine'
        Then I click on 'Vaccine Wrapper 1'
        Then I force click 'Antigripal Anual'
        And I click on contain 'Antigripal anual'
        Then I set field 'Application Date' with '14/0'
        Then I click on empty space
        Then I validate 'Application Date Validation' to have text 'Campo obligatorio'
        And I clear field 'Application Date'
        Then I set field 'Application Date' with '14/08/2016'
        Then I click on 'Add Integration Vaccine'
        Then I click on 'Vaccine Wrapper 2'
        Then I force click 'COVID-19 - Covishield'
        Then I set field 'Application Date 1' with '14/0/'
        Then I click on empty space
        Then I validate 'Application Date 1 Validation' to have text 'Campo obligatorio'
        And I clear field 'Application Date 1'
        Then I set field 'Application Date 1' with '14/03/2000'
        Then I click on 'Add Integration Vaccine'
        Then I click on 'Vaccine Wrapper 3'
        Then I force click 'COVID-19 - AstraZeneca'
        Then I set field 'Application Date 2' with '01/0'
        Then I click on empty space
        Then I validate 'Application Date 2 Validation' to have text 'Campo obligatorio'
        And I clear field 'Application Date 2'
        Then I set field 'Application Date 2' with '01/03/2015'
        Then I click button 'Submit'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I wait until DOM is loaded

    Scenario: Modify Vaccines
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Vaccines'
        Then I wait for backend request taged as 'Employee Clinical Records'
        Then I click button 'Edit Medical History'
        Then I click on 'Vaccine Wrapper 1'
        Then I force click 'COVID-19 - Covishield'
        And I clear field 'Application Date'
        Then I set field 'Application Date' with '25/11/2015'
        Then I click on 'Vaccine Wrapper 2'
        Then I force click 'COVID-19 - AstraZeneca'
        And I clear field 'Application Date 1'
        Then I set field 'Application Date 1' with '01/08/1998'
        Then I click on 'Vaccine Wrapper 3'
        Then I force click 'Meningococo B'
        And I clear field 'Application Date 2'
        Then I set field 'Application Date 2' with '01/03/2015'
        Then I click button 'Submit'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I wait until DOM is loaded

    Scenario: Delete Vaccines
        And I load file 'ClinicalRecords' from 'VismaLatam/People'
        Then I set field 'Last Name' with 'Cypress Ficha Medica'
        Then I click button 'Apply Filter'
        Then I double click '1234575952'
        Then I wait until DOM is loaded
        And I go to tab 'Vaccines'
        Then I wait for backend request taged as 'Employee Clinical Records'
        Then I click button 'Edit Medical History'
        Then I click on 'Remove Vaccine 2'
        Then I click on 'Remove Vaccine 1'
        Then I click on 'Remove Vaccine'
        Then I click button 'Submit'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I wait until DOM is loaded