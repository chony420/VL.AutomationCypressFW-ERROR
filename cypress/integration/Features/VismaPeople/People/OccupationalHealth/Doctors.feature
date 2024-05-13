@vlpeople-nightly
Feature: People -> Occupational Health
 
 As a user I want to:
        - Navigate through different modules from Occupational Health
        - Create a new Doctor
     
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
        And I go to card 'Doctors' 
        Then I load file 'Doctors' from 'VismaLatam/People'

       @Smoke
        Scenario: Navigation
        Then I wait until DOM is loaded
        And I validate user to be on the 'Doctors' page
        Then I click button 'Create'
        And I validate user to be on the 'Doctors Create' page 
        Then I wait until DOM is loaded 
        Then I click button 'BackArrow'
        And I validate user to be on the 'Doctors' page
        Then I wait until DOM is loaded
        Then I click button 'LittleBackArrow'
        And I validate user to be on the 'OccupationalHealth' page

        @Smoke
        Scenario: Create a Doctor
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded 
        And I set field 'Name' with 'Cypress'
        And I set field 'Surname' with 'Cypress'
        And I set field 'Enrollment' with 'MN 23699852'
        And I set field 'Enrollment Expiration Date' with '14/08/2016'
        And I set field 'Document Number' with '18667985'
        And I set field 'Document Expiration Date' with '14/03/2025'
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded 
        And I set field 'Name' with 'Cypress'
        And I set field 'Surname' with 'Cypress'
        And I set field 'Enrollment' with 'MN 23699852'
        And I set field 'Enrollment Expiration Date' with '14/08/2016'
        And I set field 'Document Number' with '18667985'
        And I set field 'Document Expiration Date' with '4/03/2025'
        # Agregar paso para validar que el boton guardar se pone en color naranja
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'HealthApp Success' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        Then I click button 'Finish'
     
        @Smoke
        Scenario: Validation when creating an existing Doctor
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded 
        And I set field 'Name' with 'Cypress'
        And I set field 'Surname' with 'Cypress'
        And I set field 'Enrollment' with 'MN 23699852'
        And I set field 'Enrollment Expiration Date' with 'asdf'
        Then I validate 'Enrollment Expiration Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I set field 'Enrollment Expiration Date' with '14/08/2016'
        And I set field 'Document Number' with '18667985'
        And I set field 'Document Expiration Date' with 'tyrt'
        Then I validate 'Document Expiration Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I set field 'Document Expiration Date' with '14/03/2025'
        Then I click button 'Save'
        And I validate 'Doctor Already Exists' toast of type 'Danger' with message 'El personal médico ya existe' is visible
        Then I click button 'Cancel'

        @Smoke
        Scenario: Modify a Doctor
        And I load file 'Doctors' from 'VismaLatam/People'
        Then I set field 'Filter Doctors' with 'Cypress'
        Then I select option 'Modificar' from ellipsis with value 'MN 23699852'
        Then I clear field 'Name'
        Then I validate 'First Name Validation' to have text 'Campo obligatorio'
        And I set field 'Name' with 'Cypress'
        Then I clear field 'Surname'
        Then I validate 'Surname Validation' to have text 'Campo obligatorio'
        And I set field 'Surname' with 'Cypress'
        Then I clear field 'Enrollment'
        Then I validate 'Enrollment Validation' to have text 'Campo obligatorio'
        And I set field 'Enrollment' with 'MN 19856871'
        Then I clear field 'Enrollment Expiration Date'
        Then I validate 'Enrollment Expiration Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I set field 'Enrollment Expiration Date' with '01/09/2018'
        Then I clear field 'Document Number'
        Then I validate 'Document Number Validation' to have text 'Campo obligatorio'
        And I set field 'Document Number' with '13087987'
        Then I clear field 'Document Expiration Date'
        Then I validate 'Document Expiration Date Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        And I set field 'Document Expiration Date' with '25/03/2023'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

        @Smoke
        Scenario: Delete a Doctor
        And I load file 'Doctors' from 'VismaLatam/People'
        Then I set field 'Filter Doctors' with 'Cypress'
        Then I select option 'Eliminar' from ellipsis with value 'MN 19856871'
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        Then I select option 'Eliminar' from ellipsis with value 'MN 19856871'
        Then I click button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'