@vlpeople-nightly
Feature: Payroll -> Configuraciones Basica -> Modelos de Nomina

    As a user I want to:
        - Create payroll models with concepts and incompatibilities
        - Duplicate model with assigned concept
        - Validate I can't delete a model with assigned concepts and incompatibilities
        - Modify models to unassign concepts and incompatibilities
        - Delete models that not have concepts or incompatibilities assigned
    
    data used in Test cases:
        - Automation Cypress => Creation, update assignation of incompatibilities with Delete Validation Cypress Model and delete Scenarios
        - Delete Validation Cypress Model => Creation, update, validation when deleting Model with assigned concepts & incompatibilities and delete Scenarios

    Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I go to card 'Payroll BasicConfiguration'
        Then I wait until DOM is loaded
        Given I wait request 'Models URL' and save with alias 'Models'
        Given I wait request 'Concepts URL' and save with alias 'Concepts' 
        And I go to card 'Payroll Model'
        Then I wait until DOM is loaded
       And I load file 'Payroll Model' from 'VismaLatam/Payroll' 

    Scenario: Navigation
        Then I click button 'Create' and intercept 'GET' request 'Concepts URL'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll Model create' page
        Then I click button 'BackArrow'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll Model' page
        Then I click button 'Create'
        Then I wait until 'Spinner' is not visible
        Then I click button 'Cancel'
        And I validate user to be on the 'Payroll Model' page
        Then I click button 'Previouspage'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll BasicConfiguration' page
        Then I wait until 'Spinner' is not visible
        And I go to card 'Payroll Model'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll Model' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'BasicConfiguration'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll BasicConfiguration' page
        Then I wait until 'Spinner' is not visible 
        And I go to card 'Payroll Model'
        Then I click button 'Create'
        Then I wait until 'Spinner' is not visible
        And I load file 'Payroll Model' from 'VismaLatam/Payroll'
        Then I click 'FinalSettlement' question mark and popover 'Final Settlement' is visible
        Then I set field 'Description' with 'Descripcion Cypress'
        Then I validate button 'Save Button' is not disabled
        Then I click button 'Cancel'
        Then I validate Modal to contain 'Change without save-Message'
        Then I click Modal button 'Accept'

    Scenario: Creation of Model with Assigned Concept  
        Then I click button 'Create' and intercept 'GET' request 'Concepts URL'
        Then I wait until 'Spinner' is not visible 
        Then I 'mark' checkbox in 'Final Settlement Input'
        Then I 'mark' checkbox in 'Favorite'
        Then I 'mark' checkbox in 'Profit Adjustment Input'
        Then I set field 'Description' with 'Automation Cypress'
        Then I set field 'External Code' with '1234'
        Then I set field 'Initial' with 'Cyp'
        And I click on contain 'Conceptos'
        Then I set filter field 'Unassigned' with 'Cypress Concepto'
        Then I mark checkbox of 'Drag Drop Left' containing '(9998) Cypress Concepto'
        Then I click on 'Assign arrow' to drag 
        Then I click button 'Save'  
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll Model' page
        Then I validate image 'Create Image' with text 'Create Text' is visible 
        And I click button 'Finish' 
        Then I set filter field 'Payroll Model Filter' with 'Automation Cypress'
        Then I validate row containing 'Automation Cypress' is marked as favorite
        And I double click 'Automation Cypress' 
        Then I wait until DOM is loaded     
        Then I validate 'Final Settlement Check' is checked
        Then I validate 'Profit Adjustment Check' is checked
        Then I validate 'Favorite Check' is checked
        Then I validate 'Assigned Concepts' to have text '(9998) Cypress Concepto' 
 
    Scenario: Duplicate Model with Assigned Concept  
        Then I set filter field 'Payroll Model Filter' with 'Automation Cypress'
        Then I select option 'Duplicar' from ellipsis with value 'Automation Cypress'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'Payroll Model duplicate' page    
        Then I validate 'Description' its value contain 'Copia de Automation Cypress' 
        Then I set filter field 'Description' with 'Cypress Duplicated Automation Model' 
        Then I validate 'Final Settlement Check' is checked
        Then I validate 'Profit Adjustment Check' is checked
        Then I validate 'Favorite Check' is checked
        Then I validate 'Assigned Concepts' to have text '(9998) Cypress Concepto' 
        And I click button 'Save' 
       Then I validate image 'Create Image' with text 'Create Text' is visible 
          And I click button 'Finish' 
        And I validate user to be on the 'Payroll Model' page
       

    Scenario: Creation of Model with concept and Incompatibility
        Then I click button 'Create' and intercept 'GET' request 'Concepts URL'
        Then I wait until 'Spinner' is not visible 
        Then I set field 'Description' with 'Delete Validation Cypress Model'
        Then I set field 'External Code' with '2222'
        Then I set field 'Initial' with 'Delete'
        And I click on contain 'Conceptos'
        Then I set filter field 'Unassigned' with 'Cypress Concepto'
        Then I mark checkbox of 'Drag Drop Left' containing '(9998) Cypress Concepto'
        Then I click on 'Assign arrow' to drag 
        Then I wait until DOM is loaded
        And I click on contain 'Incompatibilidades'
        Then I wait for '2' seconds
        Then I set filter field 'Incompatibility Search' with 'Automation Cypress'
        Then I mark checkbox of 'Drag Drop Left' containing 'Automation Cypress' 
        Then I wait until DOM is loaded
        Then I click on 'Incompatibilities Assign arrow' to drag   
        Then I wait for '2' seconds
        Then I click button 'Modify Registry in Drag & Drop'
        Then I wait until DOM is loaded
        Then I validate Modal to contain 'Model Incompatibility Title'
        Then I validate Modal to contain 'Model Absolut Incompatibility'
        Then I validate Modal to contain 'Model Notification Incompatibility' 
        Then I wait for '3' seconds
        Then I click button 'Save Restriction'
        Then I wait until 'Dialog Container' not exist
        Then I validate button 'Save' is not disabled
        Then I click button 'Save'   
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Create Image' with text 'Create Text' is visible 
        And I click button 'Finish' 
       
    Scenario: Validations when deleting Model with concepts and incompatibilities
        Then I wait until DOM is loaded
        Then I set filter field 'Payroll Model Filter' with 'Automation Cypress'
        Then I select option 'Eliminar' from ellipsis with value 'Automation Cypress'
        Then I click Modal button 'Accept'
        And I validate 'Incompatibilities Assigned Message' toast of type 'Danger' with message 'El modelo de nómina tiene incompatibilidades asignadas, no se permite eliminar.' is visible
        And I validate 'Concepts in Model Message' toast of type 'Danger' with message 'El modelo de nómina tiene conceptos asignados, no se permite eliminar.' is visible
            
    Scenario: Delete Automation Cypress
        Then I set filter field 'Payroll Model Filter' with 'Delete Validation Cypress Model'
        And I select option 'Modificar' from ellipsis with value 'Delete Validation Cypress Model' and wait request 'Models'
          And I wait for backend request taged as 'Concepts'
          And I click on contain 'Incompatibilidades'
        Then I set filter field 'Incompatibility Unassigned Search' with 'Automation Cypress'
        Then I mark checkbox of 'Drag Drop Right' containing 'Automation Cypress'
        Then I click on 'Incompatibilities Unassign arrow' to drag 
        Then I click button 'Save'  
        Then I wait until 'Spinner' is not visible
         And I validate user to be on the 'Payroll Model' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded  
        Then I set filter field 'Payroll Model Filter' with 'Automation Cypress'
       And I select option 'Modificar' from ellipsis with value 'Automation Cypress' and wait request 'Models'
        And I wait for backend request taged as 'Concepts'
         And I click on contain 'Conceptos'
        Then I set filter field 'Assigned' with 'Cypress Concepto'
        Then I mark checkbox of 'Drag Drop Right' containing '(9998) Cypress Concepto'
        Then I click on 'Unassign arrow' to drag  
       Then I click button 'Save'
        Then I wait until spinner 'Spinner' not exist
        And I wait for backend request taged as 'Models'
         And I validate user to be on the 'Payroll Model' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt' 
        Then I set filter field 'Payroll Model Filter' with 'Automation Cypress'
        Then I select option 'Eliminar' from ellipsis with value 'Automation Cypress' and wait request 'Models'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'
    Scenario: Delete Validation Cypress    
        Then I set filter field 'Payroll Model Filter' with 'Delete Validation Cypress Model'
         And I select option 'Modificar' from ellipsis with value 'Delete Validation Cypress Model' and wait request 'Models'
         And I wait for backend request taged as 'Concepts'
         And I click on contain 'Conceptos'
        Then I set filter field 'Assigned' with 'Cypress Concepto'
        Then I mark checkbox of 'Drag Drop Right' containing '(9998) Cypress Concepto'
        Then I click on 'Unassign arrow' to drag  
        Then I click button 'Save'
        Then I wait until spinner 'Spinner' not exist
        And I wait for backend request taged as 'Models'
         And I validate user to be on the 'Payroll Model' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I set filter field 'Payroll Model Filter' with 'Delete Validation Cypress Model'
        Then I select option 'Eliminar' from ellipsis with value 'Delete Validation Cypress Model' and wait request 'Models'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 
    
   
    Scenario: Delete Duplicated Cypress Model
        Then I set filter field 'Payroll Model Filter' with 'Cypress Duplicated Automation Model'
        And I double click 'Cypress Duplicated Automation Model' 
        And I click on contain 'Conceptos'
        Then I set filter field 'Assigned' with 'Cypress Concepto'
        Then I mark checkbox of 'Drag Drop Right' containing '(9998) Cypress Concepto'
        Then I click on 'Unassign arrow' to drag  
         Then I click button 'Save'
        Then I wait until spinner 'Spinner' not exist
        And I wait for backend request taged as 'Models'
         And I validate user to be on the 'Payroll Model' page
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I set filter field 'Payroll Model Filter' with 'Cypress Duplicated Automation Model'
        Then I select option 'Eliminar' from ellipsis with value 'Cypress Duplicated Automation Model' and wait request 'Models'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt' 
      
  