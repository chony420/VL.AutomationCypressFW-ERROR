@vlpeople-nightly
Feature: People -> Vacaciones -> Acciones Masivas

    As a user I want to:
    - Navigate for the differents menues option and links
    - Check the different field Validations

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
        And I go to card 'Vacaciones'
        Then I wait until DOM is loaded
        And I go to card 'AccionesMasivas'
        And I load file 'AccionesMasivas' from 'VismaLatam/People'

        
    @Smoke
    Scenario: Navigation
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Vacaciones' page
        And I go to card 'AccionesMasivas'
        Then I wait until DOM is loaded
        Then I click on 'MassiveActionType'
        Then I set field 'MassiveActionType' with 'Pago y descuento'
        And I click on contain 'Pago y descuento'
        And I validate user to be on the 'AccionesMasivas PagosYDescuentos' page
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'Vacaciones' page
        And I go to card 'AccionesMasivas'
        And I load file 'AccionesMasivas' from 'VismaLatam/People'
        Then I click on 'MassiveActionType'
        Then I set field 'MassiveActionType' with 'Solicitud de vacaciones'
        And I click on contain 'Solicitud de vacaciones'
        And I validate user to be on the 'AccionesMasivas SolicitudDeVacaciones' page


    @Smoke
    Scenario: Validation Payment and Discount
        Then I click on 'MassiveActionType'
        Then I set field 'MassiveActionType' with 'Pago y descuento'
        And I click on contain 'Pago y descuento'
        Then I click on 'SelectVacationModel'
        Then I click on empty space
        Then I validate hover 'VacationModel Validation' with 'Campo obligatorio' is visible
        Then I set field 'SelectVacationModel' with 'Modelo Cypress (No Borrar)'
        And I click on contain 'Modelo Cypress (No Borrar)'
        Then I click on 'SelectPaymentOrigin'
        Then I click on empty space
        Then I validate hover 'OriginModel Validation' with 'Campo obligatorio' is visible
        Then I set field 'SelectPaymentOrigin' with 'Vacaciones solicitadas'
        And I click on contain 'Vacaciones solicitadas'
        Then I click on 'PayrollPeriod'
        Then I click on empty space
        Then I validate hover 'PayrollPeriod Validation' with 'Campo obligatorio' is visible
        Then I set field 'PayrollPeriod' with 'Enero 2031'
        And I click on contain 'Enero 2031'
        Then I click on 'RangeDaysTo'
        Then I click on empty space
        Then I validate hover 'DateTo Validation' with 'Campo obligatorio' is visible
        Then I set field 'RangeDaysFrom' with '01/02/2023'
        Then I click on empty space
        Then I click on 'RangeDaysTo'
        Then I wait until DOM is loaded
        And I clear field 'RangeDaysTo'
        Then I set field 'RangeDaysTo' with '02/02/2023 - 04/02/2023'
        Then I set field 'SelectPaymentOrigin' with 'Días legales'
        And I click on contain 'Días legales'
        Then I click on 'All Days'
        Then I click on 'Maximum Quantity'
        Then I click on 'Days'
        Then I click on empty space
        Then I validate hover 'Days Validation' with 'Campo obligatorio' is visible
        Then I set field 'Days' with '7'
        Then I click on 'DiscountSinceDate'
        Then I click on empty space
        Then I validate hover 'DiscountSinceDate Validation' with 'Campo obligatorio' is visible
        Then I set field 'DiscountSinceDate' with '01/02/2023'


