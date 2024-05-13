@vlpeople-nightly
Feature: Payroll -> Novedades por ajuste

As a user I want to:
        - Navigate for the differents menues option and links
        - Verify filters and grid
        - Validate toasts
        - Create, modify and delete an adjustment novelty

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
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I go to card 'Novelties'
        Then I wait until DOM is loaded
        And I go to card 'NoveltiesByEmployee'
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        Given I wait request 'Employee Novelties URL' and save with alias 'Employee Novelties'
        Given I wait request 'Particular Employee Novelty URL' and save with alias 'Employee Novelty'
        Given I wait request 'Motive Types URL' and save with alias 'Motive Types'
        Given I wait request 'Novelties Parameters URL' and save with alias 'Novelties Parameters'
        Given I wait request 'Payroll Accountability URL' and save with alias 'Payroll Accountability'  
        Given I wait request 'Novelties Structures 1 URL' and save with alias 'Novelties Structures 1'  
        Given I wait request 'Novelties Structures 2 URL' and save with alias 'Novelties Structures 2'  
        Given I wait request 'Novelties Structures 3 URL' and save with alias 'Novelties Structures 3'  

 Scenario: Navigation
 
        And I validate user to be on the 'NoveltiesByEmployee' page
        Then I validate image 'Novelty Feedback Without Employees Image' with text 'Novelty Feedback Without Employees Text' is visible
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Novelties' page
        Then I wait until DOM is loaded
        And I go to card 'NoveltiesByEmployee'
        Then I wait until DOM is loaded
        And I validate user to be on the 'NoveltiesByEmployee' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Novelties'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Novelties' page
        And I go to card 'NoveltiesByEmployee'
        Then I wait until DOM is loaded
        Then I click breadcrumb 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Novelties'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Novelties' page
        And I go to card 'NoveltiesByEmployee'
        Then I wait until DOM is loaded
        And I validate user to be on the 'NoveltiesByEmployee' page
        Then I click breadcrumb 'Payroll'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Payroll' page
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Novelties'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Novelties' page
        And I go to card 'NoveltiesByEmployee'
        Then I wait until DOM is loaded
        And I validate user to be on the 'NoveltiesByEmployee' page

 Scenario: Filter and grid
        
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'NoveltiesEmployee' with '1234576161'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click on filter list 'NoveltiesEmployee' then select option '1234576161 - Novelties Cypress'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        And I go to tab 'Adjustment Novelties'
        Then I click on empty space
        Then I click on 'According To Date Adjustment Option'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I clear field 'Date From'
        Then I click on empty space
        Then I clear field 'Date Range'
        Then I set field 'Date Range' with '31/12/2045'
        Then I click on empty space
        Then I set field 'Date From' with '01/01/2045'
        Then I click on empty space
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        Then I click on 'All Novelties Option'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I click on list 'Concept' after wait for 'Employee Novelty' then type option '01100 - Sueldo Basico'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        Then I click on list 'Parameter' after wait for 'Employee Novelty' then type option '149 - Multiplicador'
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        And I go to tab 'Adjustment Novelties'
        #Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        #Then I click on 'All Novelties Adjustment'
        Then I click on 'According To Date Adjustment Option'
        Then I wait until DOM is loaded
        Then I clear field 'Date From'
        Then I click on empty space
        Then I clear field 'Adjustment Date Range'
        Then I set field 'Adjustment Date Range' with '01/10/2031'
        Then I click on empty space
        Then I set field 'Date From' with '30/11/2031'
        Then I click on empty space
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I click on 'All Novelties Adjustment'
        Then I wait until 'Novelties Employee Table Skeleton' not exist

Scenario: Validations
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'NoveltiesEmployee' with '1234576161'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click on filter list 'NoveltiesEmployee' then select option '1234576161 - Novelties Cypress'
        #And I validate 'To Create A Adjustment Novelty You Will Have To Select A Concept' toast of type 'Alert' with message 'Para crear una novedad de ajuste deberás seleccionar un concepto' is visible
        Then I click button 'Icon close'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        Then I click on 'All Novelties Option'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I click on list 'Concept' after wait for 'Employee Novelty' then type option '01100 - Sueldo Basico'
        And I go to tab 'Adjustment Novelties'
        Then I click button 'Create'
        And I validate user to be on the 'Create Adjustment Novelty' page
        Then I click on 'Value'
        Then I set field 'Value' with '18999'
        Then I click on list 'Id Motive Type' after wait for 'Motive Types' then type option 'Actualización'
        Then I set field 'Motive Description' with 'Cypress Test'
        Then I set field 'Date From Create Form' with '26/01/2024'
        Then I set field 'Date To Create Form' with '26/01/2024'
        Then I wait until 'Spinner' is not visible
        Then I click button 'Save'
        #El siguiente step se comenta porque hay un error que deben corregir con el toast, salen 2 validaciones que no corespondens
        #And I validate 'Exists Adjustment Novelty' toast of type 'Danger' with message 'Ya existe una novedad vigente para este colaborador en este rango de fechas.' is visible


