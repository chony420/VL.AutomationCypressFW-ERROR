@vlpeople-nightly
Feature: People -> Processes Generated

       As a user I want to:
        - Navigate though People breadcrumb
    
    Background: (Repeats on all scenarios)
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        Then I wait until DOM is loaded
        And I go to card 'ProcessesGenerated'
        Then I wait until DOM is loaded
        And I load file 'ProcessesGenerated' from 'VismaLatam/People'

    Scenario: Navigation
        And I validate user to be on the 'Processes Generated' page 
        Then I click breadcrumb 'People'
        Then I wait until DOM is loaded
        And I validate user to be on the 'People' page
        And I go to card 'ProcessesGenerated'
        Then I wait until DOM is loaded
        #Revisar feedback without results txt
        Then I validate image 'Feedback Search Document Without Results' with text 'Feedback Without Results Txt' is visible
        Then I set field 'Select module' with 'Salud ocupacional'
        #And I click on contain 'Salud ocupacional'
        Then I force click 'Salud ocupacional'
        Then I set field 'Search' with '750'
        Then I select option 'Descargar errores' from ellipsis with value '750'
        And I clear field 'Search'




