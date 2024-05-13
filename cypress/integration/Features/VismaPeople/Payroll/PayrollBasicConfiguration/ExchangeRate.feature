@vlpeople-flaky
Feature: Payroll -> Tipos de Divisas

    As a user I want to:
        - Navigate for the differents menues option and links
        - Create Exchange Rates
        - Modify Exchange Rates
        - Delete Exchange Rates

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
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        And I go to card 'Currencies'
        And I go to card 'Exchanges'
        Given I wait request 'Exchanges URL' and save with alias 'exchanges'
        Given I wait request 'Currencies Exchange URL' and save with alias 'currencies'
        Given I wait request 'ExchangeRate By Id URL' and save with alias 'exchangeratebyid'

    Scenario: Creation
        And I load file 'Exchanges' from 'VismaLatam/Payroll'
        And I validate user to be on the 'Exchange Rates' page
        Then I click button 'Create'
        And I validate user to be on the 'Exchange Rates Create' page
        And I wait until 'Payroll Skeleton' not exist
        Then I clean field 'Value'
        Then I set field 'Value' with '1000.9999'
        Then I clean field 'Validity Date'
        Then I set field 'Validity Date' with '01/01/2024'
        And I click on list 'Destination Currency' after wait for 'currencies' then type option 'Dólar'
        Then I click on list 'Origin Currency' then select option 'Peso Argentino'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'
        And I validate user to be on the 'Exchange Rates' page
        Then I wait until spinner 'Spinner' not exist
        Then I validate 'Card USD Value' to have text 'ARS 1000.9999'


    Scenario: Navigation
        And I load file 'Breadcrumb' from 'Commons'
        And I validate user to be on the 'Exchange Rates' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Currencies' page
        Then I wait until DOM is loaded
        And I go to card 'Exchanges'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Exchange Rates' page
        Then I click breadcrumb 'Payroll Exchanges'
        And I validate user to be on the 'Currencies' page
        And I go to card 'Exchanges'
        And I load file 'Exchanges' from 'VismaLatam/Payroll'
        And I validate user to be on the 'Exchange Rates' page
        Then I click button 'Create'
        And I validate user to be on the 'Exchange Rates Create' page
        Then I click button 'BackArrow'
        Then I wait for backend request taged as 'exchanges'
        Then I click on 'Ellipsis Card 1'
        Then I click button 'Modify'
        And I validate user to be on the 'Exchange Rates Modify' page
        And I wait until 'Payroll Skeleton' not exist
        Then I clean field 'Value'
        Then I set field 'Value' with '1234'
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Modal Cancel'
        Then I validate user to be on the 'Exchange Rates Modify' page
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Accept'
        And I validate user to be on the 'Exchange Rates' page

    Scenario: Modify
        And I load file 'Exchanges' from 'VismaLatam/Payroll'
        And I validate user to be on the 'Exchange Rates' page
        Then I click on 'Ellipsis Card 1'
        Then I click button 'Modify'
        And I validate user to be on the 'Exchange Rates Modify' page
        And I wait until 'Payroll Skeleton' not exist
        Then I wait for backend request taged as 'exchangeratebyid'
        Then I clean field 'Value'
        Then I set field 'Value' with '1500'
        Then I clean field 'Validity Date'
        Then I set field 'Validity Date' with '31/12/2023'
        And I click on disabled 'Destination'
        And I click on disabled 'Origin'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'Exchange Rates' page
        Then I wait until spinner 'Spinner' not exist
        Then I validate 'Card USD Value' to have text 'ARS 1500'

    Scenario: Delete
        And I load file 'Exchanges' from 'VismaLatam/Payroll'
        And I validate user to be on the 'Exchange Rates' page
        Then I click on 'Ellipsis Card 1'
        Then I click button 'Delete'
        Then I click Modal button 'Accept'