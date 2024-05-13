@vlpeople-flaky
Feature: Payroll -> Acciones masivas

    As a user I want to:
        - Navigate for the differents menues option and links
        - Create, duplicate and delete a salary advance request
         
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
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I go to card 'SalaryAdvance'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        And I load file 'MassiveActions' from 'VismaLatam/Payroll'
        Given I wait request 'Salary Advance Types URL' and save with alias 'Salary Advance Types'
        Given I wait request 'Payroll Periods URL' and save with alias 'Payroll Periods'
        Given I wait request 'Payroll Accumulators URL' and save with alias 'Payroll Accumulators'
        Given I wait request 'Structure Types URL' and save with alias 'Structure Types'
        Given I wait request 'GraphQL URL' and save with alias 'GraphQL'          
        
    Scenario: Navigation

        And I validate user to be on the 'MassiveActions' page 
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'SalaryAdvanceType' page
        And I go to card 'MassiveActions'
        Then I wait until DOM is loaded
        And I validate user to be on the 'MassiveActions' page 
        Then I click button 'Cancel'

     Scenario: Create a Salary Advance Request
        
        Then I wait until DOM is loaded
        Then I wait until 'Massive Actions Skeleton' not exist
        And I click on list 'MassiveActionType' then select option 'Solicitud de anticipos'
        Then I validate button 'Continue' is not disabled
        Then I click on 'Description'
        Then I click on empty space
        Then I validate 'Description Validation' to have text 'Campo obligatorio'
        Then I set field 'Description' with 'Cypress Massive Action'
        Then I click on 'SalaryAdvanceType'
        Then I click on empty space
        Then I validate 'SalaryAdvanceType Validation' to have text 'Campo obligatorio'
        And I click on list 'SalaryAdvanceType' after wait for 'Salary Advance Types' then type option 'Adelantos de Sueldos' 
        Then I click on 'RequestDate'
        Then I click on empty space
        Then I validate 'RequestDate Validation' to have text 'Campo obligatorio'
        Then I set field 'RequestDate' with '08/03/2024'
        Then I click on 'PlannedDate'
        Then I click on empty space
        Then I validate 'PlannedDate Validation' to have text 'Campo obligatorio'
        Then I set field 'PlannedDate' with '31/03/2024'
        Then I click on 'IdPeriodDiscount'
        Then I click on empty space
        Then I validate 'IdPeriodDiscount Validation' to have text 'Campo obligatorio'
        And I click on list 'IdPeriodDiscount' after wait for 'Payroll Periods' then type option 'Marzo 2024' 
        And I click on list 'IdCurrency' after wait for 'Payroll Accumulators' then type option 'Dólar' 
        Then I click on empty space
        Then I force click 'PaymentPercentageOption'
        Then I click on empty space
        Then I force click 'AmountOption'
        Then I set field 'Amount' with '2000'
        Then I click button 'Continue'
        Then I click button 'Previous'
        Then I click button 'Continue'
        And I go to step 'Payroll-MassiveActionType-Step-1'
        Then I wait until DOM is loaded
        And I go to step 'Payroll-MassiveActionType-Step-2'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I click on 'Personal Data Header'
        Then I validate 'Left Attributes Drawer Chip' to have text '37507 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Incorporados'
        And I click on list 'IdBossEmployee' after wait for 'GraphQL' then type option '1234569509 - Daniel A. Zaccaria QA'
        Then I set field 'Incorporate Unassigned Search Input' with 'MATIAS'
        Then I validate 'Left Attributes Drawer Chip' to have text '38 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Incorporados'
        Then I click button "MoveAllAssigned"
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '38 - Incorporados'
        Then I click button 'Save' 
        Then I click on "Tree Arrow"
        Then I wait until 'Tree Text' has value 'Colaboradores seleccionados (38)'
        Then I click on "Tree Arrow"
        Then I click on empty space
        Then I force click button 'Save Massive Action'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Inprocess Image' with text 'Request Success' is visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        And I click button 'Finish'
        And I validate user to be on the 'SalaryAdvanceType' page       

     Scenario: Copying a Salary Advance Requested

        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until 'Massive Actions Skeleton' not exist
        And I click on list 'MassiveActionType' then select option 'Copiar anticipos'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I click on 'SalaryAdvanceType'
        Then I click on empty space
        Then I validate 'SalaryAdvanceType Validation' to have text 'Campo obligatorio'
        And I click on list 'SalaryAdvanceType' after wait for 'Salary Advance Types' then type option 'Adelantos de Sueldos' 
        Then I click on 'Origin Period'
        Then I click on empty space
        Then I validate 'Origin Period Validation' to have text 'Campo obligatorio'
        And I click on list 'Origin Period' after wait for 'Payroll Periods' then type option 'Marzo 2024'
        Then I click on 'Copy Only The Last Option'
        Then I click on 'Amount Option'
        Then I click on 'Destination Period'
        Then I click on empty space
        Then I validate 'Destination Period Validation' to have text 'Campo obligatorio'
        Then I set text 'Diciembre 2024' on 'Destination Period' and press enter
        Then I validate button 'Continue' is not disabled
        Then I click button 'Continue'
        Then I click button 'Previous'
        Then I click button 'Continue'
        And I go to step 'Payroll-MassiveActionType-Step-1'
        Then I wait until DOM is loaded
        And I go to step 'Payroll-MassiveActionType-Step-2'
        And I go to tab 'Organization'
        Then I click on 'Structure Panel'
        Then I set field 'Structure Start Date' with '01/01/2016'
        Then I set field 'Structure Type' with 'Empresa'
        Then I force click 'EMPRESA'
        Then I set text 'VISMA LATAM' on 'Structure Attribute' and press enter        
        Then I click button 'Incorporate Employee Filter'
        Then I validate 'Left Attributes Drawer Chip' to have text '23 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Incorporados'
        Then I click button "MoveAllAssigned"
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '23 - Incorporados'
        Then I validate button 'Continue' is not disabled
        Then I click button 'Save'
        Then I click on "Tree Arrow"
        Then I wait until 'Tree Text' has value 'Colaboradores seleccionados (23)'
        Then I click on "Tree Arrow"
        And I go to step 'Payroll-MassiveActionType-Step-2'
        Then I wait until DOM is loaded
        And I go to step 'Payroll-MassiveActionType-Step-3'
        Then I click on empty space
        Then I force click button 'Save Massive Action'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Inprocess Image' with text 'Copy Success' is visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        And I click button 'Finish'
        And I validate user to be on the 'SalaryAdvanceType' page       

 Scenario: Deleting a Salary Advance Requested

        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until 'Massive Actions Skeleton' not exist
        And I click on list 'MassiveActionType' then select option 'Baja de anticipos'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I click on 'SalaryAdvanceType'
        Then I click on empty space
        Then I validate 'SalaryAdvanceType Validation' to have text 'Campo obligatorio'
        And I click on list 'SalaryAdvanceType' after wait for 'Salary Advance Types' then type option 'Adelantos de Sueldos'
        Then I click on 'IdPeriodDiscount'
        Then I click on empty space
        Then I validate 'IdPeriodDiscount Validation' to have text 'Campo obligatorio'
        And I click on list 'IdPeriodDiscount' after wait for 'Payroll Periods' then type option 'Marzo 2024'
        Then I validate button 'Continue' is not disabled
        Then I click button 'Continue'
        Then I click button 'Previous'
        Then I click button 'Continue'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I validate 'Left Attributes Drawer Chip' to have text '38 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Incorporados'
        Then I click button "MoveAllAssigned"
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '38 - Incorporados'
        Then I validate button 'Continue' is not disabled
        Then I click button 'Save'
        Then I wait until 'Tree Text' has value 'Colaboradores seleccionados (38)'
        Then I click on "Tree Arrow"
        And I go to step 'Payroll-MassiveActionType-Step-2'
        Then I wait until DOM is loaded
        And I go to step 'Payroll-MassiveActionType-Step-3'
        Then I click on empty space
        Then I force click button 'Save Massive Action'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Inprocess Image' with text 'Delete Success' is visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        And I click button 'Finish'
        And I validate user to be on the 'SalaryAdvanceType' page

    Scenario: Deleting a Salary Advance Requested created from copy

        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I go to card 'MassiveActions'
        Then I wait until 'Massive Actions Skeleton' not exist
        And I click on list 'MassiveActionType' then select option 'Baja de anticipos'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I click on 'SalaryAdvanceType'
        Then I click on empty space
        Then I validate 'SalaryAdvanceType Validation' to have text 'Campo obligatorio'
        And I click on list 'SalaryAdvanceType' after wait for 'Salary Advance Types' then type option 'Adelantos de Sueldos'
        Then I click on 'IdPeriodDiscount'
        Then I click on empty space
        Then I validate 'IdPeriodDiscount Validation' to have text 'Campo obligatorio'
        And I click on list 'IdPeriodDiscount' after wait for 'Payroll Periods' then type option 'Diciembre 2024'
        Then I validate button 'Continue' is not disabled
        Then I click button 'Continue'
        Then I click button 'Previous'
        Then I click button 'Continue'
        Then I wait until 'Massive Actions Skeleton' not exist
        Then I validate 'Left Attributes Drawer Chip' to have text '23 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '0 - Incorporados'
        Then I click button "MoveAllAssigned"
        Then I validate 'Left Attributes Drawer Chip' to have text '0 - Encontrados'
        Then I validate 'Right Attributes Drawer Chip' to have text '23 - Incorporados'
        Then I validate button 'Continue' is not disabled
        Then I click button 'Save'
        And I go to step 'Payroll-MassiveActionType-Step-2'
        Then I wait until DOM is loaded
        And I go to step 'Payroll-MassiveActionType-Step-3'
        Then I wait until 'Tree Text' has value 'Colaboradores seleccionados (23)'
        Then I click on "Tree Arrow"
        Then I click on empty space
        Then I force click button 'Save Massive Action'
        Then I wait until 'Spinner' is not visible
        Then I validate image 'Inprocess Image' with text 'Delete Success' is visible
        And I validate user to be on the 'PayrollOperationSuccess' page
        And I click button 'Finish'
        And I validate user to be on the 'SalaryAdvanceType' page