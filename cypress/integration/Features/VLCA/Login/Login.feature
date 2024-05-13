Feature: Login VLCA

    As a user I want to:
    - Log into and out from the site
    - Check Login negative cases

    Background: (Repeats on all scenarios)
        Given I navigate to 'VLCA'

    Scenario: User logs in and out as superadmin
        #     When I login on 'VLCA' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'VLCA'
        Then I wait for '2' seconds
        And I click on 'UserProfile'
        Then I wait for '2' seconds
    # And I click on 'ConfirmLogOut'

    Scenario: User logs in and navigate to Roles
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'VLCA'
        Then I wait for '2' seconds
        When I go to module 'SECURITY'
        And I click on 'Roles'
        And I click on 'UserProfile'
        Then I wait for '2' seconds
# And I click on 'ConfirmLogOut'