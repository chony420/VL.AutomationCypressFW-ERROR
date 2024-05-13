@vlpeople-nightly
Feature: People -> Colaboradores -> Work Elements

    As a user I want to:
    - Assign a Work Element to an Employee
    - Modify assignation of a Work Element to an Employee
    - Delete assignation of a Work Element to an Employee

    data used in Test cases:
    - 	Cy	Automation FE Id 108700 => Creation, update assignation delete Scenarios

    Background:
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'
        Then I wait until DOM is loaded
        And I load file 'WorkElementsEmployee' from 'VismaLatam/People'
        Given I wait request 'AtributeType URL' and save with alias 'attributeType'
        Given I wait request 'TRFolder URL' and save with alias 'TRFolder'

    Scenario: Navegation
        And I set field 'Lastname' with 'Cy'
        Then I wait until DOM is loaded
        And I set field 'Name' with 'Automation FE'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I wait until DOM is loaded
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I wait until DOM is loaded
        Then I click on 'Elements'
        Then I wait for request 'attributeType' and navigate to tab parent element containing 'elementos'
        Then I wait until 'Work Elements Panel' is visible
        Then I wait until DOM is loaded
        Then I click button 'Modify Employee Profile'
        Then I validate text '07/02/2000' is visible
        Then I wait until DOM is loaded
        Then I validate text 'PROGRAMADOR' is visible
        Then I wait until DOM is loaded
        Then I force click button 'New Work Element'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click Modal button 'Close'
    # Then I wait until DOM is loaded
    # Then I click on 'Work Elements Panel'
    # Then I wait until DOM is loaded
    # Then I force click button 'New Work Element'
    # Then I wait until DOM is loaded
    # Then I wait until 'Spinner' is not visible
    # Then I wait until DOM is loaded
    # And I set field 'Reason' with 'Cypress Work Element'
    # And I set field 'Delivery Date for Work Element' with '02/08/2023'
    # And I set field 'Category' with 'Herramientas'
    # And I click on contain 'Herramientas'
    # And I set field 'Element' with 'Testing'
    # And I click on contain 'Testing'
    # And I set field 'Value' with 'Testing 1'
    # And I click on contain 'Testing 1'
    # And I clear field "Quantity"
    # And I set field 'Quantity' with '2'
    # And I set field 'Work Element Folder' with 'RECIBOS'
    # And I click on contain 'RECIBOS'
    # And I set field 'Work Element Folder Type' with 'MENSUAL'
    # And I click on contain 'MENSUAL'
    # Then I validate button 'Save Button' is not disabled
    # Then I click button 'Cancel'
    # Then I validate Modal to contain 'Change without save-Message'
    # Then I click Modal button 'Accept'
    # Then I click button 'Previouspage'
    # And I validate user to be on the 'Employees' page
    Scenario: Work Element Assign
        And I set field 'Lastname' with 'Cy'
        Then I wait until DOM is loaded
        And I set field 'Name' with 'Automation FE'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I wait until DOM is loaded
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I wait until DOM is loaded
        Then I click on 'Elements'
        Then I wait for request 'attributeType' and navigate to tab parent element containing 'elementos'
        Then I wait until DOM is loaded
        Then I wait until 'Work Elements Panel' is visible
        Then I wait until DOM is loaded
        Then I validate text '07/02/2000' is visible
        Then I wait until DOM is loaded
        Then I validate text 'PROGRAMADOR' is visible
        Then I wait until DOM is loaded
        Then I wait until DOM is loaded
        Then I click button 'Modify Employee Profile'
        Then I wait until DOM is loaded
        Then I wait until 'Add Work Elements' is visible
        Then I wait until DOM is loaded
        Then I force click button 'New Work Element'
        Then I wait until DOM is loaded
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I set field 'Reason' with 'Cypress Work Element'
        And I set field 'Delivery Date for Work Element' with '02/08/2023'
        And I set field 'Category' with 'Herramientas'
        And I click on contain 'Herramientas'
        And I set field 'Element' with 'Testing'
        And I click on contain 'Testing'
        And I set field 'Value' with 'Testing 1'
        And I click on contain 'Testing 1'
        And I clear field "Quantity"
        And I set field 'Quantity' with '2'
        Then I click button 'Add Work Element'
        And I set field 'Category2' with 'Accesorios'
        And I click on contain 'Accesorios'
        And I set field 'Element2' with 'Elemento reclamable'
        And I click on contain 'Elemento reclamable'
        Then I intercept 'TRFolder URL' and stub response 'TR Folder'
        And I set field 'Work Element Folder' with 'RECIBOS'
        And I click on contain 'RECIBOS'
        And I set field 'Work Element Folder Type' with 'MENSUAL'
        And I click on contain 'MENSUAL'
        And I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        Then I wait until 'Options' is visible
        And I select option 'Modificar' from ellipsis with value 'Testing'
        Then I wait until 'Work Elements Containers' is visible
        Then I validate 'Category Input' is a 'SPAN' with text 'Herramientas'
        Then I validate 'Element Input' is a 'SPAN' with text 'Testing'
        Then I validate 'Value Input' is a 'SPAN' with text 'Testing 1'
        Then I validate 'Quantity' its value contain '2'
        Then I validate 'Category2 Input' is a 'SPAN' with text 'Accesorios'
        Then I validate 'Element2 Input' is a 'SPAN' with text 'Elemento reclamable'
        And I click button 'Close'


    Scenario: Work Element Modify
        And I set field 'Lastname' with 'Cy'
        Then I wait until DOM is loaded
        And I set field 'Name' with 'Automation FE'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I wait until DOM is loaded
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I wait until DOM is loaded
        Then I click on 'Elements'
        Then I wait for request 'attributeType' and navigate to tab parent element containing 'elementos'
        Then I wait until DOM is loaded
        Then I wait until 'Work Elements Panel' is visible
        Then I wait until DOM is loaded
        Then I validate text '07/02/2000' is visible
        Then I wait until DOM is loaded
        Then I validate text 'PROGRAMADOR' is visible
        Then I wait until DOM is loaded
        Then I click button 'Modify Employee Profile'
        Then I wait until DOM is loaded
        Then I wait until 'Options' is visible
        And I select option 'Modificar' from ellipsis with value 'Testing'
        Then I wait until DOM is loaded
        And I clear field "Reason"
        And I set field 'Reason' with 'Cypress Work Element'
        And I clear field "Delivery Date for Work Element"
        And I set field 'Delivery Date for Work Element' with '01/12/2023'
        And I clear field "Category"
        And I set field 'Category' with 'Indumentaria'
        And I click on contain 'Indumentaria'
        And I clear field "Element"
        And I set field 'Element' with 'Pantalon'
        And I click on contain 'Pantalon'
        And I clear field "Value"
        And I set field 'Value' with 'medium'
        And I click on contain 'medium'
        And I set field 'Work Element Folder' with 'RECIBOS'
        And I click on contain 'RECIBOS'
        And I set field 'Work Element Folder Type' with 'MENSUAL'
        And I click on contain 'MENSUAL'
        And I click button 'Save'
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        Then I wait until 'Options' is visible
        Then I wait until DOM is loaded
        And I select option 'Modificar' from ellipsis with value 'Pantalon'
        Then I wait until DOM is loaded
        Then I validate 'Category Input' is a 'SPAN' with text 'Indumentaria'
        Then I validate 'Element Input' is a 'SPAN' with text 'Pantalon'
        Then I validate 'Value Input' is a 'SPAN' with text 'medium'


    Scenario: Work Element Delete
        And I set field 'Lastname' with 'Cy'
        Then I wait until DOM is loaded
        And I set field 'Name' with 'Automation FE'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until DOM is loaded
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I wait until DOM is loaded
        And I select option 'Ver colaborador' from ellipsis with value '1234575886'
        Then I click on 'Elements'
        Then I wait for request 'attributeType' and navigate to tab parent element containing 'elementos'
        Then I wait until DOM is loaded
        Then I wait until 'Work Elements Panel' is visible
        Then I wait until DOM is loaded
        Then I click on 'Work Elements Panel'
        Then I wait until DOM is loaded
        Then I validate text '07/02/2000' is visible
        Then I wait until DOM is loaded
        Then I validate text 'PROGRAMADOR' is visible
        Then I wait until DOM is loaded
        Then I wait until DOM is loaded
        Then I click on 'Work Elements Panel'
        Then I wait until DOM is loaded
        Then I click button 'Modify Employee Profile'
        Then I wait until DOM is loaded
        Then I wait until 'Options' is visible
        And I select option 'Eliminar' from ellipsis with value 'Pantalon'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
        Then I validate text 'Aún no tenés registros' is visible
        Then I wait until 'Add Work Elements' is visible