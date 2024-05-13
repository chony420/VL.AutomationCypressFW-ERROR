Feature: Login Visma People DEV

    As a user I want to:
    - Log into and out from the site
    - Check Login negative cases
    
    #(Repeats on all scenarios)
    Background:
        Given I navigate to 'VismaLatam'
    @LoginDEV
    Scenario: User logs in and out as superadmin
    
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Postman DEV'
        And I click on contain 'Postman DEV'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait for '2' seconds
        And I click on 'UserProfile'
        Then I wait for '2' seconds
        And I click on contain 'Cerrar sesión'
