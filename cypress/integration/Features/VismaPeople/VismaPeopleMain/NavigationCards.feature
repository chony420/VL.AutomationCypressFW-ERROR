Feature: VismaPeople Cards

   As a user I want to:
   -Navigate between differents Cards from PEOPLE using breadcrumbs
   -Navigate between differents Cards from PAYROLL using breadcrumbs

   Background:
      Given I login on 'VismaLatam' as 'superadmin'
      Then I validate user to be on the 'Login' page
      And I load file 'Login' from 'Commons/Login'
      And I set field 'Database' with 'Cypress Argentina'
      And I click on contain 'Cypress Argentina'
      Then I click on 'ChooseBtn'
      And I validate user to be on the 'Home' page
      Then I wait until DOM is loaded



   Scenario: Navigation between cards from PEOPLE trough PEOPLE breadcrum
      And I go to module 'PEOPLE'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      Then I wait until DOM is loaded
      And I go to card 'Colaborador'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Employees' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'Vacaciones'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Vacaciones' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'OccupationalHealth'
      Then I wait until DOM is loaded
      And I validate user to be on the 'OccupationalHealth' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'Absences'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Absences' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'Organizacion'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Organizacion' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'Reports'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Reports' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'Basic Configuration'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Basic Configuration' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'OperacionesMasivas'
      Then I wait until DOM is loaded
      And I validate user to be on the 'OperacionesMasivas' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page
      And I go to card 'ProcesosGenerados'
      Then I wait until DOM is loaded
      And I validate user to be on the 'ProcesosGenerados' page
      Then I click breadcrumb 'People'
      Then I wait until DOM is loaded
      And I validate user to be on the 'People' page

   Scenario: Navigation between cards from PAYROLL trough PAYROLL breadcrum
      And I go to module 'PAYROLL'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
      Then I wait until DOM is loaded
      And I go to card 'Operations'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Operations' page
      Then I click breadcrumb 'Payroll'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
      And I go to card 'PayrollConfiguration'
      Then I wait until DOM is loaded
      And I validate user to be on the 'PayrollConfiguration' page
      Then I click breadcrumb 'Payroll'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
      # // CONTABILIDAD doesn't have content yet
      # And I go to card 'Contabilidad'
      # Then I wait until DOM is loaded
      # And I validate user to be on the 'Contabilidad' page
      # Then I click breadcrumb 'Payroll'
      # Then I wait until DOM is loaded
      # And I validate user to be on the 'Payroll' page
      And I go to card 'Payroll BasicConfiguration'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll BasicConfiguration' page
      Then I click breadcrumb 'Payroll'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
      And I go to card 'MOPRE'
      Then I wait until DOM is loaded
      And I validate user to be on the 'MOPRE' page
      Then I click button 'BackArrow'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
      And I go to card 'ReportesPayroll'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Reportes Payroll' page
      Then I click breadcrumb 'Payroll'
      Then I wait until DOM is loaded
      And I validate user to be on the 'Payroll' page
#MONITOR DE PROCESOS redirects to PEOPLE and not PAYROLL ***************
# And I go to card 'MonitordeProcesos'
# Then I wait until DOM is loaded
# And I validate user to be on the 'MonitordeProcesos' page
# And I change module 'PEOPLE'
# Then I click breadcrumb 'People'
# Then I wait until DOM is loaded
# And I validate user to be on the 'People' page

