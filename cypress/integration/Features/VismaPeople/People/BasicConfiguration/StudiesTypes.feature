
# Feature: People -> Configuracion Basica -> Tipos de estudios

#     As a user I want to:
#         - Navigate for the differents menues option and links
#         - Check Validations
#         - Create, modify and delete type of studies

#     Background: (Repeats on all scenarios)
#         When I login on 'VismaLatam' as 'superadmin'
#         Then I validate user to be on the 'Login' page
#         And I load file 'Login' from 'Commons/Login'
#         And I set field 'Database' with 'Cypress Argentina'
#         And I click on contain 'Cypress Argentina'
#         Then I click on 'ChooseBtn'
#         And I validate user to be on the 'Home' page
#         Then I wait until DOM is loaded
#         When I go to module 'PEOPLE'
#         Then I wait until DOM is loaded
#         And I go to card 'Basic Configuration'
#         Then I wait until DOM is loaded
#         And I go to card 'Studies Types'
#         And I load file 'StudiesTypes' from 'VismaLatam/People'
#         Given I wait request 'Studies Types URL' and save with alias 'Studies Types'

        
#       Scenario: Navigation 
      
#         Then I click button 'Create'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'Create Studies Types' page
#         Then I click button 'BackArrow'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'Studies Types' page
#         Then I click button 'Create'
#         Then I wait until DOM is loaded
#         Then I click button 'Form Cancel Button'
#         And I validate user to be on the 'Studies Types' page
#         Then I click button 'Previouspage'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'Basic Configuration' page
#         Then I wait until DOM is loaded
#         And I go to card 'Studies Types'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'Studies Types' page
#         And I load file 'Breadcrumb' from 'Commons'
#         Then I click breadcrumb 'BasicConfiguration'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'Basic Configuration' page
#         Then I wait until DOM is loaded
#         And I go to card 'File Type'
#         Then I click breadcrumb 'People'
#         Then I wait until DOM is loaded
#         And I validate user to be on the 'People' page

#     Scenario: Validation when creating an existing type of study

#         Then I click button 'Create'
#         Then I wait until DOM is loaded
#         Then I set field 'Description' with 'CHEF'
#         Then I wait for backend request taged as 'Studies Types'
#         Then I validate button 'Form Accept Button' is not disabled
#         Then I click button 'Form Accept Button' 
#         And I validate 'Description Study Type Already Exists' toast of type 'Danger' with message '¡Atención! El tipo de estudio que querés crear ya existe. Probá ingresando otra descripción.' is visible

#     Scenario: Validation when deleting an assigned type of study

#         Then I set filter field 'Studies Types Filter Grid' with 'LICENCIADO'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'LICENCIADO'
#         Then I click Modal button 'Modal Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'LICENCIADO'
#         Then I click Modal button 'Accept'
#         Then I wait until 'Spinner' is not visible
#         And I validate 'Validation Record In Use Its Not Allowed To Delete' toast of type 'Danger' with message '¡Atención! Este registro está en uso, no se permite eliminar.' is visible

#     Scenario: Creation
        
#         Then I click button 'Create'
#         Then I wait until DOM is loaded
#         Then I wait until 'Form Skeleton' not exist
#         Then I click on 'Description'
#         Then I click on empty space
#         Then I validate 'Description Validation' to have text 'Campo obligatorio'
#         Then I validate button 'Form Accept Button' is disabled
#         Then I wait for backend request taged as 'Studies Types' 
#         Then I set field 'Description' with 'Cypress Study Type'
#         Then I validate button 'Form Accept Button' is not disabled
#         Then I click on list 'Id Education Level' after wait for 'Studies Types' then type option 'SECUNDARIO'
#         Then I set field 'Duration' with '5'
#         Then I set field 'Percentaje' with '10'
#         Then I validate button 'Form Accept Button' is not disabled
#         Then I click button 'Form Accept Button'
#         Then I wait until 'Spinner' is not visible
#         And I validate user to be on the 'Basic Configuration Success' page
#         Then I validate image 'Create Image' with text 'Create Text' is visible
#         And I click button 'Finish'

#      Scenario: Modify a type of note

#         Then I set filter field 'Studies Types Filter Grid' with 'Cypress Study Type'
#         Then I wait for '5' seconds
#         Then I select option 'Modificar' from ellipsis menu inside material grid with value 'Cypress Study Type'
#         Then I click on list 'Id Education Level' after wait for 'Studies Types' then type option 'UNIVERSITARIO'
#         Then I clear field 'Duration'
#         Then I set field 'Duration' with '7'
#         Then I clear field 'Percentaje'
#         Then I set field 'Percentaje' with '25'
#         Then I validate button 'Form Accept Button' is not disabled
#         Then I click button 'Form Accept Button'
#         Then I wait until 'Spinner' is not visible
#         And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'        

#     Scenario: Validation when deleting an assigned type of study

#         Then I set filter field 'Studies Types Filter Grid' with 'Cypress Study Type'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress Study Type'
#         Then I click Modal button 'Modal Cancel'
#         Then I wait for '5' seconds
#         Then I select option 'Eliminar' from ellipsis menu inside material grid with value 'Cypress Study Type'
#         Then I click Modal button 'Accept'
#         And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'