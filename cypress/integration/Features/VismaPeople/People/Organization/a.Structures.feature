@vlpeople-flaky
Feature: People -> Estructuras

        As user I want to:
        - Navigate trough differents menues options
        - Validate toasts
        - Create, modify and delete a Structure Attribute

        Background: (Repeats on all scenarios)

                Given I login on 'VismaLatam' as 'superadmin'
                Then I validate user to be on the 'Login' page
                And I load file 'Login' from 'Commons/Login'
                And I set field 'Database' with 'Cypress Argentina'
                And I click on contain 'Cypress Argentina'
                Then I click on 'ChooseBtn'
                And I validate user to be on the 'Home' page
                Then I wait until DOM is loaded
                When I go to module 'PEOPLE'
                Then I wait until DOM is loaded
                And I go to card 'Organizacion'
                Then I wait until DOM is loaded
                And I go to card 'Estructura'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures' page
                And I load file 'Estructuras' from 'VismaLatam/People'
                Given I wait request 'Structure Types URL' and save with alias 'Structure Types'
                Given I wait request 'Structure Classes URL' and save with alias 'Structure Classes'

        Scenario: Navigation

                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I go to tab 'Structure Class'
                Then I wait until DOM is loaded
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures Wizard' page
                Then I wait until DOM is loaded
                And I go to card 'CreateSctructureClass'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Creacion de clase de estructura' page
                Then I click button 'BackArrow'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures Wizard' page
                And I go to card 'CreateSctructureClass'
                And I validate user to be on the 'Creacion de clase de estructura' page
                Then I click button 'Cancel'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures Wizard' page
                Then I click button 'BackArrow'
                Then I wait until DOM is loaded
                Then I click breadcrumb 'People'
                Then I wait until DOM is loaded
                And I validate user to be on the 'People' page
                And I go to card 'Organizacion'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Organizacion' page
                And I go to card 'Estructura'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures' page
                Then I click breadcrumb 'Organizacion'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Organizacion' page

        Scenario: Navigation - Structure Attribute

                Then I wait until DOM is loaded
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I go to tab 'Structure Attribute'
                Then I wait until DOM is loaded
                Then I click button 'Create'
                And I validate user to be on the 'Creacion de estructuras' page
                Then I click button 'BackArrow'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures' page
                Then I wait until DOM is loaded
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                And I set field 'StructureType' with 'Actividad'
                And I click on contain 'Actividad'
                And I validate user to be on the 'Atributo simple' page
                Then I click button 'BackArrow'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Structures' page
                Then I click button 'Create'
                And I validate user to be on the 'Creacion de estructuras' page
                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I validate user to be on the 'Atributo simple' page
                Then I click button 'Cancel'

        Scenario: Create a Simple Attribute Structure

                And I go to tab 'Structure Attribute'
                Then I wait until 'Spinner' is not visible
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Atributo' page
                Then I click on list 'StructureType' after wait for 'Structure Types' then type option 'Actividad'
                And I validate user to be on the 'Atributo' page
                Then I click on 'Description'
                Then I click on empty space
                Then I validate 'Description Validation' to have text 'Campo obligatorio'
                And I set field 'Description' with 'Cypress Attribute Structure'
                And I set field 'ExternalCode' with '123'
                Then I 'unmark' checkbox in 'Active'
                Then I validate 'Active box' is not checked
                Then I 'mark' checkbox in 'Active'
                Then I validate 'Active box' is checked
                Then I click button 'Save'
                Then I wait until 'Spinner' is not visible
                Then I wait until DOM is loaded
                And I validate user to be on the 'Estructura creada' page
                Then I validate message '¡Creado con éxito!' to be visible
                And I click button 'Finish'

        Scenario: Validate toast when creating an existent Simple Attribute Structure

                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                Then I click on list 'StructureType' after wait for 'Structure Types' then type option 'Actividad'
                And I go to tab 'Structure Attribute'
                Then I wait until 'Spinner' is not visible
                Then I click button 'Create'
                Then I wait until DOM is loaded
                And I validate user to be on the 'Atributo' page
                Then I click on list 'StructureType' after wait for 'Structure Types' then type option 'Actividad'
                And I validate user to be on the 'Atributo' page
                And I set field 'Description' with 'Cypress Attribute Structure'
                Then I click button 'Save'
                Then I wait until DOM is loaded
                Then I wait until 'Spinner' is not visible
                And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible

        Scenario: Modify a Simple Attribute structure

                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I go to tab 'Structure Attribute'
                Then I wait until DOM is loaded
                And I set field 'FilterAttributes' with 'Cypress Attribute Structure'
                Then I select option 'Modificar' from ellipsis with value 'Cypress Attribute Structure'
                Then I wait until DOM is loaded
                Then I clear field "Description"
                And I set field 'Description' with 'Cypress Attribute Structure'
                Then I clear field "ExternalCode"
                And I set field 'ExternalCode' with '123456'
                Then I click button 'Save'
                Then I wait until 'Spinner' is not visible
                Then I wait until DOM is loaded
                And I validate snackbar 'Modified' is visible and have the text 'Modified'
                Then I select option 'Inactivar' from ellipsis with value 'Cypress Attribute Structure'
                Then I validate message 'Modificado correctamente' to be visible
                Then I wait until DOM is loaded
                Then I wait for '2' seconds
                Then I select option 'Activar' from ellipsis with value 'Cypress Attribute Structure'
                And I validate snackbar 'Modified' is visible and have the text 'Modified'

        Scenario: Delete a Simple Attribute Structure

                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I go to tab 'Structure Attribute'
                Then I wait until DOM is loaded
                And I set field 'FilterAttributes' with 'Cypress Attribute Structure'
                Then I select option 'Eliminar' from ellipsis with value 'Cypress Attribute Structure'
                Then I click button 'Cancel'
                Then I wait until DOM is loaded
                Then I select option 'Eliminar' from ellipsis with value 'Cypress Attribute Structure'
                Then I click button 'Accept'
                Then I wait until 'Spinner' is not visible
                And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

        Scenario: Validation when creating a Simple Attribute Structure in an inactive state

                And I load file 'Estructuras' from 'VismaLatam/People'
                Then I wait until DOM is loaded
                Then I click on 'StructureType'
                Then I wait until DOM is loaded
                And I click on contain 'Actividad'
                And I go to tab 'Structure Type'
                And I wait for '2' seconds
                Then I click button 'Create'
                And I go to card 'CreateStructure'
                And I wait for '2' seconds
                Then I click on 'StructureType'
                Then I click on empty space
                Then I validate 'StructureType Validation' to have text 'Campo obligatorio'
                Then I click on list 'StructureType' after wait for 'Structure Types' then type option 'Celula'
                And I validate user to be on the 'Atributo simple' page
                And I set field 'Description' with 'Cypress Inactive Structure '
                And I set field 'ExternalCode' with '787'
                Then I click button 'Save'
                And I validate 'Structure Type Is Inactive' toast of type 'Danger' with message 'El tipo de estructura seleccionado está inactivo.' is visible