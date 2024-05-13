@vlpeople-nightly
Feature: People -> Occupational Health

    As a user I want to:
    - Navigate through different modules from Occupational Health
    - Create a new Medical Control of control type Home and control Action Absence for an employee

    Background:
        When I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page
        Then I wait until DOM is loaded
        When I go to module 'PEOPLE'
        And I go to card 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page
        Then I wait until DOM is loaded
        And I go to card 'MedicalControls'
        Then I load file 'MedicalControl' from 'VismaLatam/People'
        Given I wait request 'Medical-Controls URL' and save with alias 'medicalControlsRequest'
        Given I wait request 'Medical Control Filenumber URL' and save with alias 'medicalControlFilenumber'
        Given I wait request 'Medical Control Type URL' and save with alias 'controlTypeRequest'
        Given I wait request 'Medical Control Action URL' and save with alias 'controlActionRequest'
        Given I wait request 'Medical Service URL' and save with alias 'medicalServiceRequest'
        Given I wait request 'Medical Doctor URL' and save with alias 'doctorRequest'
        Given I wait request 'Medical Absence URL' and save with alias 'absenceRequest'
        Given I wait request 'Person URL' and save with alias 'physicalPersonRequest'
        Given I wait request 'Search Person URL' and save with alias 'searchPhysicalPersonRequest'

    @Smoke
    Scenario: Navegation
        Then I wait until DOM is loaded
        And I validate user to be on the 'MedicalControls Grid' page
        Then I click button 'Create'
        And I validate user to be on the 'MedicalControl' page
        Then I wait until DOM is loaded
        Then I click button 'Create Medical Control'
        And I validate user to be on the 'MedicalControl Create' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        And I validate user to be on the 'MedicalControls Grid' page
        Then I wait until DOM is loaded
        Then I click button 'Create'
        And I validate user to be on the 'MedicalControl' page
        Then I click button 'Create Medical Control From Absence'
        And I validate user to be on the 'MedicalControl CreateFromAbsence' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        And I validate user to be on the 'MedicalControls Grid' page
        And I load file 'Breadcrumb' from 'Commons'
        Then I click breadcrumb 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page
        And I go to card 'ClinicalRecords'
        And I validate user to be on the 'ClinicalRecords' page
        Then I click breadcrumb 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page
        And I go to card 'Doctors'
        And I validate user to be on the 'Doctors' page
        Then I click button 'Create'
        And I validate user to be on the 'Doctors Create' page
        Then I click button 'BackArrow'
        And I validate user to be on the 'Doctors' page
        Then I click breadcrumb 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page
        And I go to card 'MedicalServices'
        And I validate user to be on the 'MedicalServices' page
        Then I click button 'Create'
        And I validate user to be on the 'MedicalServices Create' page
        Then I click button 'BackArrow'
        And I validate user to be on the 'MedicalServices' page
        Then I click breadcrumb 'OccupationalHealth'
        And I validate user to be on the 'OccupationalHealth' page

    Scenario: Create Medical Control - Absence Type - Home
        Then I wait for backend request taged as 'medicalControlsRequest'
        And I validate user to be on the 'MedicalControls Grid' page
        Then I click button 'Create'
        And I validate user to be on the 'MedicalControl' page
        Then I wait until DOM is loaded
        Then I click button 'Create Medical Control'
        And I validate user to be on the 'MedicalControl Create' page
        Then I wait until DOM is loaded
        And  I set field 'Employee Search' with 'Cypress (No Borrar)'
        Then I wait for backend request taged as 'searchPhysicalPersonRequest'
        Then I click on contain 'Cypress (No Borrar)'
        Then I wait for backend request taged as 'physicalPersonRequest'
        Then I wait until DOM is loaded
        And  I set field 'Date' with '13/12/2022'
        Then I wait until DOM is loaded
        And I click on list 'Control Type' after wait for 'controlTypeRequest' then type option 'Domicilio'
        Then I wait until DOM is loaded
        And I click on list 'Control Action' after wait for 'controlActionRequest' then type option 'Ausencia'
        Then I wait until DOM is loaded
        And I click on list 'Medical Service' after wait for 'medicalServiceRequest' then type option 'Visma'
        Then I wait until DOM is loaded
        And I click on list 'Doctor' after wait for 'doctorRequest' then type option 'Perez, Enzo'
        Then I wait until DOM is loaded
        And  I set field 'Date From' with '13/12/2022'
        Then I wait until DOM is loaded
        And  I set field 'Rest Days' with '3'
        Then I wait until DOM is loaded
        # And I click on list 'Absence Type' after wait for 'absenceRequest' then type option 'Licencia Enfermedad'
        And I set field 'Absence Type' with 'Licencia Enfermedad'
        And I click on contain 'Licencia Enfermedad'
        Then I wait until DOM is loaded
        Then I click button 'Add Pathology'
        Then I wait until DOM is loaded
        And I set field 'Pathology Search' with 'Gripe'
        Then I wait until DOM is loaded
        Then I wait until 'pathology' request 'Pathology URL' status is OK
        Then I wait until DOM is loaded
        Then I click on 'Pathology Option'
        Then I wait until DOM is loaded
        Then I validate 'Pathology Description' its value contain 'GRIPE -  - Sin agrupamiento'
        Then I wait until DOM is loaded
        Then I wait until DOM is loaded
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

    Scenario: Modify Date & Doctor of Medical Control - Absence Type - Home
        Then I wait until DOM is loaded
        Then I wait for backend request taged as 'medicalControlsRequest'
        Then I set filter field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait for backend request taged as 'medicalControlFilenumber'
        Then I select option 'Modificar' from ellipsis with value '13/12/2022 - 15/12/2022'
        Then I wait until DOM is loaded
        #Then I validate 'Date' its value contain '13/12/2022'
        Then I wait for backend request taged as 'physicalPersonRequest'
        Then I clean field 'Date'
        Then I wait until DOM is loaded
        And  I set field 'Date' with '14/12/2022'
        Then I wait until DOM is loaded
        Then I scroll into view 'Private Doctor'
        Then I wait until DOM is loaded
        Then I click on 'Private Doctor'
        Then I wait until DOM is loaded
        Then I set filter field 'Private Doctor Name' with 'Medico Automation'
        Then I wait until DOM is loaded
        Then I set filter field 'Enrollment Doctor' with '1234'
        Then I wait until DOM is loaded
        Then I click button 'Save'
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Tracking Medical Control - Absence Type - Home
        Then I wait until DOM is loaded
        Then I wait for backend request taged as 'medicalControlsRequest'
        Then I set filter field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait for backend request taged as 'medicalControlFilenumber'
        Then I wait until DOM is loaded
        Then I wait for '5' seconds
        Then I select option 'Seguimiento' from ellipsis with value '13/12/2022 - 15/12/2022'
        Then I wait until DOM is loaded
        Then I click button 'AddTracking'
        Then I wait until DOM is loaded
        And I validate user to be on the 'MedicalControlDetail' page
        #Then I validate 'Date' its value contain '16/12/2022'
        Then I clean field 'Tracking Type'
        Then I wait until DOM is loaded
        And  I set field 'Tracking Type' with 'Extensión de la Ausencia'
        Then I wait until DOM is loaded
        And I click on 'Absence Extension'
        Then I wait until DOM is loaded
        Then I wait until spinner 'Spinner' not exist
        And I click on list 'Control Type' after wait for 'controlTypeRequest' then type option 'Consultorio'
        And I click on list 'Doctor' after wait for 'doctorRequest' then type option 'Perez, Enzo'
        And I click on list 'Medical Service' after wait for 'medicalServiceRequest' then type option 'Visma'
        Then I wait until DOM is loaded
        And  I set field 'Date From' with '16/12/2022'
        Then I wait until DOM is loaded
        And  I set field 'Rest Days' with '3'
        Then I wait until DOM is loaded
        And I set field 'Absence Type' with 'Licencia Enfermedad'
        And I click on contain 'Licencia Enfermedad'
        Then I click button 'Save'
        Then I wait until DOM is loaded
        Then I validate image 'Create Image' with text 'Create Text' is visible
        And I click button 'Finish'

    Scenario: Delete Medical Control - Absence Type - Home
        Then I wait for backend request taged as 'medicalControlsRequest'
        And I validate user to be on the 'MedicalControls Grid' page
        Then I wait until DOM is loaded
        Then I set filter field 'FileNumber' with '39795'
        Then I wait until DOM is loaded
        Then I click button 'Apply Filter'
        Then I wait for backend request taged as 'medicalControlFilenumber'
        Then I wait until DOM is loaded
        Then I wait until spinner 'Loading Absences Grid' not exist
        Then I select option 'Eliminar' from ellipsis with value '13/12/2022 - 15/12/2022'
        Then I click Modal button 'Accept'
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'