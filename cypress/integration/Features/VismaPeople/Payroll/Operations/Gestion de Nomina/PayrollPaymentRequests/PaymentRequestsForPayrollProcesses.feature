@vlpeople-nightly
Feature: Payroll -> Pedidos de pago -> Procesos de nómina

    As a user I want:
      -Navigate trough different windows

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
        And I go to card 'Payroll PaymentRequest'

    Scenario: Navigation 
        And I load file 'Breadcrumb' from 'Commons'
        And I validate user to be on the 'PayrollPaymentRequest' page
        Then I click button 'Previouspage'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        Then I wait until DOM is loaded
        And I go to card 'Payroll PaymentRequest'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page 
        Then I click breadcrumb 'Payroll'
        And I validate user to be on the 'Payroll' page       
        Then I wait until DOM is loaded
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Payroll PaymentRequest'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        Then I click breadcrumb 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Payroll PaymentRequest'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        And I go to card 'PayrollProcessesCard1'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest-Processes' page
        Then I click breadcrumb 'PayrollPaymentRequests'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        And I go to card 'PayrollProcessesCard1'
        Then I click breadcrumb 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Payroll PaymentRequest'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        And I go to card 'PayrollProcessesCard1'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest-Processes' page
        Then I click breadcrumb 'PayrollPaymentRequests'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        And I go to card 'PayrollProcessesCard1'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest-Processes' page
        Then I click breadcrumb 'Payroll'
        And I validate user to be on the 'Payroll' page       
        Then I wait until DOM is loaded
        And I go to card 'Operations'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Operations' page
        And I go to card 'Payroll PaymentRequest'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest' page
        And I go to card 'PayrollProcessesCard1'
        Then I wait until DOM is loaded
        And I validate user to be on the 'PayrollPaymentRequest-Processes' page
        Then I click button 'Add Buton'
        And I validate user to be on the 'PayrollPaymentRequest-Processes Create' page
        Then I click button 'Return'