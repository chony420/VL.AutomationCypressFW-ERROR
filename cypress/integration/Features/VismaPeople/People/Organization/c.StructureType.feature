@vlpeople-flaky
  Feature: People -> Estructuras

  As user I want to:
  - Navigate trough differents menues options
  - Validate toasts
  - Create, modify and delete a Structure Type
     
 Background:
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

        And I go to tab 'Structure Type'
        And I load file 'Estructuras' from 'VismaLatam/People'
        Then I wait until DOM is loaded
        Then I wait until 'Structure Classes' request 'Structure Classes URL' status is OK 
        Then I click on 'StructureClass'
        Then I wait until DOM is loaded
        And I click on contain 'Administracion'
        And I go to tab 'Structure Type'
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Structures Wizard' page
        And I go to card 'CreateStructureType'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Configuracion de estructura' page
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Structures Wizard' page
        And I go to card 'CreateStructureType'
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Structures Wizard' page

 Scenario: Create a Structure Type and his respective Structure Attribute

        Then I wait until 'Structure Types' request 'Structure Types URL' status is OK 
        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        Then I wait until DOM is loaded
        Then I wait until 'Structure Types' request 'Structure Types URL' status is OK 
        Then I click on list 'StructureClass' after wait for 'Structure Classes' then type option 'Administracion'
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I validate user to be on the 'Structures Wizard' page        
        And I go to card 'CreateStructureType'
        Then I validate user to be on the 'Structures' page        
        And I load file 'Estructuras' from 'VismaLatam/People'
        Then I click on 'Description'
        Then I click on empty space
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        And I set field 'Description' with 'Cypress Structure Type'
        Then I click on 'IdStructureClass'
        Then I click on empty space
        Then I validate 'IdStructureClass Validation' to have text 'Campo obligatorio'
        Then I click on list 'IdStructureClass' after wait for 'Structure Classes' then type option 'Administracion'
        Then I 'mark' checkbox in 'System'
        Then I validate 'System box' is checked
        Then I 'unmark' checkbox in 'System'
        Then I validate 'System box' is not checked
        Then I 'mark' checkbox in 'Has Manager'
        Then I validate 'Has Manager box' is checked
        Then I 'unmark' checkbox in 'Has Manager'
        Then I validate 'Has Manager box' is not checked
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I validate user to be on the 'Structures Wizard' page    
        Then I go to card 'CreateStructure'
        And I set field 'Description' with 'Cypress Structure 123'
        And I set field 'ExternalCode' with '456'
        Then I click button 'Save'
        Then I click button 'Inicio'
       
 Scenario: Validate toast when creating an existent Simple Attribute Structure   

        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        Then I wait until DOM is loaded
        Then I wait until 'Structure Types' request 'Structure Types URL' status is OK 
        Then I click on list 'StructureClass' after wait for 'Structure Classes' then type option 'Administracion'
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I validate user to be on the 'Structures Wizard' page        
        And I go to card 'CreateStructureType'
        Then I validate user to be on the 'Structures' page        
        And I load file 'Estructuras' from 'VismaLatam/People'
        And I set field 'Description' with 'Cypress Structure Type'
        Then I click on list 'IdStructureClass' after wait for 'Structure Classes' then type option 'Administracion'
        Then I click button 'Save'
        And I validate 'Structure Type Already Exists' toast of type 'Danger' with message 'El tipo de estructura ya existe.' is visible

 Scenario: Modify an Structure Type

        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        Then I set field 'FilterStructures' with 'Cypress Structure Type'
        Then I select option 'Modificar' from ellipsis with value 'Cypress Structure Type'
        Then I wait until 'Structure Classes' request 'Structure Classes URL' status is OK 
        Then I click on list 'IdStructureClass' after wait for 'Structure Classes' then type option 'Contrato'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified'
        And I wait for '2' seconds
        And I set field 'StructureClass' with 'Contrato'
        And I click on contain 'Contrato'
        Then I set filter field 'FilterStructures' with 'Cypress Structure Type'
        And I wait for '2' seconds
        Then I select option 'Inactivar' from ellipsis with value 'Cypress Structure Type'
        And I validate snackbar 'Modified' is visible and have the text 'Modified'
        And I wait for '5' seconds
        Then I select option 'Activar' from ellipsis with value 'Cypress Structure Type'
        And I validate snackbar 'Modified' is visible and have the text 'Modified'

 Scenario: Validate toast when creating an existent Simple Attribute Structure   

        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        And I go to tab 'Structure Type'
        Then I set field 'FilterStructures' with 'Cypress Structure Type'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Type'
        Then I click Modal button 'Modal Cancel'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Type'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate 'Structure Type Is Related' toast of type 'Danger' with message ' El tipo de estructura tiene atributos relacionados. ' is visible

 Scenario: Delete an Structure Type and its attributes - Deleting its attributes

        #Primero elimino el atributo de estructura asociado a este tipo de estructura
        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        Then I wait until DOM is loaded
        Then I wait until 'Structure Types' request 'Structure Types URL' status is OK 
        Then I click on list 'StructureClass' after wait for 'Structure Classes' then type option 'Administracion'
        And I go to tab 'Structure Attribute'
        Then I wait until DOM is loaded
        And I load file 'Estructuras' from 'VismaLatam/People'
        Then I click on list 'StructureType' after wait for 'Structure Types' then type option 'Cypress Structure Type'
        Then I set field 'FilterAttributes' with 'Cypress Structure 123'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure 123'
        Then I click Modal button 'Modal Cancel'
        Then I wait until DOM is loaded
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure 123'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

 Scenario: Delete an Structure Type and its attributes - Deleting the Structure Type

        And I go to tab 'Structure Attribute'
        Then I wait for '5' seconds
        And I go to tab 'Structure Type'
        Then I wait until DOM is loaded
        And I load file 'Estructuras' from 'VismaLatam/People'
        Then I click on list 'StructureClass' after wait for 'Structure Classes' then type option 'Contrato'
        And I set field 'FilterStructures' with 'Cypress Structure Type'
        And I click on contain 'Cypress Structure Type'
        Then I wait until DOM is loaded
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Type'
        Then I click Modal button 'Modal Cancel'
        Then I wait until DOM is loaded
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Type'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'