@vlpeople-nightly
Feature: payroll -> Reports

    As a user I want to:
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
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I go to card 'ReportesPayroll'
        Then I wait until DOM is loaded
        And I load file 'ReportsPayroll' from 'VismaLatam/Payroll' 
    Scenario: Filter
        Then I click on 'Menu'
        Then I wait until DOM is loaded
        And I click on contain 'ADMINISTRACIÓN'
        Then I wait until DOM is loaded
        Then I click on 'Report Type'
        Then I wait until DOM is loaded
        And I click on contain 'CONFIGURACIÓN'
        Then I wait until DOM is loaded
        Then I click on empty space
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'Name' with 'Matriz de Conceptos Configurados'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons' 
        Then I click on 'Clear Filter' 
        And I load file 'ReportsPayroll' from 'VismaLatam/Payroll'
        Then I click on 'Menu' 
        And I click on contain 'GESTION' 
        Then I click on 'Report Type' 
        And I click on contain 'ACUMULADORES' 
        Then I click on empty space  
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'Name' with 'Detalle por Acumulador Mensual' 
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        And I load file 'Chip' from 'Commons'
        Then I click on 'Chip Menu' 
        Then I click on 'Chip Type' 
        And I load file 'FilterMenu' from 'Commons'
        Then I clear field 'Name' 
        And I load file 'ReportsPayroll' from 'VismaLatam/Payroll'
        Then I click on 'Menu'
        Then I wait until DOM is loaded
        And I click on contain 'GESTION'
        Then I wait until DOM is loaded
        Then I click on 'Report Type'
        Then I wait until DOM is loaded
        And I set field 'Report Type' with 'CONCEPTOS'
        And I click on contain 'CONCEPTOS'
        Then I wait until DOM is loaded
        Then I click on empty space
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'Name' with 'Detalle por concepto procesado'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I click button 'Apply Filter'

    Scenario: Navigation
        Then I click on 'Menu'
        Then I wait until DOM is loaded
        And I click on contain 'ADMINISTRACIÓN'
        Then I wait until DOM is loaded
        Then I click on 'Report Type'
        Then I wait until DOM is loaded
        And I click on contain 'CONFIGURACIÓN'
        Then I wait until DOM is loaded
        Then I click on empty space
        And I load file 'FilterMenu' from 'Commons'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Matriz de Conceptos Configurados'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        And I select option 'Visualizar' from ellipsis with value 'Administración'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ReportsPayroll Visualize' page
        Then I wait until DOM is loaded
        And I wait for '5' seconds
        Then I click button 'BackArrow'
        And I double click 'Matriz de Conceptos Configurados'
        Then I wait until DOM is loaded
        And I validate user to be on the 'ReportsPayroll Visualize' page
        And I wait for '20' seconds
        Then I click button 'BackArrow'