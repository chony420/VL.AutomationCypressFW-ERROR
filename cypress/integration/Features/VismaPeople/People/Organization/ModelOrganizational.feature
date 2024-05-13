@vlpeople-flaky
Feature: People -> Organization -> Model Organizational 

    As a user I want:
        - Navigate for the differents menues option and links
        - Validate of mandatory fields
        - Create Model Organizational day type 
        - Modify Model Organizational day type
        - Delete Model Organizational day type


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
        And I go to card 'Organizacion'
        Then I wait until DOM is loaded
        And I go to card 'Modelo Organizational'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacional' page
        And I load file 'ModelOrganizational' from 'VismaLatam/People'

      Scenario: Navigation
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Modelo Organizational'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacional' page
        Then I click breadcrumb 'People'
        And I validate user to be on the 'People' page
        And I go to card 'Organizacion'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Modelo Organizational'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacional' page
        Then I click breadcrumb 'Organizacion'
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Modelo Organizational'
        And I validate user to be on the 'ModeloOrganizacional' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacionalCreate' page        
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacional' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacionalCreate' page        
        Then I click button 'BackArrow'
        And I validate user to be on the 'ModeloOrganizacional' page

      Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ModeloOrganizacionalCreate' page        
        Then I click on 'Description'
        Then I click on empty space
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        # Then I validate button 'Save' is disabled


