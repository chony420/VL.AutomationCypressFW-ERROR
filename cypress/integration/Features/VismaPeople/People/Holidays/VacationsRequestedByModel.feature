@vlpeople-flaky
Feature: People -> Vacaciones -> Vacaciones Solicitadas

        - Create vacation request
        - Modify vacation request
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
        Then I wait request 'Holidays Balances M URL' and save with alias 'holidaysbalance'
        Then I wait request 'Days to request URL' and save with alias 'daystorequest'
        Then I wait request 'Holidays M URL' and save with alias 'holidaysm'
        And I go to card 'VacacionesSolicitadas'
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'

    Scenario: Create
        Then I click button 'Create'
        Then I wait for backend request taged as 'holidays'
        Then I wait until DOM is loaded
        And I validate user to be on the 'VacacionesSolicitadas Create' page
        Then I wait until DOM is loaded
        And I load file 'VacacionesSolicitadas' from 'VismaLatam/People'
        Then I set field 'SearchCollaborator' with 'Cypress Modelo L a V'
        Then I wait until DOM is loaded
        And I click on contain 'Cypress Modelo L a V'
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


    Scenario: Modify
        And I load file 'FilterMenu' from 'Commons'
        Then I wait for backend request taged as 'holidays'
        Then I set field 'LastName' with 'Cypress Modelo L a V'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Solicitud'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '1234576164'
        Then I wait until DOM is loaded
        Then I click on 'Status'
        Then I wait until DOM is loaded
        And I click on contain 'Aprobada'
        Then I wait until DOM is loaded
        Then I click on 'HolidayModel'
        Then I wait until DOM is loaded
        And I click on contain 'Modelo Cypress L a V'
        Then I wait until DOM is loaded
        Then I click on 'Period'
        Then I wait until DOM is loaded
        And I click on contain '2023'
        Then I click button 'Apply Filter' 
        Then I wait for backend request taged as 'holidaysm'  
        And I select option 'Modificar' from ellipsis with value '1234576164'
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

    Scenario: Delete 
        Then I wait for backend request taged as 'holidays'
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress Modelo L a V'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Solicitud'
        Then I wait until DOM is loaded
        Then I set field 'FileNumber' with '1234576164'
        Then I click button 'Apply Filter' 
        # Then I wait for backend request taged as 'holidaysCy' 
        And I select option 'Eliminar' from ellipsis with value '1234576164'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 

