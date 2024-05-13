Feature: VLCM -> JobMonitor

  Background:
    Given I login on 'VismaLatam' as 'superadmin'
    Then I validate user to be on the 'Login' page
    And I load file 'Login' from 'Commons/Login'
    And I set field 'Database' with 'Cypress Argentina'
    And I click on contain 'Cypress Argentina'
    Then I click on 'ChooseBtn'
    And I validate user to be on the 'Home' page
    Then I wait until DOM is loaded
    Then I click button 'Carrousel Next Button'
    Then I click button 'Carrousel Next Button'
    Then I wait until DOM is loaded
    And I load file 'Home' from 'VLCM'
    Then I avoid redirection by clicking 'VLCM Card'
    Given I wait request 'Jobs URL' and save with alias 'jobs'

  Scenario: Access from VP
    Then I intercept 'Jobs URL' and stub response 'jobs'
    Then I wait for '10' seconds
    And I validate in fixture 'VLCM/Home' the element 'NavBar UserManagement' not exist
    Then I click on 'VLCM Breadcrumb'
    Then I wait until DOM is loaded
    And I validate user to be on the 'JobMonitor Main' page
    Then I validate text 'Jobs monitor' is visible
    Then I click on 'NavBar Menu'
    Then I validate 'NavBar Item JobMonitor' to be visible
    Then I click on 'NavBar Close'
    And I validate in fixture 'VLCM/Home' the element 'NavBar Item JobMonitor' not exist
