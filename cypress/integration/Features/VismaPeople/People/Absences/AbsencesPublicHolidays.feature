@vlpeople-flaky
Feature: People -> Absences -> Public Holidays

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
        # Given I wait request 'Absences All URL' and save with alias 'absences'
        # Given I wait request 'AbsenceValidation URL' and save with alias 'absences-validation' 
        And I go to card 'AbsencesPublicHolidays'
        And I validate user to be on the 'PublicHolidays' page
        And I load file 'PublicHolidays' from 'VismaLatam/People'
        Given I wait request 'Country URL' and save with alias 'country'

 Scenario: Navigation 
        Then I click button 'Create'
        And I validate user to be on the 'PublicHolidays Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PublicHolidays' page
        Then I click button 'Create'
        And I validate user to be on the 'PublicHolidays Create' page
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PublicHolidays' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page
        And I go to card 'AbsencesPublicHolidays'
        And I validate user to be on the 'PublicHolidays' page
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Absences'
        Then I wait until DOM is loaded
        And I go to card 'AbsencesPublicHolidays'
        And I validate user to be on the 'PublicHolidays' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Absence'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page
        And I go to card 'AbsencesPublicHolidays'
        And I validate user to be on the 'PublicHolidays' page
        


Scenario: Validations
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on list 'Country' after wait for 'country' then type option 'ARGENTINA'
        Then I click on list 'Type Public Holiday' then type option 'Nacional'
        Then I set field 'Description' with 'Holiday type'
        And I clear field 'Description'
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with 'Primero de Mayo'
        Then I set field 'Date' with '1/05/2024'
        Then I clear field 'Date'
        Then I click on empty space
        Then I set field 'Date' with '1/05/2024'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Save'
        And I validate 'Public Holiday Already Exists' toast of type 'Danger' with message ' El feriado indicado ya existe. ' is visible


Scenario: Creation 
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click on list 'Country' after wait for 'country' then type option 'ARGENTINA'
        Then I click on list 'Type Public Holiday' then type option 'Nacional'
        And I set field 'Description' with 'ABM Feriado'
        Then I set field 'Date' with '1/06/2024'
        Then I click button 'Save'
        And I validate user to be on the 'Public Holiday Success' page
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'     
        And I click button 'Finish'

Scenario: Modify 
        Then I select option 'Modificar ' from ellipsis with value 'ABM Feriado' 
        Then I clear field 'Description'
        And I set field 'Description' with 'ABM Feriado - Modificación'
        And I clear field 'Date'
        And I set field 'Date' with '1/07/2024'
        Then I 'mark' checkbox in 'Work Day'
        Then I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'     
        And I validate user to be on the 'PublicHolidays' page

Scenario: Delete 
        Then I select option 'Eliminar' from ellipsis with value 'ABM Feriado - Modificación' 
        Then I click button 'Cancel'
        Then I select option 'Eliminar' from ellipsis with value 'ABM Feriado - Modificación' 
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'






