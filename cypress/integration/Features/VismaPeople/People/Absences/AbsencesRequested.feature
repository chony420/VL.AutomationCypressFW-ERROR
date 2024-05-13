@vlpeople-nightly
Feature: People -> Absences -> Absences Requested

    As a user I want:
        - Navigate for the differents menues option and links
        - Validation of mandatory fields
        - Creation holiday models
        - Modify holiday models
        - Duplicate holiday models
        - Cancel Delete holiday models
        - Delete holiday models
        - Inactivate Vacation Models
        - Activate Vacation Models

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

    @Smoke
    Scenario: Navigation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        Then I click button 'Create'
        And I wait for '1' seconds
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page
        Then I wait until DOM is loaded
        And I go to card 'AbsencesRequested'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded
        Then I click button 'Imports'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Import' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded
        Then I click button 'Imports'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Import' page
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded
        Then I click breadcrumb 'Absences'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page
    
    @Smoke
    Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        And I set field 'SearchCollaborator' with 'T'
        Then I clear field 'SearchCollaborator'
        Then I wait until DOM is loaded
        Then I validate hover 'SearchCollaborator (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'RangeDaysTo'
        Then I click on empty space
        # Then I validate hover 'RangeDaysTo (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'AbsenceType'
        Then I click on empty space
        Then I validate hover 'AbsenceType (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        Then I click Modal button 'Modal Cancel'
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until 'Filter Skeleton' not exist
        And I wait for backend request taged as 'absences'
        Then I wait until DOM is loaded
        Then I click button 'Imports'
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I wait until DOM is loaded
        Then I click on 'ImportTemplate'
        Then I click on empty space
        Then I validate hover 'ImportTemplate (Obligatory Validation)' with 'obligatorio' is visible

    Scenario: Creation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I wait for '**/search/api/search-engines/employees?name=&lastName=39795%20-%20Cypress%20(No%20Borrar)**' backend request with 'GET' method and taged as 'Carga'
        Then I click on 'RangeDaysFrom'
        Then I set field 'RangeDaysFrom' with '01/02/2030'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '01/02/2030'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Licencia por Examen'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia por Examen'
        Then I wait until DOM is loaded
        Then I click on 'PartialAbsence'
        Then I wait until DOM is loaded
        Then I click on 'AssignAbsenceTimeRange'
        Then I wait until DOM is loaded
        Then I click on 'FixedSchedule'
        Then I wait until DOM is loaded
        Then I set field 'StartTime' with '08'
        Then I wait until DOM is loaded
        Then I set field 'StartMinute' with '15'
        Then I wait until DOM is loaded
        Then I set field 'EndTime' with '12'
        Then I wait until DOM is loaded
        Then I set field 'EndMinute' with '47'
        Then I wait until DOM is loaded
        Then I click on 'AttachCertificate'
        Then I wait until DOM is loaded
        And I wait for backend request taged as 'absences-validation'
        Then I wait until DOM is loaded
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

 @Smoke
    Scenario: Filter
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        #Then I click on 'AbsenceStatus'
        #Then I wait until DOM is loaded
        #And I click on contain 'Aprobada'
        #Then I wait until DOM is loaded
        Then I click on 'Country'
        Then I wait until DOM is loaded
        And I click on contain 'ARGENTINA'
        Then I wait until DOM is loaded
        Then I click on 'AbsenceType'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia Enfermedad'
        Then I wait until DOM is loaded
        Then I click on 'AbsenceDateRangePanel'
        Then I wait until DOM is loaded
        Then I set field 'AbsenceDateFrom' with '01/01/2000'
        Then I wait until DOM is loaded
        Then I set field 'AbsenceDateTo' with '01/01/2023'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        #Then I click on 'Filter'
        And I wait for '2' seconds
        Then I wait until DOM is loaded
        #Then I click on 'Filter'
        Then I wait until DOM is loaded
        And I load file 'Chip' from 'Commons'
        Then I click on 'Chip AbsenceStatus'
        Then I wait until DOM is loaded
        Then I click on 'Chip Country'
        Then I wait until DOM is loaded
        Then I click on 'Chip AbsenceType'
        Then I wait until DOM is loaded
        Then I click on 'Chip LastName'
        Then I wait until DOM is loaded
        Then I click on 'Chip Name'
        Then I wait until DOM is loaded
        Then I click on 'Chip FileNumber'
        Then I wait until DOM is loaded
        Then I click on 'Chip AbsencePeriodRange'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I wait until DOM is loaded
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        Then I click on 'Clear Filter'
    
    Scenario: visualize
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I select option 'Visualizar' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested View' page
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
    
    Scenario: View File
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
       Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I select option 'Ver ficha' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested ViewFile' page
        Then I wait until DOM is loaded
        And I load file 'Buttons' from 'Commons'
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Employees' page

    Scenario: Cancel Modify
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I select option 'Modificar' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Modify
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
       Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I select option 'Modificar' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded 
        And I load file 'AbsencesRequested' from 'VismaLatam/People' 
        Then I click on 'RangeDaysFrom'
        Then I click on empty space 
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysFrom' with '02/02/2030'
        Then I click on empty space
        Then I force click 'RangeDaysTo'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysTo' with '03/02/2030'
        Then I click on empty space
        Then I wait until DOM is loaded
        And I set text 'Licencia Enfermedad' on 'AbsenceType' and press enter 
        And I wait for '5' seconds 
        Then I click button 'Feedback Action' 
        Then I set field 'pathologySearch' with 'GRIPE'
        Then I delete last character in 'pathologySearch'
        Then I click autocomplete text 'GRIPE'
        Then I click on 'PartialAbsence'
        Then I wait until DOM is loaded
        Then I click on 'AssignAbsenceTimeRange'
        Then I wait until DOM is loaded
        Then I click on 'NumberOfHours'
        Then I wait until DOM is loaded
        Then I click on 'Hours'
        Then I click on empty space
        Then I validate hover 'Hours (Obligatory Validation)' with 'obligatorio' is visible 
        Then I set field 'Hours' with '5' 
        Then I click on 'AttachCertificate' 
        Then I set field 'Description' with 'Esto es una prueba de automatización en Cypress' 
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Creation for view history
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Create' page
        Then I wait until DOM is loaded
        And I load file 'AbsencesRequested' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click on 'RangeDaysFrom'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysFrom' with '01/05/2030'
        Then I click on empty space
        Then I click on 'RangeDaysTo'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysTo' with '02/05/2030'
        Then I click on empty space
        Then I set field 'AbsenceType' with 'Licencia Enfermedad'
        Then I wait until DOM is loaded
        And I click on contain 'Licencia Enfermedad'
        Then I wait until DOM is loaded
        And I click on 'MarkContinuousAbsence'
        Then I wait until DOM is loaded
        And I load file 'Buttons' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Save Button'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page
        Then I wait until DOM is loaded

    Scenario: view history
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait until 'Paginator' has value '2' 
        And I wait for '8' seconds 
        Then I wait until spinner 'Loading Absences Grid' not exist 
        Then I validate row containing '2 Días' from grid 'General Table' to be visible
        And I select option 'Visualizar' from ellipsis with value '2 Días' 
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Cancel Delete
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '1 Día' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesRequested' page

    Scenario: Delete Continuous Absence
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
       Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '2 Días' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '2 Días'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

    Scenario: Delete
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Apply'
        Then I wait until DOM is loaded
        And I wait for '8' seconds
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I validate row containing '1 Día' from grid 'General Table' to be visible 
        And I select option 'Eliminar' from ellipsis with value '1 Día'
        And I wait for '4' seconds
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

    # Scenario: complaint

    # Scenario: reopening

    # - Ausencia con historial

    # Scenario: View File

    # Scenario: View details

    # Scenario: complaint