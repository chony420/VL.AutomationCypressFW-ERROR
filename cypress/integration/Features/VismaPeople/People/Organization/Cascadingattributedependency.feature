@vlpeople-flaky
Feature: People -> Organization -> Cascading attribute dependency 

    As a user I want:
        - Navigate for the differents menues option and links
        - Validate of mandatory fields 

        
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
        And I go to card 'Cascading attribute dependency'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page
        And I load file 'Cascadingattributedependency' from 'VismaLatam/People'
    
      Scenario: Navigation
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Cascading attribute dependency'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page
        Then I click breadcrumb 'People'
        And I validate user to be on the 'People' page
        And I go to card 'Organizacion'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Cascading attribute dependency'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page
        Then I click breadcrumb 'Organizacion'
        And I validate user to be on the 'Organizacion' page
        And I go to card 'Cascading attribute dependency'
        And I validate user to be on the 'Cascading attribute dependency' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page        
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency' page        
        Then I click button 'BackArrow'
        And I validate user to be on the 'Cascading attribute dependency' page

      Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Cascading attribute dependency create' page        
        Then I click on 'Description Cascading'
        Then I click on empty space
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        Then I click on 'Main Structure Type'
        Then I click on empty space
        Then I validate 'Main Structure Type Validation' to have text 'Campo obligatorio'
        Then I validate button 'Continue Cascading' is disabled
        Then I set field 'Description Cascading' with 'Cypress cascading'
        Then I click on list 'Main Structure Type' then type option 'Actividad SICOSS'
        Then I set field 'Main structure' with 'Programa'
        Then I click button 'MoveAllAssigned'
        And I click button 'Continue'
        And I click on 'Actividad SICOSS' 
        Then I click on empty space
        Then I validate 'Main structure validation' to have text 'Campo obligatorio'
        And I click on 'Programa' 
        Then I click on empty space
        Then I validate 'Programa validation' to have text 'Campo obligatorio'
