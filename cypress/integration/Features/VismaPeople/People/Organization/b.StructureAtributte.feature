@vlpeople-nightly
Feature: People -> Estructuras

  As user I want to:
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
    # Then I wait until DOM is loaded
    # And I go to card 'Estructura'
    # Then I wait until DOM is loaded
    # And I validate user to be on the 'Estructura' page
    And I load file 'Estructuras' from 'VismaLatam/People'
    Given I wait request 'Geolocation URL' and save with alias 'zoneRequest'
    Given I wait request 'Structure URL' and save with alias 'structureRequest'
    Given I wait request 'EmployerTypes URL' and save with alias 'employertypes'
    Given I wait request 'StructureTypes URL' and save with alias 'structuretypes'

  # Scenario: Create 'Caja de Jubilación' Attribute Structure
  # And I go to tab 'Atributo de estructura'
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Caja de Jubilacion'
  # And I click on contain 'Caja de Jubilacion'
  # Then I click button 'Cancel'
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Caja de Jubilacion'
  # And I click on contain 'Caja de Jubilacion'
  # And I validate user to be on the 'Retirement Fund' page
  # And I set field 'Description' with 'Cypress Caja de Jubilacion'
  # Then I click on 'Type Retirement Fund'
  # And I click on contain 'Testeo Automation'
  # And I set field 'ExternalCode' with "123"
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'ANSES'
  # And I click on contain 'ANSES'
  # And I set field 'Valor codigo' with '123'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Caja de Jubilación' Attribute Structure
  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Caja de Jubilacion'
  # And I click on contain 'Caja de Jubilacion'
  # And I set field 'FilterAttributes' with 'Cypress Caja de Jubilacion'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Caja de Jubilacion'
  # Then I wait until DOM is loaded
  # Then I clear field "Description"
  # And I set field 'Description' with 'Cypress Caja de Jubilacion Modified'
  # Then I clear field "ExternalCode"
  # And I set field 'ExternalCode' with "123456"
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click button 'Save'
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Caja de Jubilacion Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Caja de Jubilacion Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Caja de Jubilacion Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Caja de Jubilacion Modified'
  # Then I validate message 'Modificado correctamente' to be visible


  # Scenario: Delete 'Caja de Jubilación' Attribute Structure
  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Caja de Jubilacion'
  # And I set field 'FilterAttributes' with 'Cypress Caja de Jubilacion Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Caja de Jubilacion Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Caja de Jubilacion Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Agencia' Attribute Structure
  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Agencia'
  # And I click on contain 'Agencia'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Agencia'
  # And I click on contain 'Agencia'
  # And I validate user to be on the 'Agencia' page
  # And I set field 'Company name' with 'Cypress Agencia'
  # And I set field 'ExternalCode' with "123"
  # And I set field 'Responsable' with 'Leonel Messi'
  # And I set field 'Resolution' with '98756'
  # And I set field 'Start date resolution' with '01/01/2023'
  # And I set field 'End date resolution' with '14/01/2023'
  # And I set field 'Company' with 'Visma LATAM'
  # And I set field 'Policy Number' with 'M1589875'
  # And I set field 'Start date civil' with '01/01/2023'
  # And I set field 'End date civil' with '14/01/2023'
  # And I set field 'Delegate' with 'Lionel Scaloni'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'ORG'
  # And I click on contain 'ORG'
  # And I set field 'Valor codigo' with '123'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Agencia' Attribute Structure
  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Agencia'
  # And I click on contain 'Agencia'
  # And I set field 'FilterAttributes' with 'Cypress Agencia'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Agencia'
  # Then I wait until DOM is loaded
  # Then I clear field "Company name"
  # And I set field 'Company name' with 'Cypress Agencia Modified'
  # Then I clear field "ExternalCode"
  # And I set field 'ExternalCode' with "123456"
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I clear field "Responsable"
  # And I set field 'Responsable' with "Andres Iniesta"
  # Then I clear field "Resolution"
  # And I set field 'Resolution' with "98756 Modified"
  # Then I clear field "Start date resolution"
  # And I set field 'Start date resolution' with '14/03/2026'
  # Then I clear field "End date resolution"
  # And I set field 'End date resolution' with '14/08/2026'
  # Then I clear field "Company"
  # And I set field 'Company' with 'Visma LATAM 02'
  # Then I clear field "Policy Number"
  # And I set field 'Policy Number' with 'M1589875 222'
  # Then I clear field 'Start date civil'
  # And I set field 'Start date civil' with '08/01/2023'
  # Then I clear field 'End date civil'
  # And I set field 'End date civil' with '08/02/2023'
  # Then I clear field 'Delegate'
  # And I set field 'Delegate' with 'Pep Guardiola'
  # Then I click on 'Otros codigos'
  # And I set field 'Code type' with 'BCH'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '123'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BGAL'
  # And I click on contain 'BGAL'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Agencia Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Agencia Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Agencia Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Agencia Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Agencia' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Agencia'
  # And I set field 'FilterAttributes' with 'Cypress Agencia Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Agencia Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Agencia Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'ART' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'ART'
  # And I click on contain 'ART'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'ART'
  # And I click on contain 'ART'
  # And I validate user to be on the 'ART' page
  # And I set field 'Company name' with 'Cypress ART'
  # And I set field 'ExternalCode' with "123"
  # And I set field 'Payroll code' with "8585"
  # And I set field 'Policy' with "4521"
  # Then I clear field 'Insurance capital'
  # And I set field 'Insurance capital' with "780"
  # Then I clear field 'Premium insured'
  # And I set field 'Premium insured' with "1500"
  # And I set field 'Address type' with 'Legal'
  # And I click on contain 'Legal'
  # And I set field 'Street' with 'Av. del Libertador'
  # And I set field 'Number' with '1879'
  # And I set field 'Floor' with '8'
  # And I set field 'Department' with 'G'
  # And I set field 'Between streets' with 'Alberdi y Pueyrredon'
  # And I set field 'Neighborhood' with 'Santa Barbara'
  # And I set field 'Zip code' with '2240'
  # And I set field 'City' with 'Olivos'
  # Then I wait until DOM is loaded
  # And I click on contain 'OLIVOS (VICENTE LÓPEZ)'
  # And I click on list 'Zone' after wait for 'zoneRequest'  then type option 'BUENOS AIRES - VICENTE LOPEZ'
  # And I click on 'Other address details'
  # And I set field 'Sector' with 'Sur'
  # And I set field 'Tower' with '1'
  # And I set field 'Main block' with '2'
  # And I set field 'Kilometer' with '34'
  # And I set field 'Circumscription' with 'B'
  # And I set field 'Part' with '2'
  # And I set field 'Lot' with '10'
  # And I set field 'Parcel' with 'G'
  # And I set field 'Block' with 'B'
  # And I set field 'Section' with 'F'
  # And I set field 'House' with 'Roja'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'BH'
  # And I click on contain 'BH'
  # And I set field 'Valor codigo' with '999'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'ART' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'ART'
  # And I click on contain 'ART'
  # And I set field 'FilterAttributes' with 'Cypress ART'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress ART'
  # Then I wait until DOM is loaded
  # Then I clear field 'Company name'
  # And I set field 'Company name' with 'Cypress ART Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with "123456"
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I clear field 'Payroll code'
  # And I set field 'Payroll code' with "9990"
  # Then I clear field 'Policy'
  # And I set field 'Policy' with "3374"
  # Then I clear field 'Insurance capital'
  # And I set field 'Insurance capital' with '690'
  # Then I clear field 'Premium insured'
  # And I set field 'Premium insured' with "1300"
  # And I set field 'Country' with 'Uruguay'
  # And I click on contain 'URUGUAY'
  # # # AGREGAR PASO PARA QUE VALIDAR EL MODAL QUE APARECE AL CAMBIAR EL PAIS ***********************
  # Then I click on 'Cancelar'
  # And I set field 'Country' with 'Uruguay'
  # And I click on contain 'URUGUAY'
  # Then I click button 'Accept'
  # # # AGREGAR PASO PARA VALIDAR QUE EL TIPO DE DOMICILIO AHORA ESTA VACIO ***********************
  # And I set field 'Address type' with 'Comercial'
  # And I click on contain 'Comercial'
  # And I set field 'Street' with 'Av. Montevideo'
  # And I set field 'Number' with '2004'
  # And I set field 'Floor' with '4'
  # And I set field 'Department' with 'A'
  # And I set field 'Between streets' with 'Mujica y Lacalle Pou'
  # And I set field 'Neighborhood' with 'Cavani'
  # And I set field 'Zip code' with '1240'
  # And I set field 'City' with 'Montevideo'
  # Then I wait until DOM is loaded
  # And I click on contain 'MONTEVIDEO'
  # # # AGREGAR PASO PARA VALIDAR QUE EL REGISTRO DE PROVINCIA ESTE EN GRIS **************************
  # And I click on 'Other address details'
  # And I set field 'Sector' with 'Norte'
  # And I set field 'Tower' with '2'
  # And I set field 'Main block' with '4'
  # And I set field 'Complement 1' with 'Complemento 1'
  # And I set field 'Complement 2' with 'Complemento 2'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BFR'
  # And I click on contain 'BFR'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '66'
  # Then I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '6664'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress ART Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress ART Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress ART Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress ART Modified'
  # Then I validate message 'Modificado correctamente' to be visible


  # Scenario: Delete 'ART' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'ART'
  # And I set field 'FilterAttributes' with 'Cypress ART Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress ART Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress ART Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Banco' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Banco'
  # And I click on contain 'Banco'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Banco'
  # And I click on contain 'Banco'
  # And I validate user to be on the 'Banco' page
  # And I set field 'Description' with 'Banco Cypress'
  # And I set field 'ExternalCode' with '737'
  # And I set field 'branchName' with 'Zona Norte'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'B.C.R.A'
  # And I click on contain 'B.C.R.A'
  # And I set field 'Valor codigo' with '787'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Banco' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Banco'
  # And I click on contain 'Banco'
  # And I set field 'FilterAttributes' with 'Banco Cypress'
  # Then I select option 'Modificar' from ellipsis with value 'Banco Cypress'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Banco Cypress 2'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '737'
  # Then I clear field 'branchName'
  # And I set field 'branchName' with 'Zona Sur'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # And I set field 'Code type' with 'BCO CTI'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '767'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Banco Cypress 2'
  # Then I select option 'Inactivar' from ellipsis with value 'Banco Cypress 2'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Banco Cypress 2'
  # Then I select option 'Activar' from ellipsis with value 'Banco Cypress 2'
  # Then I validate message 'Modificado correctamente' to be visible


  # Scenario: Delete 'Banco' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Banco'
  # And I set field 'FilterAttributes' with 'Banco Cypress 2'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Banco Cypress 2'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Banco Cypress 2'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Categoria' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Categoria'
  # And I click on contain 'Categoria'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Categoria'
  # And I click on contain 'Categoria'
  # And I validate user to be on the 'Category' page
  # And I set field 'Description' with 'Cypress Category'
  # And I set field 'ExternalCode' with '757'
  # And I click on 'Agreement'
  # And I click on contain 'COMERCIO'
  # And I set field 'CountMonths' with '8'
  # And I set field 'CountYears' with '1'
  # And I click on 'NextCategory'
  # And I click on contain 'ADMINISTRATIVO A'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'MS'
  # And I click on contain 'MS'
  # And I set field 'Valor codigo' with '777'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Categoria' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Categoria'
  # And I click on contain 'Categoria'
  # And I set field 'FilterAttributes' with 'Cypress Category '
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Category'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Category Cypress Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '787'
  # Then I clear field 'CountMonths'
  # And I set field 'CountMonths' with '5'
  # Then I clear field 'CountYears'
  # And I set field 'CountYears' with '2'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Category Cypress Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Category Cypress Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Category Cypress Modified'
  # Then I select option 'Activar' from ellipsis with value 'Category Cypress Modified'
  # Then I validate message 'Modificado correctamente' to be visible


  # Scenario: Delete 'Categoria' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Categoria'
  # And I set field 'FilterAttributes' with '	Category Cypress Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Category Cypress Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Category Cypress Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Contrato' Attribute Structure without 'Tiempo determinado' check

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # And I validate user to be on the 'Contract' page
  # And I set field 'Description' with 'Cypress Contract'
  # And I set field 'ExternalCode' with '1064'
  # And I click on 'ContractLaw'
  # And I click on contain 'Ley 1234566656345'
  # And I set field 'ReductionPercentage' with '3'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1014'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Contrato' Attribute Structure without 'Tiempo determinado' check

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # And I set field 'FilterAttributes' with 'Cypress Contract '
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Contract'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Contract Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '380'
  # And I click on 'Remove ContractLaw'
  # And I click on 'ContractLaw'
  # And I click on contain 'Ley 1234566656345'
  # Then I clear field 'ReductionPercentage'
  # And I set field 'ReductionPercentage' with '4'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Contract Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Contract Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Contract Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Contract Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Contrato' Attribute Structure without 'Tiempo determinado' check

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Contrato'
  # And I set field 'FilterAttributes' with 'Cypress Contract Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Contract Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Contract Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Contrato' Attribute Structure with check 'Tiempo determinado'

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # And I validate user to be on the 'Contract' page
  # And I set field 'Description' with 'Cypress Contract Determined time'
  # And I set field 'ExternalCode' with '4299'
  # And I click on 'ContractLaw'
  # And I click on contain 'Ley 1234566656345'
  # And I set field 'ReductionPercentage' with '8'
  # Then I 'mark' checkbox in 'Determined time'
  # Then I 'unmark' checkbox in 'Determined time'
  # Then I 'mark' checkbox in 'Determined time'
  # Then I set field 'TimeLawMaxYears' with '2'
  # And I click on 'TimeLawMaxMonths'
  # Then I click on contain '9'
  # And I set field 'DurationYears' with '2'
  # And I click on 'DurationMonths'
  # And I click on contain '8'
  # And I click on 'FollowingContract'
  # And I click on contain 'A TIEMPO INDETERMINADO'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify Contrato' Attribute Structure with check 'Tiempo determinado'

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Contrato'
  # And I click on contain 'Contrato'
  # And I set field 'FilterAttributes' with 'Cypress Contract '
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Contract Determined time'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Contract Determined time Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '4238'
  # Then I clear field 'ReductionPercentage'
  # And I set field 'ReductionPercentage' with '6'
  # Then I 'unmark' checkbox in 'Determined time'
  # Then I 'mark' checkbox in 'Determined time'
  # Then I clear field 'TimeLawMaxYears'
  # Then I set field 'TimeLawMaxYears' with '5'
  # And I click on 'TimeLawMaxMonths'
  # Then I click on contain '11'
  # And I set field 'DurationYears' with '4'
  # And I click on 'DurationMonths'
  # Then I wait until DOM is loaded
  # And I click on contain '7'
  # And I click on 'FollowingContract'
  # And I click on contain 'TERMINO INDEFINIDO'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Contract Determined time Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Contract Determined time Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Contract Determined time Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Contract Determined time Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete Contrato' Attribute Structure with check 'Tiempo determinado'

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Contrato'
  # And I set field 'FilterAttributes' with 'Cypress Contract Determined time Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Contract Determined time Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Contract Determined time Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Convenio' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Convenio'
  # And I click on contain 'Convenio'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Convenio'
  # And I click on contain 'Convenio'
  # And I validate user to be on the 'Agreement' page
  # And I set field 'Description' with 'Cypress Convenio'
  # And I set field 'ExternalCode' with '1111'
  # Then I click on 'Labor Union'
  # And I click on contain 'COMERCIO CABA'
  # And I set field 'Average Salary' with '100000'
  # And I set field 'Hour Divider' with '140'
  # And I set field 'Holidays Date' with '24/04/2023'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Convenio' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Convenio'
  # And I click on contain 'Convenio'
  # And I set field 'FilterAttributes' with 'Cypress Convenio'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Convenio'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Convenio Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '22222'
  # Then I clear field 'Average Salary'
  # And I set field 'Average Salary' with '200000'
  # Then I clear field 'Hour Divider'
  # And I set field 'Hour Divider' with '37'
  # Then I clear field 'Holidays Date'
  # And I set field 'Holidays Date' with '01/01/2023'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Convenio Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Convenio Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Convenio Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Convenio Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I clear field 'FilterAttributes'
  # Then I select option 'Detalle' from ellipsis with value 'Cypress Convenio Modified'
  # Then I click on 'Options'
  # And I click on contain 'Modificar'
  # Then I click button 'BackArrow'
  # Then I click button 'Add'
  # Then I click button 'BackArrow'
  # Then I click button 'BackArrow'

  # Scenario: Delete 'Convenio' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Contrato'
  # And I set field 'FilterAttributes' with 'Cypress Convenio Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Convenio Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Convenio Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  Scenario: Create 'Empresa' Attribute Structure
    Then I visit url 'VismaLatam' 'Create Company URL'
    Then I wait until DOM is loaded
    #Then I click button 'Create'
    # And I load file 'Estructuras' from 'VismaLatam/People'
    # And I set field 'StructureType' with 'Empresa'
    # And I click on contain 'Empresa'
    # Then I click button 'Cancel'
    # Then I wait until DOM is loaded
    # Then I click button 'Create'
    # And I set field 'StructureType' with 'Empresa'
    # And I click on contain 'Empresa'
    And I validate user to be on the 'Company' page
    And I set field 'Company name' with 'Cypress Empresa'
    And I set field 'ExternalCode' with '8888'
    Then I wait for backend request taged as 'structuretypes'
    Then I wait for backend request taged as 'employertypes'
    Then I click on 'Id Employer Type'
    And I click on contain 'Automation X'
    And I set field 'Activity Start Date' with '01/02/2003'
    And I set field 'Activity' with 'Automation'
    Then I click on 'Address Expander'
    Then I click on 'Feedback Action'
    #Then I click on list 'ID Country' then select option 'ARGENTINA'
    And I set field 'ID Country' with 'URUGUAY'
    #Then I click on 'ID Country'
    And I click on contain 'URUGUAY'
    And I set field 'ID Document Type' with 'BPS - BPS'
    And I click on contain 'BPS - BPS'
    And I set field 'Document Identifier' with '20-53564687-4'
    And I click on 'Add Document'
    And I set field 'ID Country 1' with 'CHILE'
    And I click on contain 'CHILE'
    And I set field 'ID Document Type 1' with 'RUT - RUT'
    And I click on contain 'RUT - RUT'
    And I set field 'Document Identifier 1' with '40-53564687-9'
    Then I click on 'Main Document 1'
    Then I click on 'Main Document 1'
    Then I click on 'Main Document'
    Then I click on 'Main Document'
    Then I click on 'Main Document'
    Then I click on 'Addresses expander'
    And I set field 'Country' with 'BRASIL'
    And I click on contain 'BRASIL'
    # # AGREGAR PASO PARA QUE VALIDAR EL MODAL QUE APARECE AL CAMBIAR EL PAIS ***********************
    Then I click on 'Cancelar'
    And I set field 'Country' with 'BRASIL'
    And I click on contain 'BRASIL'
    Then I click button 'Accept'
    # # AGREGAR PASO PARA VALIDAR QUE EL TIPO DE DOMICILIO AHORA ESTA VACIO ***********************
    And I set field 'Address type' with 'Comercial'
    And I click on contain 'Comercial'
    And I set field 'Street type' with 'Aeroporto'
    And I click on contain 'Aeroporto'
    And I set field 'Street' with 'Av. Montevideo'
    And I set field 'Number' with '2004'
    And I set field 'Floor' with '4'
    And I set field 'Department' with 'A'
    And I set field 'Between streets' with 'Mujica y Lacalle Pou'
    And I set field 'Neighborhood' with 'Cavani'
    And I set field 'Zip code' with '1240'
    And I set field 'City' with 'FLORIANO'
    Then I wait until DOM is loaded
    And I click on contain 'FLORIANO'
    # # AGREGAR PASO PARA VALIDAR QUE EL REGISTRO DE PROVINCIA ESTE EN GRIS **************************
    And I click on 'Other address details'
    And I set field 'Tower' with '2'
    Then I click on 'Address Expander'
    Then I click on 'Banks expander'
    #Then I click on 'Feedback Action'
    #Then I click button 'Cancel'
    #Then I wait until DOM is loaded
    Then I click on 'Banks expander'
    Then I click on 'Feedback Action'
    And I set field 'Payment method' with 'CHEQUE'
    And I click on contain 'CHEQUE'
    And I set field 'Bank' with 'Banco de Cordoba(3276)'
    And I click on contain 'Banco de Cordoba(3276)'
    And I set field 'Bank account number' with '186630777'
    And I set field 'CBU number' with '4565646546545678982321'
    And I set field 'Company branch' with 'Norte'
    And I set field 'Code company branch' with '88708'
    And I set field 'Payment type' with 'Sueldo'
    And I click on contain 'Sueldo'
    Then I click button 'Save bank'
    # Then I click on 'Signature expander'
    Then I click on 'Banks expander'
    Then I click on 'Other codes expander'
    Then I click on 'Add Code'
    And I set field 'Code type' with 'Prev'
    And I click on contain 'Prev'
    And I set field 'Valor codigo' with '1064'
    Then I click button 'Save'
    And I validate user to be on the 'Estructura creada' page
    Then I validate message '¡Creado con éxito!' to be visible
    And I click button 'Finish'

  # Scenario: Modify 'Empresa' Attribute Structure
  # Then I visit url 'VismaLatam' 'Structures URL'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Empresa'
  # And I click on contain 'Empresa'
  # And I set field 'FilterAttributes' with 'Cypress Empresa'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Empresa'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Empresa Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '22222'
  # And I set field 'Activity Start Date' with '01/12/2015'
  # Then I clear field 'Activity'
  # And I set field 'Activity' with 'Automation Company'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Empresa Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Empresa Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Empresa Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Empresa Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I clear field 'FilterAttributes'
  # Then I select option 'Detalle' from ellipsis with value 'Cypress Empresa Modified'
  # Then I set field 'Mat select' with '25'
  # And I click on contain '25'
  # Then I set field 'Mat select' with '50'
  # And I click on contain '50'
  # #Then I click on 'Options'
  # #And I click on contain 'Modificar'
  # #Then I click button 'BackArrow'
  # #Then I click button 'Add'
  # #Then I click button 'BackArrow'
  # #Then I click button 'BackArrow'

  Scenario: Delete 'Empresa' Attribute Structure

    Then I visit url 'VismaLatam' 'Structures URL'
    Then I wait until DOM is loaded
    And I load file 'Estructuras' from 'VismaLatam/People'
    Then I wait for backend request taged as 'structuretypes'
    Then I click on 'StructureType'
    Then I wait until DOM is loaded
    And I click on contain 'Empresa'
    And I set field 'FilterAttributes' with 'Cypress Empresa'
    Then I wait until DOM is loaded
    Then I select option 'Eliminar' from ellipsis with value 'Cypress Empresa'
    Then I click button 'Cancel'
    Then I wait until DOM is loaded
    Then I select option 'Eliminar' from ellipsis with value 'Cypress Empresa'
    Then I click button 'Accept'
    Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Forma de liquidación' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Forma de Liquidación'
  # And I click on contain 'Forma de Liquidación'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Forma de Liquidación'
  # And I click on contain 'Forma de Liquidación'
  # And I validate user to be on the 'Settlement-receipt' page
  # And I set field 'Company name' with 'Cypress Forma de liquidacion'
  # And I set field 'ExternalCode' with '8888'
  # Then I set field 'Payment Frequency' with 'Semanal'
  # And I click on contain 'Semanal'
  # Then I 'mark' checkbox in 'System'
  # Then I 'unmark' checkbox in 'System'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Forma de liquidación' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Forma de Liquidación'
  # And I click on contain 'Forma de Liquidación'
  # And I set field 'FilterAttributes' with 'Cypress Forma de liquidacion'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Forma de liquidacion'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Forma de liquidacion Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '1065489'
  # Then I set field 'Payment Frequency' with 'Mensual'
  # And I click on contain 'Mensual'
  # Then I 'mark' checkbox in 'System'
  # Then I 'unmark' checkbox in 'System'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I 'unmark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BANCORE'
  # And I click on contain 'BANCORE'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Forma de liquidacion Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Forma de liquidacion Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Forma de liquidacion Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Forma de liquidacion Modified'
  # Then I validate message 'Modificado correctamente' to be visible


  # Scenario: Delete 'Forma de liquidación' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Forma de Liquidación'
  # And I set field 'FilterAttributes' with 'Cypress Forma de liquidacion Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Forma de liquidacion Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Forma de liquidacion Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Obra Social elegida' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Obra Social elegida'
  # And I click on contain 'Obra Social elegida'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Obra Social elegida'
  # And I click on contain 'Obra Social elegida'
  # And I validate user to be on the 'Health insurance' page
  # And I set field 'Company name' with 'Cypress Obra Social elegida'
  # And I set field 'ExternalCode' with '587810'
  # And I set field 'Employee Contributions' with '3'
  # And I set field 'Employer Contributions' with '7'
  # And I set field 'Additional Rate' with '100'
  # And I set field 'Additional Percentage' with '50'
  # And I set field 'Percentage National Health Insurance' with '25'
  # And I set field 'Commission Percentage' with '10'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Obra Social elegida' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Obra Social elegida'
  # And I click on contain 'Obra Social elegida'
  # And I set field 'FilterAttributes' with 'Obra Social elegida'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Obra Social elegida'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Obra Social elegida Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '123456789'
  # Then I clear field 'Employee Contributions'
  # And I set field 'Employee Contributions' with '4'
  # Then I clear field 'Employer Contributions'
  # And I set field 'Employer Contributions' with '8'
  # Then I clear field 'Additional Rate'
  # And I set field 'Additional Rate' with '80'
  # Then I clear field 'Additional Percentage'
  # And I set field 'Additional Percentage' with '20'
  # Then I clear field 'Percentage National Health Insurance'
  # And I set field 'Percentage National Health Insurance' with '19'
  # Then I clear field 'Commission Percentage'
  # And I set field 'Commission Percentage' with '7'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BANCORE'
  # And I click on contain 'BANCORE'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I set field 'Code type1' with 'COCO'
  # And I click on contain 'COCO'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'CCSS'
  # And I click on contain 'CCSS'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '1'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Obra Social elegida Modified'
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Obra Social elegida Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Obra Social elegida Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Obra Social elegida Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Obra Social elegida Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # Then I select option 'Detalle' from ellipsis with value 'Cypress Obra Social elegida Modified'
  # Then I set field 'Mat select' with '25'
  # And I click on contain '25'
  # Then I set field 'Mat select' with '50'
  # And I click on contain '50'
  # Then I click on 'Options'
  # And I click on contain 'Modificar'
  # Then I click button 'BackArrow'
  # Then I click button 'Add'
  # Then I click button 'BackArrow'
  # Then I click button 'BackArrow'

  # Scenario: Delete 'Obra Social elegida' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Obra Social elegida'
  # And I set field 'FilterAttributes' with 'Cypress Obra Social elegida Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Obra Social elegida Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Obra Social elegida Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Obra Social por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Obra Social por ley'
  # And I click on contain 'Obra Social por ley'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Obra Social por ley'
  # And I click on contain 'Obra Social por ley'
  # And I validate user to be on the 'Health insurance' page
  # And I set field 'Company name' with 'Cypress Obra Social por ley'
  # And I set field 'ExternalCode' with '587810'
  # And I set field 'Employee Contributions' with '3'
  # And I set field 'Employer Contributions' with '7'
  # And I set field 'Additional Rate' with '100'
  # And I set field 'Additional Percentage' with '50'
  # And I set field 'Percentage National Health Insurance' with '25'
  # And I set field 'Commission Percentage' with '10'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Obra Social por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Obra Social por ley'
  # And I click on contain 'Obra Social por ley'
  # And I set field 'FilterAttributes' with 'Obra Social por ley'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Obra Social por ley'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Obra Social por ley Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '123456789'
  # Then I clear field 'Employee Contributions'
  # And I set field 'Employee Contributions' with '4'
  # Then I clear field 'Employer Contributions'
  # And I set field 'Employer Contributions' with '8'
  # Then I clear field 'Additional Rate'
  # And I set field 'Additional Rate' with '80'
  # Then I clear field 'Additional Percentage'
  # And I set field 'Additional Percentage' with '20'
  # Then I clear field 'Percentage National Health Insurance'
  # And I set field 'Percentage National Health Insurance' with '19'
  # Then I clear field 'Commission Percentage'
  # And I set field 'Commission Percentage' with '7'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BANCORE'
  # And I click on contain 'BANCORE'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # Then I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'COCO'
  # And I click on contain 'COCO'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'CCSS'
  # And I click on contain 'CCSS'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '1'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Obra Social por ley Modified'
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Obra Social por ley Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Obra Social por ley Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Obra Social por ley Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Obra Social por ley Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # Then I select option 'Detalle' from ellipsis with value 'Cypress Obra Social por ley Modified'
  # Then I set field 'Mat select' with '25'
  # And I click on contain '25'
  # Then I set field 'Mat select' with '50'
  # And I click on contain '50'
  # Then I click on 'Options'
  # And I click on contain 'Modificar'
  # Then I click button 'BackArrow'
  # Then I click button 'Add'
  # Then I click button 'BackArrow'
  # Then I click button 'BackArrow'

  # Scenario: Delete 'Obra Social por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Obra Social por ley'
  # And I set field 'FilterAttributes' with 'Cypress Obra Social por ley Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Obra Social por ley Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Obra Social por ley Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Plan de OS elegido' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Plan de OS elegido'
  # And I click on contain 'Plan de OS elegido'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Plan de OS elegido'
  # And I click on contain 'Plan de OS elegido'
  # And I validate user to be on the 'Plan health insurance chose' page
  # Then I set field 'Health Insurance' with '000307 - OSPA'
  # And I click on contain '000307 - OSPA'
  # And I set field 'Description' with 'Cypress Plan de OS elegido'
  # And I set field 'ExternalCode' with '587810'
  # Then I 'mark' checkbox in 'Marriage'
  # And I set field 'Number Of Children' with '2'
  # And I set field 'Age From' with '16'
  # And I set field 'Age To' with '80'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Plan de OS elegido' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Plan de OS elegido'
  # And I click on contain 'Plan de OS elegido'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS elegido'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Plan de OS elegido'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Plan de OS elegido Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '66666'
  # Then I 'unmark' checkbox in 'Marriage'
  # Then I clear field 'Number Of Children'
  # And I set field 'Number Of Children' with '4'
  # Then I clear field 'Age From'
  # And I set field 'Age From' with '18'
  # Then I clear field 'Age To'
  # And I set field 'Age To' with '55'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS elegido Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Plan de OS elegido Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS elegido Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Plan de OS elegido Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Plan de OS elegido' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Plan de OS elegido'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Plan de OS Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Plan de OS Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Plan de OS por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Plan de OS por ley'
  # And I click on contain 'Plan de OS por ley'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Plan de OS por ley'
  # And I click on contain 'Plan de OS por ley'
  # And I validate user to be on the 'Plan health insurance law' page
  # Then I set field 'Health Insurance' with '000307 - OSPA'
  # And I click on contain '000307 - OSPA'
  # And I set field 'Description' with 'Cypress Plan de OS por ley'
  # And I set field 'ExternalCode' with '587810'
  # Then I 'mark' checkbox in 'Marriage'
  # And I set field 'Number Of Children' with '2'
  # And I set field 'Age From' with '16'
  # And I set field 'Age To' with '80'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Plan de OS por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Plan de OS por ley'
  # And I click on contain 'Plan de OS por ley'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS por ley'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Plan de OS por ley'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Plan de OS por ley Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '66666'
  # Then I 'unmark' checkbox in 'Marriage'
  # Then I clear field 'Number Of Children'
  # And I set field 'Number Of Children' with '4'
  # Then I clear field 'Age From'
  # And I set field 'Age From' with '18'
  # Then I clear field 'Age To'
  # And I set field 'Age To' with '55'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS por ley Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Plan de OS por ley Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS por ley Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Plan de OS por ley Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Plan de OS por ley' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Plan de OS por ley'
  # And I set field 'FilterAttributes' with 'Cypress Plan de OS por ley Modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Plan de OS por ley Modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Plan de OS por ley Modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # # Scenario: Create 'Puesto' Attribute Structure

  # # And I go to tab 'Atributo de estructura'
  # # Then I wait until DOM is loaded
  # # Then I click button 'Create'
  # # And I load file 'Estructuras' from 'VismaLatam/People'
  # # And I set field 'StructureType' with 'Puesto'
  # # And I click on contain 'Puesto'
  # # Then I click button 'Cancel'
  # # Then I wait until DOM is loaded
  # # Then I click button 'Create'
  # # # And I set field 'StructureType' with 'Puesto'
  # # Then I click on list 'StructureType' after wait for 'structureRequest' then type option 'Puesto'
  # # And I click on contain 'Puesto'
  # # And I validate user to be on the 'Position' page
  # # And I set field 'Description' with 'Cypress Puesto'
  # # And I set field 'Id Position Level' with 'Nivel 1'
  # # And I click on contain 'Nivel 1'
  # # And I set field 'Decision' with 'Toma decisiones'
  # # And I click on contain 'Toma decisiones'
  # # And I set field 'ExternalCode' with '951753'
  # # And I set field 'Minimum Vacancies' with '7'
  # # And I set field 'Maximum Vacancies' with '21'
  # # Then I click on 'Otros codigos'
  # # Then I click on 'Agregar'
  # # And I set field 'Code type' with 'Prev'
  # # And I click on contain 'Prev'
  # # And I set field 'Valor codigo' with '1064'
  # # Then I click button 'Save'
  # # And I validate user to be on the 'Estructura creada' page
  # # Then I validate message '¡Creado con éxito!' to be visible
  # # And I click button 'Finish'

  # # Scenario: Delete 'Puesto' Attribute Structure

  # # And I go to tab 'Atributo de estructura'
  # # Then I wait until DOM is loaded
  # # And I load file 'Estructuras' from 'VismaLatam/People'
  # # Then I click on 'StructureType'
  # # Then I wait until DOM is loaded
  # # And I click on contain 'Position'
  # # And I set field 'FilterAttributes' with 'Cypress Position Modified'
  # # Then I wait until DOM is loaded
  # # Then I select option 'Eliminar' from ellipsis with value 'Cypress Position Modified'
  # # Then I click button 'Cancel'
  # # Then I wait until DOM is loaded
  # # Then I select option 'Eliminar' from ellipsis with value 'Cypress Position Modified'
  # # Then I click button 'Accept'
  # # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Regimen horario - Horas semanales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # And I validate user to be on the 'Hourly regime' page
  # And I set field 'Description' with 'Cypress Regimen horario - Horas semanales'
  # And I set field 'ExternalCode' with '9965'
  # Then I click on 'Working Day'
  # Then I click on 'Hours Per Month'
  # Then I click on 'Working Day'
  # Then I click toggle 'Sunday'
  # Then I click toggle 'Monday'
  # Then I click toggle 'Tuesday'
  # Then I click toggle 'Wednesday'
  # Then I click toggle 'Thursday'
  # Then I click toggle 'Friday'
  # Then I click toggle 'Saturday'
  # Then I click toggle 'Sunday'
  # Then I click toggle 'Monday'
  # Then I click toggle 'Tuesday'
  # Then I click toggle 'Wednesday'
  # Then I click toggle 'Thursday'
  # Then I click toggle 'Friday'
  # Then I click toggle 'Saturday'
  # Then I click toggle 'Sunday'
  # Then I click toggle 'Monday'
  # Then I click toggle 'Tuesday'
  # Then I click toggle 'Wednesday'
  # Then I click toggle 'Thursday'
  # Then I click toggle 'Friday'
  # Then I click toggle 'Saturday'
  # And I set field 'Hours worked' with '1'
  # And I set field 'Hours worked 1' with '7'
  # And I set field 'Hours worked 2' with '6'
  # And I set field 'Hours worked 3' with '5'
  # And I set field 'Hours worked 4' with '4'
  # And I set field 'Hours worked 5' with '3'
  # And I set field 'Hours worked 6' with '2'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'ORG'
  # And I click on contain 'ORG'
  # And I set field 'Valor codigo' with '123'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Regimen horario - Horas semanales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas semanales'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Regimen horario - Horas semanales'
  # Then I wait until DOM is loaded
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Regimen horario - Horas semanales modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '66666'
  # Then I click toggle 'Sunday'
  # Then I click toggle 'Saturday'
  # Then I clear field 'Hours worked 1'
  # And I set field 'Hours worked 1' with '9'
  # Then I clear field 'Hours worked 2'
  # And I set field 'Hours worked 2' with '7'
  # Then I clear field 'Hours worked 3'
  # And I set field 'Hours worked 3' with '8'
  # Then I clear field 'Hours worked 4'
  # And I set field 'Hours worked 4' with '11'
  # Then I clear field 'Hours worked 5'
  # And I set field 'Hours worked 5' with '1'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BFR'
  # And I click on contain 'BFR'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '66'
  # Then I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '6664'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas semanales modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Regimen horario - Horas semanales modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas semanales modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Regimen horario - Horas semanales modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Regimen horario - Horas semanales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Regimen horario'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas semanales modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Regimen horario - Horas semanales modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Regimen horario - Horas semanales modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Create 'Regimen horario - Horas mensuales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # And I validate user to be on the 'Hourly regime' page
  # And I set field 'Description' with 'Cypress Regimen horario - Horas mensuales'
  # And I set field 'ExternalCode' with '9965'
  # Then I click on 'Hours Per Month'
  # And I set field 'Monthly hours' with '142'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'ORG'
  # And I click on contain 'ORG'
  # And I set field 'Valor codigo' with '123'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # And I click button 'Finish'

  # Scenario: Modify 'Regimen horario - Horas mensuales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Regimen horario'
  # And I click on contain 'Regimen horario'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas mensuales'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Regimen horario - Horas mensuales'
  # Then I wait until DOM is loaded
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Regimen horario - Horas mensuales modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '66666'
  # Then I clear field 'Monthly hours'
  # And I set field 'Monthly hours' with '132'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BFR'
  # And I click on contain 'BFR'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '66'
  # Then I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BNL'
  # And I click on contain 'BNL'
  # Then I clear field 'Valor codigo1'
  # And I set field 'Valor codigo1' with '6664'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas mensuales modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Regimen horario - Horas mensuales modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas mensuales modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Regimen horario - Horas mensuales modified'
  # Then I validate message 'Modificado correctamente' to be visible

  # Scenario: Delete 'Regimen horario - Horas mensuales' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Regimen horario'
  # And I set field 'FilterAttributes' with 'Cypress Regimen horario - Horas mensuales modified'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Regimen horario - Horas mensuales modified'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Regimen horario - Horas mensuales modified'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  #  Scenario: Create 'Sindicato' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Sindicato'
  # And I click on contain 'Sindicato'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I click button 'Create'
  # And I set field 'StructureType' with 'Sindicato'
  # And I click on contain 'Sindicato'
  # And I validate user to be on the 'Labor union' page
  # And I set field 'Description' with 'Cypress Sindicato'
  # And I set field 'ExternalCode' with '1403199'
  # And I set field 'Employee Contribution' with '4'
  # And I set field 'Employer Contribution' with '4'
  # And I set field 'Employee Additional Contribution' with '2'
  # And I set field 'Top Union' with '7'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # # Then I click on 'Add Agreement'
  # # Then I click on 'Options'
  # # And I click on contain 'Modificar'
  # # Then I click button 'BackArrow'
  # # Then I click button 'Add'
  # # Then I click button 'BackArrow'
  # # Then I click button 'BackArrow'

  # Scenario: Modify 'Sindicato' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Sindicato'
  # And I click on contain 'Sindicato'
  # And I set field 'FilterAttributes' with 'Cypress Sindicato'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Sindicato'
  # Then I wait until DOM is loaded
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Sindicato Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '95175366'
  # Then I clear field 'Employee Contribution'
  # And I set field 'Employee Contribution' with '5'
  # Then I clear field 'Employer Contribution'
  # And I set field 'Employer Contribution' with '5'
  # Then I clear field 'Employee Additional Contribution'
  # And I set field 'Employee Additional Contribution' with '3'
  # Then I clear field 'Top Union'
  # And I set field 'Top Union' with '8'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # Then I click on 'Otros codigos'
  # Then I click on 'ClearCode'
  # And I set field 'Code type' with 'BAC'
  # And I click on contain 'BAC'
  # Then I clear field 'Valor codigo'
  # And I set field 'Valor codigo' with '77'
  # And I click on 'Agregar codigo'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # Then I click on 'ClearCode1'
  # And I set field 'Code type1' with 'BOSTON'
  # And I click on contain 'BOSTON'
  # And I set field 'Valor codigo1' with '123456'
  # And I click on 'Agregar codigo1'
  # And I click on 'Eliminar codigo2'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I set field 'FilterAttributes' with 'Cypress Convenio Modified'
  # Then I select option 'Detalle' from ellipsis with value 'Cypress Convenio Modified'
  # Then I click button 'Add'
  # And I set field 'Description' with 'Cypress Convenio Sindicato'
  # And I set field 'ExternalCode' with '1111'
  # Then I click on 'Labor Union'
  # And I click on contain 'COMERCIO CABA'
  # And I set field 'Average Salary' with '100000'
  # And I set field 'Hour Divider' with '140'
  # And I set field 'Holidays Date' with '24/04/2023'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'Prev'
  # And I click on contain 'Prev'
  # And I set field 'Valor codigo' with '1064'
  # Then I click button 'Save'
  # And I validate user to be on the 'Estructura creada' page
  # Then I validate message '¡Creado con éxito!' to be visible
  # Then I click on 'Options'
  # And I click on contain 'Modificar'
  # Then I click button 'Cancel'
  # Then I click on 'Options'
  # And I click on contain 'Modificar'
  # Then I click button 'Accept'Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  # Scenario: Delete 'Sindicato' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # Then I click on 'StructureType'
  # Then I wait until DOM is loaded
  # And I click on contain 'Sindicato'
  # And I set field 'FilterAttributes' with 'Cypress Sindicato Modified 2'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Sindicato Modified 2'
  # Then I click button 'Cancel'
  # Then I wait until DOM is loaded
  # Then I select option 'Eliminar' from ellipsis with value 'Cypress Sindicato Modified 2'
  # Then I click button 'Accept'
  # Then I validate message 'Eliminado correctamente' to be visible

  Scenario: Create 'Sucursal' Attribute Structure

    Then I visit url 'VismaLatam' 'Create Branch URL'
    Then I wait until DOM is loaded
    And I load file 'Estructuras' from 'VismaLatam/People'
    And I validate user to be on the 'Branch' page
    And I set field 'Description' with 'Cypress Sucursal'
    And I set field 'ExternalCode' with '1403199'
    And I set field 'Social Load Reduction Percentage' with '4'
    And I set field 'Activity Start Date' with '01/08/2015'
    Then I click on 'Address Panel'
    Then I click on 'Add Address'
    And I set field 'Address type' with 'Legal'
    And I click on contain 'Legal'
    And I set field 'Country' with 'Uruguay'
    And I click on contain 'URUGUAY'
    # # AGREGAR PASO PARA QUE VALIDAR EL MODAL QUE APARECE AL CAMBIAR EL PAIS ***********************
    Then I click on 'Cancelar'
    And I set field 'Country' with 'Uruguay'
    And I click on contain 'URUGUAY'
    Then I click button 'Accept'
    # # AGREGAR PASO PARA VALIDAR QUE EL TIPO DE DOMICILIO AHORA ESTA VACIO ***********************
    And I set field 'Address type' with 'Comercial'
    And I click on contain 'Comercial'
    And I set field 'Street' with 'Av. Montevideo'
    And I set field 'Number' with '2004'
    And I set field 'Floor' with '4'
    And I set field 'Department' with 'A'
    And I set field 'Between streets' with 'Mujica y Lacalle Pou'
    And I set field 'Neighborhood' with 'Cavani'
    And I set field 'Zip code' with '1240'
    And I set field 'City' with 'Montevideo'
    Then I wait until DOM is loaded
    And I click on contain 'MONTEVIDEO'
    # # AGREGAR PASO PARA VALIDAR QUE EL REGISTRO DE PROVINCIA ESTE EN GRIS **************************
    And I click on 'Other address details'
    And I set field 'Sector' with 'Norte'
    And I set field 'Tower' with '2'
    And I set field 'Main block' with '4'
    And I set field 'Complement 1' with 'Complemento 1'
    And I set field 'Complement 2' with 'Complemento 2'
    Then I click on 'Otros codigos'
    Then I click on 'Add Code'
    And I set field 'Code type' with 'BH'
    Then I clear field 'Valor codigo'
    And I set field 'Code type' with 'BH'
    And I set field 'Valor codigo' with '123'
    Then I clear field 'Valor codigo'
    And I set field 'Valor codigo' with '123'
    And I click on 'Eliminar codigo'
    And I click on 'Add Code'
    And I click on 'Eliminar codigo'
    Then I click button 'Save'
    And I validate user to be on the 'Estructura creada' page
    Then I validate message '¡Creado con éxito!' to be visible
    And I click button 'Finish'

  # Scenario: Modify: Create 'Sucursal' Attribute Structure

  # And I go to tab 'Atributo de estructura'
  # Then I wait until DOM is loaded
  # And I load file 'Estructuras' from 'VismaLatam/People'
  # And I set field 'StructureType' with 'Sucursal'
  # And I click on contain 'Sucursal'
  # And I set field 'FilterAttributes' with 'Cypress Sucursal'
  # Then I select option 'Modificar' from ellipsis with value 'Cypress Sucursal'
  # Then I clear field 'Description'
  # And I set field 'Description' with 'Cypress Sucursal Modified'
  # Then I clear field 'ExternalCode'
  # And I set field 'ExternalCode' with '888'
  # Then I clear field 'Social Load Reduction Percentage'
  # And I set field 'Social Load Reduction Percentage' with '15'
  # Then I clear field 'Activity Start Date'
  # And I set field 'Activity Start Date' with '01/08/2015'
  # Then I 'unmark' checkbox in 'Active'
  # Then I 'mark' checkbox in 'Active'
  # And I set field 'Country' with 'CHILE'
  # And I click on contain 'CHILE'
  # #AGREGAR PASO PARA QUE VALIDAR EL MODAL QUE APARECE AL CAMBIAR EL PAIS ***********************
  # Then I click on 'Cancelar'
  # And I set field 'Country' with 'CHILE'
  # And I click on contain 'CHILE'
  # Then I click button 'Accept'
  # #AGREGAR PASO PARA VALIDAR QUE EL TIPO DE DOMICILIO AHORA ESTA VACIO ***********************
  # And I set field 'Address type' with 'Legal'
  # And I click on contain 'Legal'
  # And I set field 'Street' with 'Av. del Libertador'
  # And I set field 'Number' with '1879'
  # And I set field 'Floor' with '8'
  # And I set field 'Department' with 'G'
  # And I set field 'Between streets' with 'Alberdi y Pueyrredon'
  # And I set field 'Neighborhood' with 'Santa Barbara'
  # And I set field 'Zip code' with '2240'
  # And I set field 'City' with 'SANTIAGO'
  # Then I wait until DOM is loaded
  # And I click on contain 'SANTIAGO (UNICO)'
  # And I click on list 'Zone' after wait for 'zoneRequest' then type option 'Región Metropolitana'
  # And I click on 'Other address details'
  # And I set field 'Sector' with 'Sur'
  # And I set field 'Tower' with '1'
  # And I set field 'Main block' with '2'
  # And I set field 'Section' with 'F'
  # Then I click on 'Otros codigos'
  # Then I click on 'Agregar'
  # And I set field 'Code type' with 'BH'
  # And I click on contain 'BH'
  # And I set field 'Valor codigo' with '999'
  # Then I click button 'Save'
  # Then I validate message 'Modificado correctamente' to be visible
  # And I set field 'FilterAttributes' with 'Cypress Sucursal Modified'
  # Then I select option 'Inactivar' from ellipsis with value 'Cypress Sucursal Modified'
  # Then I validate message 'Modificado correctamente' to be visible
  # Then I wait until DOM is loaded
  # Then I clear field 'FilterAttributes'
  # And I set field 'FilterAttributes' with 'Cypress Sucursal Modified'
  # Then I select option 'Activar' from ellipsis with value 'Cypress Sucursal Modified'
  # Then I validate message 'Modificado correctamente' to be visible

  Scenario: Delete 'Sucursal' Attribute Structure

    # And I go to tab 'Atributo de estructura'
    # Then I wait until DOM is loaded
    # And I load file 'Estructuras' from 'VismaLatam/People'
    # Then I click on 'StructureType'
    # Then I wait until DOM is loaded
    # And I click on contain 'Sucursal'
    # And I set field 'FilterAttributes' with 'Cypress Sucursal Modified'
    # Then I wait until DOM is loaded
    # Then I select option 'Eliminar' from ellipsis with value 'Cypress Sucursal Modified'
    # Then I click button 'Cancel'
    # Then I wait until DOM is loaded
    # Then I select option 'Eliminar' from ellipsis with value 'Cypress Sucursal Modified'
    # Then I click button 'Accept'
    # Then I validate message 'Eliminado correctamente' to be visible
    Then I visit url 'VismaLatam' 'Structures URL'
    Then I wait until DOM is loaded
    And I load file 'Estructuras' from 'VismaLatam/People'
    Then I wait for backend request taged as 'structuretypes'
    Then I click on 'StructureType'
    Then I wait until DOM is loaded
    And I click on contain 'Sucursal'
    And I set field 'FilterAttributes' with 'Cypress Sucursal'
    Then I wait until DOM is loaded
    Then I select option 'Eliminar' from ellipsis with value 'Cypress Sucursal'
    Then I click button 'Cancel'
    Then I wait until DOM is loaded
    Then I select option 'Eliminar' from ellipsis with value 'Cypress Sucursal'
    Then I click button 'Accept'
    Then I validate message 'Eliminado correctamente' to be visible

