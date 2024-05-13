@vlpeople-flaky
Feature: People -> Report To

  As a user I want to:
  - Modidy Employee Report to

  Background:
    When I login on 'VismaLatam' as 'superadmin'
    Then I validate user to be on the 'Login' page
    And I load file 'Login' from 'Commons/Login'
    And I set field 'Database' with 'Cypress Argentina'
    And I click on contain 'Cypress Argentina'
    Then I click on 'ChooseBtn'
    And I validate user to be on the 'Home' page
    Given I wait request 'Nacionalities URL' and save with alias 'nacionalitiesRequest'
    Given I wait request 'Country URL' and save with alias 'countryRequest'
    Given I wait request 'Documents URL' and save with alias 'documentTypesRequest'
    Given I wait request 'Geolocation URL' and save with alias 'zoneRequest'
    Given I wait request 'Organization Models URL' and save with alias 'organizationModel'
    Given I wait request 'Person Cy URL' and save with alias 'personCy'
    Then I wait until DOM is loaded
    When I go to module 'PEOPLE'
    And I go to card 'Colaborador'

  Scenario: Report To
    And I load file 'FilterMenu' from 'Commons'
    Then I set field 'LastName' with 'Cypress FWK'
    Then I wait until DOM is loaded
    Then I set field 'Name' with 'Automation'
    Then I click button 'Apply Filter'
    And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
    Then I validate chip 'Chip Reset Filter' contains value '1'
    And I select option 'Ver colaborador' from ellipsis with value '1234576160'
    And I load file 'DatosColaborador' from 'VismaLatam/People'
    Then I validate text 'Juan, Lopez' is visible
    Then I validate text '21/11/2013' is visible
    And I load file 'DatosColaborador' from 'VismaLatam/People'
    Then I wait for request 'personCy' and navigate to tab parent element containing 'Organización'
    Then I wait until 'Modify' is visible
    Then I click button 'Modify Employee Profile'
    Then I click on 'Organization Model Title'
    Then I validate button 'Save Report' is disabled
    Then I click on 'Input Report To'
    Then I clean field 'Input Report To'
    Then I validate button 'Save Report' is not disabled
    Then I click button 'Save Report'
    And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
    Then I click on 'Input Report To'
    Then I click on contain '1234575817 - Lopez Juan'
    Then I validate button 'Save Report' is not disabled
    Then I click button 'Save Report'
    And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'