@vlpeople-nightly
Feature: People -> Occupational Health

       As a user I want to:
       - Navigate through different modules from Occupational Health
       - Create a new Medical service for an employee

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
              And I go to card 'MedicalServices'
              Then I load file 'MedicalServices' from 'VismaLatam/People'

       #  Scenario: Navigation
       #  Then I wait until DOM is loaded
       #  And I validate user to be on the 'MedicalServices' page
       #  Then I click button 'Create'
       #  And I validate user to be on the 'MedicalServices Create' page
       #  Then I wait until DOM is loaded
       #  Then I click button 'BackArrow'
       #  And I validate user to be on the 'MedicalServices' page
       #  Then I wait until DOM is loaded
       #  Then I click button 'LittleBackArrow'
       #  And I validate user to be on the 'OccupationalHealth' page

       @Smoke
       Scenario: Create a Medical Service
              Then I wait until DOM is loaded
              Then I click button 'Create'
              Then I wait until DOM is loaded
              And I set field 'Company' with 'Cypress'
              And I set field 'Phone number' with '15599985548'
              Then I click button 'Cancel'
              Then I wait until DOM is loaded
              Then I click button 'Create'
              Then I wait until DOM is loaded
              And I set field 'Company' with 'Cypress'
              And I set field 'Phone number' with '15599985548'
              Then I click button 'Save'
              Then I validate image 'Create Image' with text 'Create Text' is visible
              Then I click button 'Finish'
              Then I wait until 'Spinner' is not visible
              And I validate user to be on the 'MedicalServices' page

       @Smoke
       Scenario: Validation when creating an existing Medical Service
              Then I wait until DOM is loaded
              Then I click button 'Create'
              Then I wait until DOM is loaded
              And I set field 'Company' with 'Cypress'
              And I set field 'Phone number' with '15599985548'
              Then I click button 'Save'
              And I validate 'Medical Service already exists' toast of type 'Danger' with message 'El servicio médico ya existe' is visible
              Then I click button 'Cancel'

       @Smoke
       Scenario: Modify a Medical Service
              And I load file 'MedicalServices' from 'VismaLatam/People'
              Then I set field 'Medical Service' with 'Cypress'
              Then I select option 'Modificar' from ellipsis with value '15599985548'
              Then I clear field 'Company'
              Then I validate 'Company Validation' to have text 'Campo obligatorio'
              And I set field 'Company' with 'Cypress'
              Then I clear field 'Phone number'
              Then I validate 'Phone Validation' to have text 'Campo obligatorio'
              And I set field 'Phone number' with '08004446666'
              Then I click button 'Save'
              Then I wait until 'Spinner' is not visible
              And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

       @Smoke
       Scenario: Delete a Medical Service
              And I load file 'MedicalServices' from 'VismaLatam/People'
              Then I set field 'Medical Service' with 'Cypress'
              Then I select option 'Eliminar' from ellipsis with value '08004446666'
              Then I click button 'Cancel'
              Then I wait until DOM is loaded
              Then I select option 'Eliminar' from ellipsis with value '08004446666'
              Then I click button 'Accept'
              Then I wait until 'Spinner' is not visible
              And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'