# Scenario: Create 'Tipo de Jornada' Attribute Structure

# And I go to tab 'Atributo de estructura'
# Then I wait until DOM is loaded
# Then I click button 'Create'
# And I load file 'Estructuras' from 'VismaLatam/People'
# And I set field 'StructureType' with 'Tipo de Jornada'
# And I click on contain 'Tipo de Jornada'
# Then I click button 'Cancel'
# Then I wait until DOM is loaded
# Then I click button 'Create'
# And I set field 'StructureType' with 'Tipo de Jornada'
# And I click on contain 'Tipo de Jornada'
# And I validate user to be on the 'Type workday' page
# And I set field 'Description' with 'Cypress Tipo de Jornada'
# And I set field 'ExternalCode' with '14081995'
# And I set field 'Resolution number' with '14031993'
# And I set field 'Resolution date' with '31/08/2016'
# And I set field 'Duration journal' with '137'
# Then I click on 'Otros codigos'
# Then I click on 'Agregar'
# And I set field 'Code type' with 'ORG'
# And I click on contain 'ORG'
# And I set field 'Valor codigo' with '123'
# Then I click button 'Save'
# And I validate user to be on the 'Estructura creada' page
# Then I validate message '¡Creado con éxito!' to be visible
# And I click button 'Finish'

