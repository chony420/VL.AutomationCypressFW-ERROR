@vlpeople-nightly
Feature: People -> Colaboradores

 As a user I want to:
        - Make all the required steps to create an employee until the save button is available
    @Smoke
    Scenario: Colaboradores 
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Given I wait request 'Nacionalities URL' and save with alias 'nacionalitiesRequest'
        Given I wait request 'Country URL' and save with alias 'countryRequest'
        Given I wait request 'Documents URL' and save with alias 'documentTypesRequest'
        Given I wait request 'Geolocation URL' and save with alias 'zoneRequest'
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'
        Then I wait until DOM is loaded
        Then I click button 'Create'
        And I load file 'DatosColaborador' from 'VismaLatam/People'
        And I set field 'Apellido' with 'Izquierdo'
        And I set field 'Nombre' with 'Jonathan'  
        And I click on list 'Nacionalidad' after wait for 'nacionalitiesRequest' then type option 'Argentina'   
        And I set field 'Genero' with 'Masculino'
        And I click on contain 'Masculino'  
        Then I click on empty space
        And I set field 'FechaNac' with '26/04/1982' 
        And I set field 'Estado Civil' with 'SOLTERO'
        And I click on contain 'SOLTERO'  
        And I click on list 'Pais Nacimiento' after wait for 'countryRequest' then type option 'Argentina'  
        Then I validate 'Required Employee Form' is not visible
        Then I click on 'Documents Panel'
        Then I click button 'Feedback Action' 
        And I click on list 'Country for DNI' after wait for 'countryRequest' then type option 'ARGENTINA' 
        And I click on contain 'Argentina'   
        And I set field 'Document Type for DNI' with 'DNI'
        And I click on contain 'DNI - Doc. Nac. de Identi'  
        And I set field 'DNI' with '29501326'
        And I set field 'Expiration Date for DNI' with '02/08/2025'
        Then I click button 'Add Document'  
        And I click on list 'Country for CUIL' after wait for 'countryRequest' then type option 'ARGENTINA'  
        And I click on list 'Document Type for CUIL' after wait for 'documentTypesRequest' then type option 'CUIL - CUIL'    
        And  I set field 'CUIL' with '20295013266'
        Then I click on 'Main Document'
        Then I validate 'Required Document' is not visible
        Then I click on 'Adress Panel'
        Then I wait until DOM is loaded 
        And I set field 'Address Type li' with 'Particular'
        And I click on contain 'Particular' 
        And I set field 'Street' with 'Calle Falsa'  
        And I set field 'Street Number' with '1234'  
        And I set field 'Floor' with '2'  
        And I set field 'Department' with 'B' 
        And I set field 'Between Streets' with 'Calle Primera y Calle Segunda' 
        And I set field 'Neighborhood' with 'Barrio Privado' 
        And I set field 'Zip Code' with '1423'  
        And I set field 'City' with 'Olivos'
        And I click on contain 'OLIVOS (VICENTE LÓPEZ) ' 
        Then I wait until 'geolocation' request 'Geolocation URL' status is OK 
        And I click on list 'Zone' after wait for 'zoneRequest' then type option 'BUENOS AIRES - VICENTE LOPEZ'   
        Then I validate 'Required Adress' is not visible
        Then I validate button 'Submit Changes' is not disabled

      Scenario: Domicilio 
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Given I wait request 'Nacionalities URL' and save with alias 'nacionalitiesRequest'
        Given I wait request 'Country URL' and save with alias 'countryRequest'
        Given I wait request 'Documents URL' and save with alias 'documentTypesRequest'
        Given I wait request 'Geolocation URL' and save with alias 'zoneRequest'
        Given I wait request 'Organization Models URL' and save with alias 'organizationModel'
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'Colaborador'  
        And I load file 'FilterMenu' from 'Commons'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1'
        Then I wait for '2' seconds
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People'
        Then I wait until 'organizationModel' request 'Organization Models URL' status is OK  
        Then I wait until 'Modify' is visible
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Adress Panel' 
        Then I wait until 'geolocation' request 'Geolocation URL' status is OK 
        And I click on list 'Country' after wait for 'countryRequest' then type option 'PERU'   
        Then I click button 'Accept'
        And I click on list 'Country' after wait for 'countryRequest' then type option 'ARGENTINA'   
        Then I click button 'Accept'
        And I set field 'Address Type li' with 'Particular'
        And I click on contain 'Particular' 
        And I set field 'Street' with 'Calle Falsa'  
        And I set field 'Street Number' with '1234'  
        And I set field 'Floor' with '2'  
        And I set field 'Department' with 'B' 
        And I set field 'Between Streets' with 'Calle Primera y Calle Segunda' 
        And I set field 'Neighborhood' with 'Barrio Privado' 
        And I set field 'Zip Code' with '1423'  
        And I set field 'City' with 'Olivos'
        And I click on contain 'OLIVOS (VICENTE LÓPEZ) ' 
        Then I wait until 'geolocation' request 'Geolocation URL' status is OK 
        And I click on list 'Zone' after wait for 'zoneRequest' then type option 'BUENOS AIRES - VICENTE LOPEZ' 
        Then I click on 'Address Additional Panel' 
        And I set field 'Sector' with 'Sec. Visma' 
        And I set field 'Torre' with 'Tor. Visma' 
        And I set field 'Manzana' with 'Man. Visma' 
        And I set field 'Kilometro' with 'Kil. Visma' 
        And I set field 'Circunscripcion' with 'Circ. Visma' 
        And I set field 'Cuerpo' with 'Cue. Visma' 
        And I set field 'Lote' with 'Lot. Visma' 
        And I set field 'Parcela' with 'Par. Visma' 
        And I set field 'Bloque' with 'Blo. Visma' 
        And I set field 'Seccion' with 'Sec. Visma' 
        And I set field 'Casa' with 'Casa Visma' 
        Then I click button 'Submit Changes' 
        Then I wait until 'Spinner' is not visible
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'Employees'
        And I load file 'FilterMenu' from 'Commons' 
        Then I wait until 'EmployeesTable' not have class 'skeleton-table'
        Then I set field 'LastName' with 'Cypress FWK'
        Then I wait until DOM is loaded
        Then I set field 'Name' with 'Automation'  
        Then I click button 'Apply Filter'
        And I validate in fixture 'Commons/Spinner' the element 'Loading Text' not exist
        Then I validate chip 'Chip Reset Filter' contains value '1' 
        Then I wait for '2' seconds
        And I select option 'Ver colaborador' from ellipsis with value '1234576160'
        And I load file 'DatosColaborador' from 'VismaLatam/People'
        Then I wait until 'Modify' is visible
        Then I click button 'Modify Employee Profile' 
        Then I click on 'Adress Panel' 
        Then I wait until 'geolocation' request 'Geolocation URL' status is OK 
        Then I validate 'Street' its value contain 'Calle Falsa'  
        Then I validate 'Street Number' its value contain '1234' 
        Then I validate 'Floor' its value contain '2' 
        Then I validate 'Department' its value contain 'B' 
        Then I validate 'Between Streets' its value contain 'Calle Primera y Calle Segunda' 
        Then I validate 'Neighborhood' its value contain 'Barrio Privado' 
        Then I validate 'Zip Code' its value contain '1423' 
        Then I validate 'City' its value contain 'OLIVOS' 