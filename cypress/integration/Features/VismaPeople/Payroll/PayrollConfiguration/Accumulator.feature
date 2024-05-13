@vlpeople-nightly
Feature: Payroll -> Configuraciones de Nomina -> Acumuladores

    Background: (Repeats on all scenarios)
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PAYROLL'
        Then I wait until DOM is loaded
        And I go to card 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Accumulator'
        And I validate user to be on the 'Accumulator' page
        And I load file 'Accumulator' from 'VismaLatam/Payroll'
        Given I wait request 'Accumulator URL' and save with alias 'Accumulator'        

    Scenario: Navigation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Accumulator Create' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Accumulator' page
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Accumulator Create' page
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Accumulator' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        And I go to card 'Accumulator'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Accumulator' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'PayrollConfiguration'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollConfiguration' page
        Then I wait until DOM is loaded
        And I go to card 'Accumulator'
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
            
    Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I wait until 'Accumulator Skeleton Table' not exist
        Then I click on 'Description'
        Then I click on empty space
        Then I validate hover 'Description (Obligatory Validation)' with 'Campo obligatorio' is visible
        Then I validate button 'Save Config' is disabled
        Then I set field 'Description' with 'Cypress Validation'
        Then I click 'Generate monthly accumulators' question mark and popover 'Monthly accumulators text' is visible
        Then I click 'Has limit' question mark and popover 'Has limit text' is visible
        Then I click 'Notify about negative amounts' question mark and popover 'Negative amounts text' is visible
        Then I validate button 'Save' is not disabled
        Then I click button 'Save'
        And I validate 'Description Already Exists' toast of type 'Danger' with message 'La descripción ya existe' is visible

    Scenario: Creation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I set field 'Description' with 'Cypress Accumulator'
        Then I set field 'Observations' with 'Test Frontend'
        Then I 'mark' checkbox in 'Has opening costs'
        Then I validate 'Has opening costs check' is checked
        Then I 'unmark' checkbox in 'Has opening costs'
        Then I validate 'Has opening costs check' is not checked
        Then I 'mark' checkbox in 'Has opening costs'
        Then I 'mark' checkbox in 'Generates monthly accumulators'
        Then I validate 'Generates monthly accumulators check' is checked
        #Agregar step para validar que el check "imponible aportes" ahora puede clickearse
        Then I 'unmark' checkbox in 'Generates monthly accumulators'
        Then I validate 'Generates monthly accumulators check' is not checked
        Then I 'mark' checkbox in 'Generates monthly accumulators'
        Then I 'mark' checkbox in 'Has taxable inputs'
        Then I validate 'Has taxable inputs check' is checked
        #Agregar step para validar que el check "posee tope" ahora puede clickearse
        Then I 'unmark' checkbox in 'Has taxable inputs'
        Then I validate 'Has taxable inputs check' is not checked
        Then I 'mark' checkbox in 'Has taxable inputs'
        Then I 'mark' checkbox in 'Has cap'
        Then I validate 'Has cap check' is checked
        #Agregar step para validar que el selector de acumulador de desborde ahora puede clickearse
        Then I 'unmark' checkbox in 'Has cap'
        Then I validate 'Has cap check' is not checked
        Then I 'mark' checkbox in 'Has cap'
        #Then I set field 'Overflow Accumulator' with '16 - Ganancia Imponible'
        #Then I click on contain '16 - Ganancia Imponible'
        #Then I click on list 'Overflow Accumulator' after wait for 'Accumulator' then type option '16 - Ganancia Imponible'
        Then I 'mark' checkbox in 'Is visible payroll board'
        Then I validate 'Is visible payroll board check' is checked
        Then I 'unmark' checkbox in 'Is visible payroll board'
        Then I validate 'Is visible payroll board check' is not checked
        Then I 'mark' checkbox in 'Is visible payroll board'
        Then I 'mark' checkbox in 'Allows recalculation'
        Then I validate 'Allows recalculation check' is checked
        Then I 'unmark' checkbox in 'Allows recalculation'
        Then I validate 'Allows recalculation check' is not checked
        Then I 'mark' checkbox in 'Allows recalculation'
        Then I 'mark' checkbox in 'Is retroactive'
        Then I validate 'Is retroactive check' is checked
        Then I 'unmark' checkbox in 'Is retroactive'
        Then I validate 'Is retroactive check' is not checked
        Then I 'mark' checkbox in 'Is retroactive'
        Then I 'mark' checkbox in 'Exists negative values'
        Then I validate 'Exists negative values check' is checked
        Then I 'unmark' checkbox in 'Exists negative values'
        Then I validate 'Exists negative values check' is not checked
        Then I 'mark' checkbox in 'Exists negative values'
        Then I 'mark' checkbox in 'Has payment request'
        Then I validate 'Has payment request check' is checked
        Then I 'unmark' checkbox in 'Has payment request'
        Then I validate 'Has payment request check' is not checked
        Then I 'mark' checkbox in 'Has payment request'
        Then I 'mark' checkbox in 'Has reduction discount'
        Then I validate 'Has reduction discount check' is checked
        Then I 'unmark' checkbox in 'Has reduction discount'
        Then I validate 'Has reduction discount check' is not checked
        Then I 'mark' checkbox in 'Has reduction discount'
        Then I click on 'Concepts header check'
        Then I click on 'Add concept'
        Then I validate 'Left Concepts Drawer Chip' to have text '269 - Encontrados'
        Then I validate 'Right Concepts Drawer Chip' to have text '0 - Seleccionados'
        Then I set field 'Accumulator concepts unassigned drag and drop' with 'Sueldo'
        Then I click button 'MoveAllAssigned'
        Then I clear field 'Accumulator concepts unassigned drag and drop'
        Then I set field 'Accumulator concepts assigned drag and drop' with 'Sueldo basico'
        Then I click button 'MoveAllUnassigned'
        Then I clear field 'Accumulator concepts assigned drag and drop'
        Then I clear field 'Accumulator concepts unassigned drag and drop'
        Then I click button 'MoveAllUnassigned'
        Then I set field 'Accumulator concepts unassigned drag and drop' with 'SUELDO / HORA'
        #El proximo step falla, revisar si se soluciona cuando arreglen el bug cargado por parte de Saint Seiya referido al drag and drop y el buscador por ID que no funciona
        #Then I mark checkbox of 'Drag Drop Left' containing '01000 - * SUELDO / HORA  100'
        #Then I click button 'Move To Assigned'
        Then I click button 'MoveAllAssigned'
        Then I validate 'Left Concepts Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Concepts Drawer Chip' to have text '269 - Seleccionados'
        #Los siguientes steps se comentan porque aun no esta desarrollada la opcion "ELIMINAR" del menu elipsis
        #Then I click button 'Save'
        #Then I wait until 'Spinner' is not visible
        #Then I validate image 'Create Image' with text 'Successfully Created' is visible
        #And I validate user to be on the 'Basic Configuration Success' page
        #Then I click button 'Finish'