# Scenario: Modify 'Tipo de Jornada' Attribute Structure

# And I go to tab 'Atributo de estructura'
# Then I wait until DOM is loaded
# And I load file 'Estructuras' from 'VismaLatam/People'
# And I set field 'StructureType' with 'Tipo de Jornada'
# And I click on contain 'Tipo de Jornada'
# And I set field 'FilterAttributes' with 'Cypress Tipo de Jornada'
# Then I select option 'Modificar' from ellipsis with value 'Cypress Tipo de Jornada'
# Then I click toggle 'Structure Active'
# Then I clear field 'Description'
# And I set field 'Description' with 'Cypress Tipo de Jornada Modified'
# Then I clear field 'ExternalCode'
# And I set field 'ExternalCode' with '13087'
# Then I clear field 'Resolution number'
# And I set field 'Resolution number' with '24081958'
# Then I clear field 'Resolution date'
# And I set field 'Resolution date' with '02/11/2018'
# Then I clear field 'Duration journal'
# And I set field 'Duration journal' with '145'
# Then I click on 'Otros codigos'
# Then I click on 'ClearCode'
# And I set field 'Code type' with 'BFR'
# And I click on contain 'BFR'
# Then I clear field 'Valor codigo'
# And I set field 'Valor codigo' with '66'
# Then I click on 'Agregar codigo'
# And I set field 'Code type1' with 'BNL'
# And I click on contain 'BNL'
# Then I click on 'ClearCode1'
# And I set field 'Code type1' with 'BNL'
# And I click on contain 'BNL'
# Then I clear field 'Valor codigo1'
# And I set field 'Valor codigo1' with '6664'
# And I click on 'Agregar codigo1'
# And I click on 'Eliminar codigo2'
# Then I click button 'Save'
# Then I validate message 'Modificado correctamente' to be visible
# Then I wait until DOM is loaded
# Then I select option 'Activar' from ellipsis with value 'Cypress Tipo de Jornada Modified'
# Then I validate message 'Modificado correctamente' to be visible
# Then I wait until DOM is loaded

# Scenario: Delete 'Tipo de jornada' Attribute Structure

# And I go to tab 'Atributo de estructura'
# Then I wait until DOM is loaded
# And I load file 'Estructuras' from 'VismaLatam/People'
# Then I click on 'StructureType'
# Then I wait until DOM is loaded
# And I click on contain 'Tipo de Jornada'
# And I set field 'FilterAttributes' with 'Cypress Tipo de Jornada Modified'
# Then I wait until DOM is loaded
# Then I select option 'Eliminar' from ellipsis with value 'Cypress Tipo de Jornada Modified'
# Then I click button 'Cancel'
# Then I wait until DOM is loaded
# Then I select option 'Eliminar' from ellipsis with value 'Cypress Tipo de Jornada Modified'
# Then I click button 'Accept'
# Then I validate message 'Eliminado correctamente' to be visible