Scenario: Create an adjustment novelty
       
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'NoveltiesEmployee' with '1234576161'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click on filter list 'NoveltiesEmployee' then select option '1234576161 - Novelties Cypress'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        Then I click on 'According To Date Option'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I clear field 'Employee Date From'
        Then I click on empty space
        Then I clear field 'Employee Date To'
        Then I set field 'Employee Date To' with '31/12/2045'
        Then I click on empty space
        Then I set field 'Employee Date From' with '01/01/2045'
        Then I click on empty space
        Then I validate image 'Feedback Without Employees Image' with text 'Feedback Without Employees Text' is visible
        Then I click on 'All Novelties Option'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        And I go to tab 'Adjustment Novelties'
        Then I click on list 'Concept' after wait for 'Employee Novelty' then type option '01100 - Sueldo Basico'
        Then I click button 'Create'
        #Comentado hasta que hagan refactor para que cuando clickeas el backarrow, aparezca el empleado y el concepto.. sino la prueba se hace muy extensa a nivel codigo
        #Then I click button 'BackArrow'
        #Then I click button 'Create'
        #And I validate user to be on the 'Create Novelty by Employee' page
        #Then I click button 'Cancel Novelty Employee'
        #Then I click button 'Create'
        #And I validate user to be on the 'Create Novelty by Employee' page
        Then I click on 'Value'
        Then I click on empty space
        Then I validate 'Value Validation' to have text 'Campo obligatorio'
        Then I set field 'Value' with '18999'
        Then I click on list 'Id Motive Type' after wait for 'Motive Types' then type option 'Actualización'
        Then I click on 'Motive Description'
        Then I click on empty space
        Then I validate 'Motive Description Validation' to have text 'Campo obligatorio'
        Then I set field 'Motive Description' with 'Cypress Test'
        Then I set field 'Date From Create Form' with 'asdasdas'
        Then I validate 'Date From Validation Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        Then I clear field 'Date From Create Form'
        Then I set field 'Date From Create Form' with '14/03/2033'
        Then I set field 'Date To Create Form' with 'asdasdas'
        Then I validate 'Date To Create Form Validation' to have text 'La fecha ingresada no tiene el formato establecido'
        Then I clear field 'Date To Create Form'
        Then I set field 'Date To Create Form' with '14/08/2033'
        Then I set field 'Retroactive Period From' with 'Octubre 2030'
        And I click on contain 'Octubre 2030'
        Then I set field 'Retroactive Period To' with 'Enero 2031'
        And I click on contain 'Enero 2031'
        Then I clear field 'Date'
        Then I set field 'Date' with '24/01/2024'
        #Then I validate image 'Feedback Without Records Image' with text 'Feedback Without Records Text' is visible
        Then I click 'Popover' question mark and popover 'Novelties popover' is visible
        Then I click on empty space
        Then I validate 'Contable Distribution Panel Body' is visible
        And I validate 'Contable Distribution Panel Indicator' orientation is 180
        Then I click on 'Contable Distribution Panel Indicator'
        Then I validate 'Contable Distribution Panel Body' is not visible
        And I validate 'Contable Distribution Panel Indicator' orientation is 0
        Then I click on 'Contable Distribution Panel Indicator'
        Then I click on 'Add Contable Distribution'
        Then I wait until 'Contable Distribution Skeleton' not exist
        Then I click on list 'Accounting Entry Model Id' after wait for 'Payroll Accountability' then type option 'Estructuras'
        And I wait for '5' seconds
        Then I validate 'Structure 1 Validation' to have text 'Campo obligatorio'
        Then I validate 'Structure 2 Validation' to have text 'Campo obligatorio'
        Then I validate 'Structure 3 Validation' to have text 'Campo obligatorio'
        Then I validate button 'Save Config' is disabled
        Then I click on list 'Structure 1' after wait for 'Novelties Structures 1' then type option 'CSLATAM'
        Then I click on list 'Structure 2' after wait for 'Novelties Structures 2' then type option 'Agropecuaria'
        Then I click on list 'Structure 3' after wait for 'Novelties Structures 3' then type option 'COMERCIO'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

Scenario: Modify an adjustment novelty
        
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'NoveltiesEmployee' with '1234576161'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click on filter list 'NoveltiesEmployee' then select option '1234576161 - Novelties Cypress'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        And I go to tab 'Adjustment Novelties'
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        Then I click on 'According To Date Option Adjustment'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I clear field 'Date From'
        Then I click on empty space
        Then I clear field 'Date Range'
        Then I set field 'Date From' with '14/03/2033'
        Then I click on empty space
        Then I set field 'Date Range' with '14/08/2033'
        Then I click on empty space
        Then I select option 'Modificar' from ellipsis menu inside material grid with value '01100 - Sueldo Basico'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I clear field 'Motive Description'
        Then I set field 'Motive Description' with 'Cypress Test Modified'
        Then I click button 'Save'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I validate user to be on the 'NoveltiesByEmployee' page

 Scenario: Delete an adjustment novelty

        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'NoveltiesEmployee' with '1234576161'
        Then I wait until 'Spinner' is not visible
        Then I wait until DOM is loaded
        Then I click on filter list 'NoveltiesEmployee' then select option '1234576161 - Novelties Cypress'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I wait until 'Filter Skeleton' not exist
        And I go to tab 'Adjustment Novelties'
        And I load file 'AdjustmentNovelties' from 'VismaLatam/Payroll'
        Then I click on 'According To Date Option Adjustment'
        Then I wait until 'Novelties Employee Table Skeleton' not exist
        Then I clear field 'Date From'
        Then I click on empty space
        Then I clear field 'Date Range'
        Then I set field 'Date From' with '14/03/2033'
        Then I click on empty space
        Then I set field 'Date Range' with '14/08/2033'
        Then I click on empty space
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value '01100 - Sueldo Basico'
        Then I click Modal button 'Modal Cancel'
        Then I select option 'Eliminar' from ellipsis menu inside material grid with value '01100 - Sueldo Basico'
        Then I click Modal button 'Accept'
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'