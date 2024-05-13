@vlpeople-nightly
Feature: Payroll -> MOPRE

       Background:
              Given I login on 'VismaLatam' as 'superadmin'
              Then I validate user to be on the 'Login' page
              And I load file 'Login' from 'Commons/Login'
              And I set field 'Database' with 'Cypress Argentina'
              And I click on contain 'Cypress Argentina'
              Then I click on 'ChooseBtn'
              And I validate user to be on the 'Home' page
              Then I wait for '2' seconds
              When I go to module 'PAYROLL'
              Then I wait for '2' seconds
              And I go to card 'MOPRE'
              Then I wait for '2' seconds
              And I load file 'Mopre' from 'VismaLatam/Payroll'

       Scenario: Asignar Concepto
              Then I hover 'Icono Excel' and 'Exportar a Excel' is visible
              And I validate user to be on the 'MOPRE' page
              Then I click button 'Add'
              Then I set filter field 'Unassigned' with 'Cypress Concepto'
              Then I mark checkbox of 'Drag Drop Left' containing '(9998) Cypress Concepto'
              Then I click on 'Assign arrow' to drag
              Then I hover 'ObligatorioBadge' and 'Obligatorio' is visible
              Then I set filter field 'Assigned' with 'Cypress Concepto'
              Then I click button 'Modify Registry in Drag & Drop'
              Then I click on 'Wrapper Parameter'
              Then I click on 'Divisor'
              And I click on not visible 'Substraction'
              Then I click button contains 'Guardar'
              And I validate in fixture 'Commons/Tooltip' the element 'ObligatorioBadge' not exist
              Then I click button 'Save'
              Then I wait for '2' seconds
              And I validate user to be on the 'MOPRE' page
              And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        
       Scenario: Desasignar Concepto
              Then I click button 'Add'
              Then I set filter field 'Assigned' with 'Cypress Concepto'
              Then I mark checkbox of 'Drag Drop Right' containing '(9998) Cypress Concepto'
              Then I click on 'Unassign arrow' to drag 
              Then I click button 'Save'
              Then I wait for '2' seconds
              And I validate user to be on the 'MOPRE' page
              And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'