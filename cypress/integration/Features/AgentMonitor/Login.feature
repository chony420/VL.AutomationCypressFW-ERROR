
Feature: Login Agent Monitor

    As a user I want to:
    - Log into and out from the site
    - Check Login negative cases
    
    #(Repeats on all scenarios)
    Background:
        Given I navigate to 'AgentMonitor'
    
     @AM1
    Scenario: User logs in and out as superadmin
   
        When I login on 'AgentMonitor' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'AgentMonitor'
        Then I wait for '2' seconds
        And I click on 'LogOut'
        Then I wait for '2' seconds
        And I click on 'ConfirmLogOut'
    @AM2
    Scenario: User logs in and navigate to Process
    
        When I login on 'AgentMonitor' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'AgentMonitor'
        Then I wait for '2' seconds
        And I click on 'Agents'
        Then I wait for '2' seconds
        And I click on 'LogOut'
        And I click on 'ConfirmLogOut'