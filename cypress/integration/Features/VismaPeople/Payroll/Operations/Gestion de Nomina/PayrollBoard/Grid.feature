@vlpeople-nightly
Feature: Payroll -> Tablero de Nomina

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
        Then I go to card 'Operations'
        And I go to card 'Payroll Management'
        And I load file 'Tablero' from 'VismaLatam/Payroll'        
    
    Scenario: Grilla  
        Then I wait until 'Payroll Filter Skeleton' not exist
        And I set field 'Description' with 'Marzo 2022'
        Then I click button 'Apply Filter' 
        And I double click 'Marzo 2022'
        Then I validate 'Header Info Skeleton' have class 'skeleton-loader' 
        Then I validate 'Proceso Header Detail' to have text 'Marzo 2022 mensual'
        Then I validate 'Periodo Header Detail' to have text 'Marzo 2022'
        Then I validate 'Modelo Header Detail' to have text 'Mensuales'
        #Then I validate 'MOPRE Header Detail' to contain '318,103.8300'
        Then I validate 'FechaPago Header Detail' to have text '31/03/2022' 
        Then I validate 'SMVM Header Detail' to have text '500.00'
        When I validate 'PayrollBoardHeader' to be visible
        Then I validate 'Tablero Title' is a 'H1' with text 'Tablero de nómina'
        Then I validate the element 'PayrollBoardHeader' to have a 'padding' of '16px'
        Then I validate image 'Imagen Selecciona Colaborador' with text 'Colaborador Seleccion' is visible
        Then I wait until 'Nombre Colaborador' is visible
        When I click on 'Colaborador'
        #Then I hover 'Descargar Excel' and 'Descargar .xls' is visible
        #Then I hover 'Perfil' and 'Ver perfil' is visible
        #Then I hover 'Adjunto' and 'Nota adjunta' is visible
        #Then I hover 'Warning' and 'Resultados con monto 0' is visible
        #Then I hover 'AusenciasyVacaciones' and 'Ausencias y Vacaciones' is visible
        #Then I hover 'ConfigurarTablero' and 'Configurar tablero' is visible
        #Then I hover 'OrdenarVisible' and 'Ordenar visible' is visible
        #Then I hover 'IrMopre' and 'Ir a MOPRE' is visible 
        Then I wait until 'Concept Board Skeleton' not exist
        Then I validate 'Monto0 Concept Check' to be visible
        Then I validate 'Visible Concept Check' to be visible
        Then I validate 'NoVisible Concept Check' to be visible
        Then I validate 'Acumuladores Header' not include 'Monto 0'
        Then I validate 'Visible Accumulator Check' to be visible
        Then I validate 'NoVisible Accumulator Check' to be visible
        Then I click on 'Concept1'
        Then I validate message 'Total: $318.103,83' to be visible
        Then I wait until 'ContainerTotal' is visible
        Then I validate message 'Shift + clic selecciona varias filas' to be visible
        Then I validate message 'Ctrl + clic selecciona una a la vez' to be visible
        And I click on 'Concept1' and select to 'Concept3' with ctrl key
        Then I validate message 'Total: $318.133,83' to be visible
        Then I click on 'CloseContainerTotal'
        Then I wait until 'CloseContainerTotal' not exist
        Then I click on 'Accumulator1'
        Then I validate message 'Total: $888.318,30' to be visible
        Then I validate message 'Shift + clic selecciona varias filas' to be visible
        Then I validate message 'Ctrl + clic selecciona una a la vez' to be visible
        And I click on 'Accumulator1' and select to 'Accumulator7' with shift key
        Then I validate message 'Total: $163.805.711,88' to be visible
        Then I click on 'CloseContainerTotal'
        Then I wait until 'CloseContainerTotal' not exist       

    Scenario: Navegacion
        Then I wait until DOM is loaded
        Then I click on filter list 'Status Process' then select option 'Aprobado Provisorio'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I double click 'Aprobado provisorio'   
        Then I validate user to be on the 'PayrollBoard' page 
        Then I click button 'Board Back Arrow'
        Then I validate user to be on the 'PayrollProcessGrid' page
        Then I wait until DOM is loaded 
        Then I click on filter list 'Status Process' then select option 'Aprobado Definitivo'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I double click 'Aprobado definitivo'   
        Then I validate user to be on the 'PayrollBoard' page 
        Then I click button 'Board Back Arrow'
        Then I validate user to be on the 'PayrollProcessGrid' page
        Then I wait until DOM is loaded
        Then I click on filter list 'Status Process' then select option 'Procesado'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I double click 'Procesado'   
        Then I validate user to be on the 'PayrollBoard' page 
        Then I click button 'Board Back Arrow'
        Then I validate user to be on the 'PayrollProcessGrid' page 
        Then I set field 'Description' with 'Cypress Tablero - No Tocar' 
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table'
        Then I select option 'Ver tablero' from ellipsis with value 'Cypress Tablero - No Tocar'  
        Then I validate user to be on the 'PayrollBoard' page

     Scenario: Filter
        And I load file 'Chip' from 'Commons'
        Then I validate chip 'Chip PayrollModel' contains value 'Todos'
        Then I validate chip 'Chip PayrollPeriod' contains value 'Todos'
        Then I validate chip 'Chip PayrollStatus' contains value 'Todos'
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'ID Process' with '61722'
        Then I set field 'Description' with 'Marzo 2022 mensual'
        Then I wait until DOM is loaded
        Then I click on filter list 'Payroll Period' then select option 'Marzo 2022'
        Then I wait until DOM is loaded
        Then I click on filter list 'Payroll Model' then select option 'Mensuales'
        Then I wait until DOM is loaded
        Then I click on filter list 'Status Process' then select option 'Procesado'
        Then I wait until DOM is loaded
        Then I click on 'Date Panel'
        Then I set field 'Start Date' with '01/03/2022'
        Then I set field 'End Date' with '31/03/2022'
        Then I set field 'Payment Date' with '31/03/2022'
        Then I click button 'Apply Filter'
        And I load file 'Chip' from 'Commons'
        Then I validate chip 'Chip IdProcess' contains value ' ID PROCESO: 61722 '
        Then I validate chip 'Chip Description' contains value 'MARZO 2022 MENSUAL'
        Then I validate chip 'Chip PayrollPeriod' contains value 'Marzo 2022'
        Then I validate chip 'Chip PayrollModel' contains value 'Mensuales'
        Then I validate chip 'Chip DateRange' contains value 'Desde: 01/03/2022 - Hasta 31/03/2022'
        Then I validate chip 'Chip PaymentDate' contains value 'Fecha de pago 31/03/2022'
        Then I validate content of blue chip with '1' results
        Then I click on 'Chip Description'
        Then I click on 'Chip PayrollPeriod'
        Then I click on 'Chip PayrollModel'
        Then I click on 'Chip PayrollStatus'
        Then I click on 'Chip DateRange'
        Then I click on 'Chip PaymentDate'
        Then I validate chip 'Chip PayrollModel' contains value 'Todos'
        Then I validate chip 'Chip PayrollPeriod' contains value 'Todos'
        Then I validate chip 'Chip PayrollStatus' contains value 'Todos'
        Then I wait until DOM is loaded
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'Description' with 'Descripción inexistente'
        Then I click button 'Apply Filter'
        Then I validate image 'Feedback Without Results Image' with text 'Feedback Without Results Text' is visible
        Then I validate content of blue chip with '0' results
        # Then I wait until DOM is loaded
        # Then I click on 'Process Data Panel'
        # Then I validate 'Process Data Filters' is not visible
        # And I validate 'Process Data Panel Header' orientation is 0
        # Then I click on 'Process Data Panel'
        # Then I validate 'Process Data Filters' is visible
        # And I validate 'Process Data Panel Header' orientation is 180
        # Then I click on 'Date Panel'
        # Then I validate 'Date Filters' is visible
        # And I validate 'Date Header' orientation is 0
        # Then I click on 'Date Panel'
        # Then I validate 'Date Filters' is not visible
        # And I validate 'Date Header' orientation is 180
        # Then I click on 'ShowFilter'
        # Then I wait until 'Form Process Filter' not exist
        # Then I click on 'ShowFilter'
        # Then I validate 'Form Process Filter' is visible

    Scenario: Responsive - 1200 / 768 px    
        Then I wait until 'Payroll Filter Skeleton' not exist
        Then I click on filter list 'Payroll Period' then select option 'Enero 2031'
        Then I click on filter list 'Payroll Model' then select option 'Cypress Automation Model No tocar'
        Then I click on filter list 'Payroll State' then select option 'Procesado' 
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter' 
        Then I wait until 'Table' not have class 'skeleton-table'
        And I validate content of column 'Procesados Cell' from element containing '61784' is shown after in 'Procesados Header'
        Then I validate user to be on the 'PayrollBoard' page
        Then I wait until 'Nombre Colaborador' is visible
        When I click on 'Colaborador'
        Given I set viewport 1200 768
        Then I validate 'Colaborador Sidebar' is not visible
        Then I validate 'Proceso Button' is not visible
        Then I validate 'AccesosDirectos Button' is not visible
        Then I validate 'Calendar Button' is not visible
        Then I validate 'Colaborador Search Button' to be visible
        Then I validate the element 'Header Detail' to have a 'flex-wrap' of 'wrap'