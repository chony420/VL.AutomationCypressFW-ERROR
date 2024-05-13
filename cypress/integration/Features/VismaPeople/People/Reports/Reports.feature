@people-reports
Feature: People -> Reports

    As a user I want to:
        - Navigate for the differents filters
        - Navigate for the differents menues option and links
   

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
        And I go to card 'Reports'
        Then I wait until DOM is loaded
        And I load file 'Reports' from 'VismaLatam/People'

    # Scenario: Filter
    #     Then I click on 'Menu'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'ADMINISTRACION'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Report Type'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'AGENDA'
    #     Then I wait until DOM is loaded
    #     Then I click on empty space
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I set field 'Name' with 'Agenda interna'
    #     Then I wait until DOM is loaded
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I click on 'Apply'
    #     Then I wait until DOM is loaded
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Clear Filter'
    #     Then I wait until DOM is loaded
    #     And I load file 'Reports' from 'VismaLatam/People'
    #     Then I click on 'Menu'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'COLABORADORES'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Report Type'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'LEGALES'
    #     Then I wait until DOM is loaded
    #     Then I click on empty space
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I wait until DOM is loaded
    #     Then I set field 'Name' with 'Certificado de trabajo'
    #     Then I wait until DOM is loaded
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Apply'
    #     Then I wait until DOM is loaded
    #     And I load file 'Chip' from 'Commons'
    #     Then I click on 'Chip Menu'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Chip Type'
    #     Then I wait until DOM is loaded
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I clear field 'Name'
    #     Then I wait until DOM is loaded
    #     And I load file 'Reports' from 'VismaLatam/People'
    #     Then I click on 'Menu'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'ADMINISTRACION'
    #     Then I wait until DOM is loaded
    #     Then I click on 'Report Type'
    #     Then I wait until DOM is loaded
    #     And I click on contain 'GESTION'
    #     Then I wait until DOM is loaded
    #     Then I click on empty space
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I set field 'Name' with 'Reporte de familiares'
    #     Then I wait until DOM is loaded
    #     And I load file 'FilterMenu' from 'Commons'
    #     Then I click on 'Apply'

    Scenario: Navigation
        Then I click on 'Menu' from shadow root 'FrontEnd Reports'
        Then I wait until DOM is loaded
        Then I click on 'Administracion'
        Then I wait until DOM is loaded
        Then I click on 'Report Type' from shadow root 'FrontEnd Reports'
        Then I wait until DOM is loaded
        And I click on 'Agenda'
        Then I wait until DOM is loaded
        Then I click on empty space
        And I load file 'FilterMenu' from 'Commons'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Agenda interna' from shadow root 'FrontEnd Reports'
        Then I wait until DOM is loaded
        Then I click on 'Apply Filter' from shadow root 'FrontEnd Reports'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        Then I select option 'Visualizar' from ellipsis with value 'Administracion' inside shadow root 'FrontEnd Reports'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Reports Visualize' page
        Then I wait until spinner 'ReportSpinner' not exist
        Then I force click button 'BackArrow' from shadow root 'FrontEnd Reports'
        # And I double click 'Agenda interna'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Reports Visualize' page 
        # Then I wait until spinner 'ReportSpinner' not exist
        # Then I force click button 'BackArrow'