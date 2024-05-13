@flaky
Feature: VLCA Devops - Tenants

As a user I want to:
    - Navigate for the differents menues option and links
    - Check the different field Validations

Background: (Repeats on all scenarios)
    Given I navigate to 'VLCA'
    Then I validate user to be on the 'Login' page
    And I load file 'Login' from 'VLCA'
    Then I wait for '2' seconds
    When I go to module 'DEVOPS'
    Then I wait until DOM is loaded
    And I go to card 'Tenants'
    Then I wait until DOM is loaded
    And I validate user to be on the 'Tenants' page
    And I load file 'Tenants' from 'VLCA'

Scenario: Navigation
    Then I click button 'PreviousPage'
    Then I wait until DOM is loaded
    And I validate user to be on the 'DevOps' page
    Then I wait until DOM is loaded
    And I go to card 'Tenants'
    Then I wait until DOM is loaded
    And I validate user to be on the 'Tenants' page
    Then I click button 'Create'
    Then I wait until DOM is loaded
    And I validate user to be on the 'Tenants create' page
    Then I click button 'PreviousPage'
    Then I wait until DOM is loaded
    And I validate user to be on the 'Tenants' page
    Then I click button 'Create'
    Then I wait until DOM is loaded
    Then I click button 'Cancel'
    And I validate user to be on the 'Tenants' page
    Then I click breadcrumb 'DevOps'
    And I validate user to be on the 'DevOps' page
    Then I click breadcrumb 'VLCA'
    And I validate user to be on the 'VLCA Main' page