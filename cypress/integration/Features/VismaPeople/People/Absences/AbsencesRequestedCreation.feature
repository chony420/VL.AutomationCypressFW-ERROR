@vlpeople-nightly
Feature: People -> Absences -> Absences Requested


    Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        Then I wait until DOM is loaded
        And I go to card 'Absences'
        Then I wait until DOM is loaded
         Given I wait request 'Absences All URL' and save with alias 'absences'
        Given I wait request 'AbsenceValidation URL' and save with alias 'absences-validation' 
        And I go to card 'AbsencesRequested'

    Scenario: Creation - Licencia por Accidente Empresa
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress Automation'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress Automation'
        Then I wait until DOM is loaded
        And I wait for '**search/api/search-engines/employees?name=&lastName=1234576163%20-%20Cypress%20Automation,%20Absences**' backend request with 'GET' method and taged as 'Carga'
        Then I click on 'RangeDaysFrom'
        Then I set field 'RangeDaysFrom' with '01/02/2024'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '10/02/2024'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Licencia por Accidente'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia por Accidente'
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Modify
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '10 Días' from grid 'General Table' to be visible 
        And I select option 'Modificar' from ellipsis with value '10 Días'
        And I load file 'AbsencesRequested' from 'VismaLatam/People' 
        Then I wait until DOM is loaded
        And I wait for '4' seconds
        Then I set field 'Description' with 'Esto es una prueba de automatización en Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Delete
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '10 Días' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '10 Días'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

    Scenario: Creation - Licencia por Accidente ART 
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress Automation'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress Automation'
        Then I wait until DOM is loaded
        And I wait for '**search/api/search-engines/employees?name=&lastName=1234576163%20-%20Cypress%20Automation,%20Absences**' backend request with 'GET' method and taged as 'Carga'
        Then I click on 'RangeDaysFrom'
        Then I set field 'RangeDaysFrom' with '01/04/2024'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '25/04/2024'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Licencia por Accidente'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia por Accidente'
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Modify
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '25 Días' from grid 'General Table' to be visible 
        And I select option 'Modificar' from ellipsis with value '25 Días'
        And I load file 'AbsencesRequested' from 'VismaLatam/People' 
        Then I wait until DOM is loaded
        And I wait for '4' seconds
        Then I set field 'Description' with 'Esto es una prueba de automatización en Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Delete
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '25 Días' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '25 Días'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'


    Scenario: Creation - Licencia por maternidad 
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress Automation'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress Automation'
        Then I wait until DOM is loaded
        And I wait for '**search/api/search-engines/employees?name=&lastName=1234576163%20-%20Cypress%20Automation,%20Absences**' backend request with 'GET' method and taged as 'Carga'
        Then I click on 'RangeDaysFrom'
        Then I set field 'RangeDaysFrom' with '01/04/2024'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '29/06/2024'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Licencia por Maternidad'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia por Maternidad'
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Modify
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '90 Días' from grid 'General Table' to be visible 
        And I select option 'Modificar' from ellipsis with value '90 Días'
        Then I wait until DOM is loaded
        And I wait for '4' seconds
        And I load file 'AbsencesRequested' from 'VismaLatam/People' 
        Then I set field 'Description' with 'Esto es una prueba de automatización en Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page


    Scenario: Creation - Licencia por excedencia 

        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress Automation'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress Automation'
        Then I wait until DOM is loaded
        And I wait for '**search/api/search-engines/employees?name=&lastName=1234576163%20-%20Cypress%20Automation,%20Absences**' backend request with 'GET' method and taged as 'Carga'
        Then I click on 'RangeDaysFrom'
        Then I set field 'RangeDaysFrom' with '30/06/2024'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '31/10/2024'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Período de Excedencia'
        Then I wait until DOM is loaded
        And I click on contain 'Período de Excedencia'
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Modify
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '124 Días' from grid 'General Table' to be visible 
        And I select option 'Modificar' from ellipsis with value '124 Días'
        Then I wait until DOM is loaded
        And I wait for '4' seconds
        And I load file 'AbsencesRequested' from 'VismaLatam/People' 
        Then I set field 'Description' with 'Esto es una prueba de automatización en Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page


     Scenario: Delete Periodo de excedencia 
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '124 Días' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '124 Días'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

    Scenario: Delete Lic por Maternidad 
        And I validate user to be on the 'AbsencesRequested' page
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '1234576163'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '90 Días' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '90 Días'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
