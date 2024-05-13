@vlpeople-flaky
Feature: People -> Holiday Day Type

        As a user I want:
        - Navigate for the differents menues option and links
        - Validate of mandatory fields
        - Create Holiday day type
        - Modify Holiday day type
        - Delete Holiday day type

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
                And I go to card 'HolidayDayType'
                And I validate user to be on the 'HolidayDayType' page
                And I load file 'HolidayDayType' from 'VismaLatam/People'

        Scenario: Navigation
                Then I click button 'Previouspage'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Vacaciones' page
                And I go to card 'HolidayDayType'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayType' page
                Then I click breadcrumb 'People'
                And I validate user to be on the 'People' page
                And I go to card 'Vacaciones'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Vacaciones' page
                And I go to card 'HolidayDayType'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayType' page
                Then I click breadcrumb 'Vacaciones'
                And I validate user to be on the 'Vacaciones' page
                And I go to card 'HolidayDayType'
                And I validate user to be on the 'HolidayDayType' page
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayTypeCreate' page
                Then I click button 'Cancel'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayType' page
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayTypeCreate' page
                Then I click button 'BackArrow'

        Scenario: Validation

                Then I click button 'Create'
                Then I wait until DOM is loaded
                Then I click on 'Description'
                # Then I click on empty space
                # Then I validate hover 'Description (Obligatory Validation)' with 'Campo obligatorio' is visible
                Then I validate button 'Save Button' is disabled
                Then I set field 'Description' with 'Corridos'
                Then I validate button 'Save Button' is disabled
                And I click on 'DayType'
                And I click on 'Sunday'
                And I click on 'Monday'
                And I click on 'Tuesday'
                And I click on 'Wednesday'
                And I click on 'Thursday'
                And I click on 'Friday'
                And I click on 'Saturday'
                Then I click on empty space
                Then I validate button 'Save Button' is not disabled
                Then I click button 'Save'
                And I validate 'Holiday Day Type Description Already Exists' toast of type 'Danger' with message ' La descripción del tipo de día ya existe. ' is visible
                And I validate 'Day Type With Same Configuration' toast of type 'Danger' with message ' Ya existe un tipo de día con la misma configuración. ' is visible
                Then I click button 'Icon close'

        Scenario: Creation
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'HolidayDayTypeCreate' page
                And I load file 'HolidayDayType' from 'VismaLatam/People'
                And I set field 'Description' with 'Holiday Day Type Cypress'
                And I click on 'DayType'
                Then I validate button 'Save Button' is disabled
                And I click on 'Monday'
                Then I click on empty space
                Then I validate button 'Save Button' is not disabled
                Then I click button 'Save'
                Then I validate image 'Create Image' with text 'Day Type Successfully Created' is visible
                And I validate user to be on the 'HolidayDayType Success' page
                Then I click button 'Finish'

        Scenario: Modify a day type
                Then I set filter field 'Day Type Filter Grid' with 'Holiday Day Type Cypress'
                Then I select option 'Modificar ' from ellipsis with value 'Holiday Day Type Cypress'
                Then I clear field 'Description'
                Then I set field 'Description' with 'Holiday Day Type Cypress Modificado'
                And I click on 'DayType'
                And I click on 'Sunday'
                Then I click on empty space
                Then I validate button 'Save Button' is not disabled
                Then I click button 'Save'
                And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

        Scenario: Delete a type of day
                Then I set filter field 'Day Type Filter Grid' with 'Holiday Day Type Cypress'
                Then I select option 'Eliminar ' from ellipsis with value 'Holiday Day Type Cypress Modificado'
                Then I click Modal button 'Accept'
                And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'