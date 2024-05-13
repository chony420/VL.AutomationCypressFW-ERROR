
Feature: Login Visma Core

    As a user I want to:
    - Log into and out from the site
    - Check Login negative cases
    
    #(Repeats on all scenarios)
    Background:
        Given I navigate to 'VismaCore'
    
    Scenario: User logs in and out as superadmin
    
        When I login on 'VismaCore' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'VismaCore/VismaCoreLogin'
        And I select VismaCore tenant 'Cypress Argentina'
        Then I wait for '2' seconds
        And I click on 'ChooseBtn'
        Then I wait for '2' seconds
        And I click on 'UserLoged'
        And I click on 'CloseSession'

 Scenario: User navigate to ADP
    
        When I login on 'VismaCore' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'VismaCore/VismaCoreLogin'
        And I select VismaCore tenant 'Cypress Argentina'
        Then I wait for '2' seconds
        And I click on 'ChooseBtn'
        Then I wait for '2' seconds
        And I load file 'VismaCoreMenu' from 'VismaCore/VismaCoreLogin'
        And I click on 'ADP'
        Then I wait for '2' seconds

 Scenario: User navigate to Payroll
    
        When I login on 'VismaCore' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'VismaCore/VismaCoreLogin'
        And I select VismaCore tenant 'Cypress Argentina'
        Then I wait for '2' seconds
        And I click on 'ChooseBtn'
        Then I wait for '2' seconds
        And I load file 'VismaCoreMenu' from 'VismaCore/VismaCoreLogin'
        And I click on 'Payroll'
        Then I wait for '2' seconds