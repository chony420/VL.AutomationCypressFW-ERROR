@vlpeople-nightly
Feature: People -> Estructuras

As user I want to:
- Navigate trough differents menues options 
- Create, modify and delete structures attributes
     
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
        And I validate user to be on the 'Estructura' page

        # Scenario: Navigation
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I go to tab 'Clase de estructura'    
        # And I wait for '2' seconds    
        # #Then I wait until DOM is loaded
        # Then I set filter field 'FilterClassStructre' with 'Administracion'
        # And I go to tab 'Clase de estructura'
        # Then I wait until DOM is loaded
        # Then I click button 'Create'
        # And I validate user to be on the 'Asistente de creacion' page
        # Then I wait until DOM is loaded
        # Then I click button 'BackArrow'
        # Then I wait until DOM is loaded
        # Then I click button 'Create'
        # And I validate user to be on the 'Asistente de creacion' page
        # Then I wait until DOM is loaded
        # And I go to card 'CreateSctructureClass'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Creacion de clase de estructura' page 
        # Then I click button 'BackArrow'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateSctructureClass'
        # And I validate user to be on the 'Creacion de clase de estructura' page
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I set field 'Description' with 'Cypress Structure Class'
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateStructureType'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Configuracion de estructura' page
        # Then I click button 'BackArrow'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateStructureType'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Configuracion de estructura' page     
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I set field 'Description' with 'Cypress Structure Class'
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateStructure'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Creacion de estructuras' page
        # Then I click button 'BackArrow'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateStructure'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Creacion de estructuras' page
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I set field 'StructureType' with 'Actividad'
        # And I click on contain 'Actividad'
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page
        # And I go to card 'CreateStructure'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Creacion de estructuras' page
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I set field 'StructureType' with 'Actividad'
        # And I click on contain 'Actividad'
        # Then I click button 'BackArrow'
        # Then I wait until DOM is loaded
        # And I validate user to be on the 'Asistente de creacion' page

        # Scenario: Create a Structure Class
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I go to tab 'Clase de estructura'    
        # # And I wait for '2' seconds    
        # Then I wait until DOM is loaded
        # Then I set filter field 'FilterClassStructre' with 'Administracion'
        # And I go to tab 'Clase de estructura'
        # And I wait for '2' seconds
        # #Then I wait until DOM is loaded
        # Then I click button 'Create'
        # And I go to card 'CreateSctructureClass'
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I set field 'Description' with 'Cypress Structure Class'
        # #PONER OPCION ACTIVAR CHECK SISTEMA
        # Then I click button 'Save'
        # Then I wait until DOM is loaded
        # And I go to card 'CreateStructureType'
        # And I set field 'Description' with 'Cypress Structure Class - Add Structure Type '
        # Then I click button 'Save'
        # And I go to card 'CreateStructure'
        # And I validate user to be on the 'Atributo simple' page
        # And I set field 'Description' with 'Cypress - Add Structure Attribute'
        # And I set field 'ExternalCode' with '789'
        # Then I click button 'Save'
        # Then I wait until DOM is loaded
        # Then I click button 'Inicio' 
        # #hacer el mismo caso pero validando el backarrow ******

        # Scenario: Modify a structure class
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I go to tab 'Clase de estructura'    
        # # And I wait for '2' seconds    
        # Then I wait until DOM is loaded
        # Then I set filter field 'FilterClassStructre' with 'Administracion'
        # And I go to tab 'Clase de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I set filter field 'FilterClassStructre' with 'Cypress Structure Class'
        # Then I select option 'Modificar' from ellipsis with value 'Cypress Structure Class'
        # Then I wait until DOM is loaded
        # Then I clear field "Description"
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # Then I select option 'Modificar' from ellipsis with value 'Cypress Structure Class'
        # Then I wait until DOM is loaded
        # Then I clear field "Description"
        # Then I click button 'BackArrow'
        # Then I select option 'Modificar' from ellipsis with value 'Cypress Structure Class'
        # And I set field 'Description' with 'Cypress Structure ClassCy'
        # #   PONER OPCION ACTIVAR CHECK SISTEMA
        # Then I click button 'Save'
        # Then I wait until DOM is loaded
        

        # Scenario: Delete a Structure Class
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # And I go to tab 'Clase de estructura'    
        # #And I wait for '2' seconds    
        # Then I wait until DOM is loaded
        # Then I set filter field 'FilterClassStructre' with 'Administracion'
        # #Valido toast rosa que no me permite eliminar la estructura por tener registros asociados
        # #And I go to tab 'Clase de estructura'
        # #Then I wait until DOM is loaded
        # #And I load file 'Estructuras' from 'VismaLatam/People'
        # #Then I set filter field 'FilterClassStructre' with 'Cypress Structure ClassCy'
        # #Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure ClassCy'
        # #Then I click button 'Accept'
        # #And I validate 'Structure Stepper Error' toast of type 'Alert Danger' with message 'La clase de estructura tiene tipos de estructura relacionados' is visible
        # #And I wait until DOM is loaded
        # # Primero borro el Atributo de estructura asociado
        # And I go to tab 'Atributo de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I click on 'StructureType'
        # Then I wait until DOM is loaded
        # And I click on contain 'Cypress Structure Class'
        # Then I wait until DOM is loaded
        # Then I select option 'Eliminar' from ellipsis with value 'Cypress - Add Structure Attribute'
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # Then I select option 'Eliminar' from ellipsis with value 'Cypress - Add Structure Attribute'
        # Then I click button 'Accept'
        # Then I validate message 'Eliminado correctamente' to be visible
        # # Luego borro el Tipo de estructura asociado
        # Then I wait until DOM is loaded
        # And I go to tab 'Tipo de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I wait until DOM is loaded
        # Then I click on 'StructureClass'
        # Then I wait until DOM is loaded
        # And I click on contain 'Administracion'
        # And I go to tab 'Tipo de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I click on 'StructureClass'
        # Then I wait until DOM is loaded
        # And I click on contain 'Cypress Structure ClassCy'
        # Then I wait until DOM is loaded
        # Then I click on 'FilterStructures'
        # Then I wait until DOM is loaded
        # And I click on contain 'Cypress Structure Class -'
        # Then I wait until DOM is loaded
        # Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Class -'
        # Then I click button 'Cancel'
        # Then I wait until DOM is loaded
        # Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure Class -'
        # Then I click button 'Accept'
        # Then I validate message 'Eliminado correctamente' to be visible
        # #Por ultimo elimino la clase de estructura
        # Then I wait until DOM is loaded
        # And I go to tab 'Clase de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I wait until DOM is loaded
        # Then I set filter field 'FilterClassStructre' with 'Administracion'
        # And I go to tab 'Clase de estructura'
        # Then I wait until DOM is loaded
        # And I load file 'Estructuras' from 'VismaLatam/People'
        # Then I set filter field 'FilterClassStructre' with 'Cypress Structure ClassCy'
        # Then I select option 'Eliminar' from ellipsis with value 'Cypress Structure ClassCy'
        # Then I click button 'Accept'
        # Then I validate message 'Eliminado correctamente' to be visible        