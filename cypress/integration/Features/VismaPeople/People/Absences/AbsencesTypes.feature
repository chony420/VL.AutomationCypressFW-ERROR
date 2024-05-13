@vlpeople-nightly
Feature: People -> Absences -> Absences Types

    As a user I want:
        - Navigate for the differents menues option and links

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
        And I go to card 'AbsencesTypes'
        And I validate user to be on the 'AbsencesType' page

        
 Scenario: Navigation 
        Then I click button 'Create'
        And I validate user to be on the 'AbsencesType Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesType' page

        Then I click button 'Create'
        And I validate user to be on the 'AbsencesType Create' page
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'AbsencesType' page

        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page
        And I go to card 'AbsencesTypes'
        And I validate user to be on the 'AbsencesType' page

        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'Absences'
        Then I wait until DOM is loaded
        And I go to card 'AbsencesTypes'
        Then I validate user to be on the 'AbsencesType' page

        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Absence'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Absences' page







