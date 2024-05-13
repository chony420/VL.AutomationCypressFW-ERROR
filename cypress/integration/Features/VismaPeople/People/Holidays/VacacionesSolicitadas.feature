@vlpeople-flaky
Feature: People -> Vacaciones -> Vacaciones Solicitadas

    As a user I want:
        - Navigate for the differents menues option and links
        - Create vacation request
        - Navigate for the differents filters
        - Modify vacation request
        - View fiel vacation request
        - Cancel delete vacation request
        - Delete vacation request

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
        And I go to card 'Vacaciones'
        Then I wait until DOM is loaded
        Then I wait request 'Holidays URL' and save with alias 'holidays'
        Then I wait request 'Holidays Balance URL' and save with alias 'holidaysbalance'
        Then I wait request 'Days to request URL' and save with alias 'daystorequest'
        Then I wait request 'Holidays Cy URL' and save with alias 'holidaysCy'
        And I go to card 'VacacionesSolicitadas'
    
    Scenario: Navigation
        Then I wait for backend request taged as 'holidays'
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Create' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas' page
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas' page
        Then I wait until DOM is loaded
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Vacaciones' page
        Then I wait until DOM is loaded
        And I go to card 'VacacionesSolicitadas'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas' page
        Then I wait until DOM is loaded
        Then I click button 'Imports'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Import' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas' page
        Then I wait until DOM is loaded
        Then I click breadcrumb 'Vacaciones'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Vacaciones' page

    Scenario: Validation
        Then I wait for backend request taged as 'holidays'
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'
        And I set field 'SearchCollaborator' with 'T'
        Then I clear field 'SearchCollaborator'
        Then I click on empty space
        Then I validate hover 'SearchCollaborator (Obligatory Validation)' with 'obligatorio' is visible
        Then I click on 'RangeDaysTo'
        Then I click on empty space
        Then I validate hover 'RangeDaysTo (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'ManualSelection'
        Then I validate hover 'SelectionHolidayPeriod (Obligatory Validation)' with 'obligatorio' is visible
              
    Scenario: Creation
        Then I click button 'Create'
        Then I wait for backend request taged as 'holidays'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Create' page
        Then I wait until DOM is loaded
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click on 'RangeDaysFrom'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysFrom' with '01/02/2023'
        Then I click on empty space
        Then I click on 'RangeDaysTo'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysTo' with '02/02/2023'
        Then I click on empty space 
        Then I click button 'Save' 
        And I validate user to be on the 'VacacionesSolicitadas Success' page
        Then I click button 'Finish'
        And I validate user to be on the 'VacacionesSolicitadas' page

    Scenario: Filter
        And I load file 'FilterMenu' from 'Commons'
        Then I wait for backend request taged as 'holidays'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Status'
        Then I wait until DOM is loaded
        And I click on contain 'Aprobada'
        Then I wait until DOM is loaded
        # And I set field 'HolidayModel' with 'FE Vacation Model'
        # Then I wait until DOM is loaded
        # And I click on contain 'FE Vacation Model'
        # Then I wait until DOM is loaded
        Then I click on 'Period'
        Then I wait until DOM is loaded
        And I click on contain '2022'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy' 
        And I load file 'Chip' from 'Commons'
        Then I click on 'Chip Status'
        Then I wait until DOM is loaded
        # Then I click on 'Chip HolidayModel'
        # Then I wait until DOM is loaded
        Then I click on 'Chip Period'
        Then I wait until DOM is loaded
        Then I click on 'Chip LastName'
        Then I wait until DOM is loaded
        Then I click on 'Chip Name'
        Then I wait until DOM is loaded
        Then I click on 'Chip FileNumber'
        Then I wait for backend request taged as 'holidays' 
        And I load file 'FilterMenu' from 'Commons' 
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        Then I wait until DOM is loaded
        Then I click on 'Clear Filter'

    Scenario: Modify
        And I load file 'FilterMenu' from 'Commons'
        Then I wait for backend request taged as 'holidays'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click on 'Status'
        Then I wait until DOM is loaded
        And I click on contain 'Aprobada'
        Then I wait until DOM is loaded
        Then I click on 'HolidayModel'
        Then I wait until DOM is loaded
        And I click on contain 'FE Vacation Model'
        Then I wait until DOM is loaded
        Then I click on 'Period'
        Then I wait until DOM is loaded
        And I click on contain '2022'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy'  
        And I select option 'Modificar' from ellipsis with value '39795'
        Then I wait until DOM is loaded
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'
        Then I wait for backend request taged as 'holidaysbalance'
        Then I wait until DOM is loaded
        Then I click on 'RangeDaysTo'
        Then I clean field 'RangeDaysTo'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysTo' with '05/02/2023'  
        Then I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'VacacionesSolicitadas' page 

    Scenario: View File
        And I load file 'FilterMenu' from 'Commons'
        Then I wait for backend request taged as 'holidays'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy' 
        And I select option 'Ver ficha' from ellipsis with value '39795'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Ficha' page

    Scenario: Cancel Delete
        And I load file 'FilterMenu' from 'Commons'
        Then I wait for backend request taged as 'holidays'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy'  
        And I select option 'Eliminar' from ellipsis with value '39795'
        Then I wait until DOM is loaded
        Then I click Modal button 'Modal Cancel'
        
    Scenario: Delete 
        Then I wait for backend request taged as 'holidays'
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy' 
        And I select option 'Eliminar' from ellipsis with value '39795'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 

    Scenario: Creation - Partial
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Create' page
        Then I wait until DOM is loaded
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click on 'RangeDaysFrom'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysFrom' with '10/02/2023'
        Then I click on empty space
        Then I click on 'RangeDaysTo'
        Then I wait until DOM is loaded
        Then I set field 'RangeDaysTo' with '10/02/2023'
        Then I click on empty space 
        Then I wait until DOM is loaded
        Then I click on 'Partial'
        Then I click on empty space
        #Then I click button 'Save'
        Then I click button 'Save'
        And I validate user to be on the 'VacacionesSolicitadas Success' page
        Then I click button 'Finish'
        And I validate user to be on the 'VacacionesSolicitadas' page
 

    Scenario: Delete - Partial
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'cypress'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'FE'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '39795'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysCy'  
        And I select option 'Eliminar' from ellipsis with value '39795'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 