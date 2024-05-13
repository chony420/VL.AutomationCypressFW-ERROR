@vlpeople-nightly
Feature: People -> Vacaciones -> Modelo de Vacaciones

    As a user I want:
    - Navigate for the differents menues option and links
    - Validation of mandatory fields
    - Creation holiday models
    - Modify holiday models
    - Duplicate holiday models
    - Cancel Delete holiday models
    - Delete holiday models
    - Inactivate Vacation Models
    - Activate Vacation Models

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
        And I go to card 'HolidayModel'


    @Smoke
    Scenario: Navigation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I validate user to be on the 'HolidayModel Create' page
        Then I wait until DOM is loaded
        Then I click button 'BackArrow'
        Then I wait until DOM is loaded
        And I validate user to be on the 'HolidayModel' page
        Then I wait until DOM is loaded
        Then I click button 'Create'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'HolidayModel' page


    @Smoke
    Scenario: Validation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I click on 'DeleteCountry'
        Then I wait until DOM is loaded
        Then I validate hover 'Country (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'ModelName'
        Then I click on empty space
        Then I validate hover 'ModelName (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'Format'
        Then I wait until DOM is loaded
        Then I click on 'TypeOfDays'
        Then I click on empty space
        Then I validate hover 'TypeOfDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'SendHolidayNote'
        Then I click on empty space
        Then I validate hover 'TemplateForSendingNotification (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        # Then I click on 'ExpirePeriod'
        #Then I click on empty space
        # Then I validate hover 'ExpirePeriod (Obligatory Validation)' with 'obligatorio' is visible
        # Then I wait until DOM is loaded
        # Then I click on 'ExtendPeriod'
        # Then I click on empty space
        # Then I validate hover 'ExtendPeriod (Obligatory Validation)' with 'obligatorio' is visible
        # Then I wait until DOM is loaded
        Then I click on 'AnticipatePeriod'
        Then I click on empty space
        Then I validate hover 'AnticipatePeriod (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'Scale'
        Then I wait until DOM is loaded
        Then I click on 'AntiquityFrom'
        Then I click on empty space
        Then I validate hover 'AgeFrom (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'DaysOff'
        Then I click on empty space
        Then I validate hover 'DaysOff (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'Request'
        Then I wait until DOM is loaded
        Then I click on 'AllowNegativeBalance'
        Then I click on empty space
        Then I validate hover 'NegativeBalance (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'RequestsByPeriod'
        Then I click on empty space
        Then I validate hover 'MaximumNumberRequestForPeriod (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'NumberOfDaysToOrder'
        Then I wait until DOM is loaded
        Then I click on 'Percentage'
        Then I wait until DOM is loaded
        Then I click on 'PercentageOfDays'
        Then I click on empty space
        Then I validate hover 'PercentajeOfDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'Top'
        Then I wait until DOM is loaded
        Then I click on 'Minimun'
        Then I click on empty space
        Then I validate hover 'MinimumNumberOfDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'Maximun'
        Then I click on empty space
        Then I validate hover 'MaximumNumberOfDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'PaymentAndDiscount'
        Then I wait until DOM is loaded
        And I set field 'PaymentAndDiscountMethod' with 'Pago y descuento total sin tope en el mes'
        And I click on contain 'Pago y descuento total sin tope en el mes'
        Then I wait until DOM is loaded
        Then I click on 'PaymentFrequency'
        Then I click on empty space
        Then I validate hover 'PaymentFrequency (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        And I set field 'PaymentFrequency' with 'Mensual'
        And I click on contain 'Mensual'
        Then I wait until DOM is loaded
        Then I click on 'PaymentModel'
        Then I click on empty space
        Then I validate hover 'PaymentModel (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'DiscountModel'
        Then I click on empty space
        Then I validate hover 'DiscountModel (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        And I set field 'Country' with 'ARGENTINA'
        And I click on contain 'ARGENTINA'
        Then I wait until DOM is loaded
        Then I click on 'AgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'Percentage-AgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'ExpirePeriod-AgreedDays'
        Then I click on empty space
        Then I validate hover 'ExpirePeriod-AgreedDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded
        Then I click on 'QuantityMonth-ExtendExpiration'
        Then I wait until DOM is loaded
        # Then I validate hover 'ExtendPeriod-AgreedDays (Obligatory Validation)' with 'obligatorio' is visible
        # Then I click on empty space
        Then I click on 'QuantityMonth-AnticipateExpiration'
        Then I wait until DOM is loaded
        Then I click on 'AnticipatePeriod-AgreedDays'
        Then I click on empty space
        Then I validate hover 'AnticipatePeriod-AgreedDays (Obligatory Validation)' with 'obligatorio' is visible
        Then I wait until DOM is loaded

    Scenario: Creation
        Then I click button 'Create'
        Then I wait until DOM is loaded
        And I load file 'HolidayModel' from 'VismaLatam/People'
        And I set field 'ModelName' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click on 'Format'
        Then I wait until DOM is loaded
        And I set field 'KindOfDays1' with 'Corridos'
        And I click on contain 'Corridos'
        Then I wait until DOM is loaded
        Then I click on 'ExcludeWorkingPublicHolidays'
        Then I wait until DOM is loaded
        Then I click on 'ExcludeNonWorkingPublicHolidays'
        Then I wait until DOM is loaded
        Then I click on 'SendHolidayNote'
        Then I wait until DOM is loaded
        And I set field 'TemplateToSendNotifications' with 'Ejemplo'
        And I click on contain 'Ejemplo'
        Then I wait until DOM is loaded
        # Then I click on 'ExpirePeriod'
        # Then I wait until DOM is loaded
        # And I set field 'PercentageLegalDays' with '50'
        Then I wait until DOM is loaded
        # Then I click on 'ExtendPeriod'
        # Then I wait until DOM is loaded
        # And I set field 'AmountMonths-ExtendPeriod' with '5'
        # Then I wait until DOM is loaded
        # Then I click on 'AnticipatePeriod'
        # Then I wait until DOM is loaded
        # And I set field 'AmountMonths-AnticipatePeriod' with '5'
        Then I wait until DOM is loaded
        Then I click on 'Balance'
        Then I wait until DOM is loaded
        Then I click on 'NotRounding'
        Then I wait until DOM is loaded
        # Then I set filter field 'SearchUnassigned' with '147 Franco Compensatorio'
        # Then I mark checkbox of 'DragDropLeft' containing '147 Franco Compensatorio'
        # Then I wait until DOM is loaded
        # And I load file 'DragAndDrop' from 'Commons'
        # Then I click on 'Assign arrow' to drag
        # Then I wait until DOM is loaded
        # And I load file 'HolidayModel' from 'VismaLatam/People'
        # Then I clean field 'SearchUnassigned'
        # Then I wait until DOM is loaded
        # Then I set filter field 'SearchAssigned' with '147 Franco Compensatorio'
        # # Then I mark checkbox of 'DragDropRight' containing '147 Franco Compensatorio'
        # And I load file 'DragAndDrop' from 'Commons'
        # # Then I click on 'Unassign arrow' to drag
        # Then I wait until DOM is loaded
        # And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I clean field 'SearchAssigned'
        Then I wait until DOM is loaded
        And I load file 'DragAndDrop' from 'Commons'
        Then I click on 'SelectAllLeft'
        Then I wait until DOM is loaded
        Then I click on 'Assign arrow'
        Then I wait until DOM is loaded
        Then I click on 'SelectAllRight'
        Then I wait until DOM is loaded
        Then I click on 'Unassign arrow'
        Then I wait until DOM is loaded
        Then I click on 'SelectAllLeft'
        Then I wait until DOM is loaded
        Then I click on 'Assign arrow'
        Then I wait until DOM is loaded
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I click on 'Scale'
        Then I wait until DOM is loaded
        And I set field 'AntiquityFrom' with '1'
        Then I wait until DOM is loaded
        And I set field 'DaysOff' with '15'
        Then I wait until DOM is loaded
        Then I click on 'Add'
        Then I wait until DOM is loaded
        Then I click on 'Remove'
        Then I wait until DOM is loaded
        Then I click on 'Request'
        Then I wait until DOM is loaded
        Then I click on 'AllowNegativeBalance'
        Then I wait until DOM is loaded
        And I set field 'MaximumDays' with '10'
        Then I wait until DOM is loaded
        Then I click on 'HalfDayEnabled'
        Then I wait until DOM is loaded
        Then I click on 'MondayStart'
        Then I wait until DOM is loaded
        Then I click on 'RequestsByPeriod'
        Then I wait until DOM is loaded
        And I set field 'MaximumQuantity' with '20'
        Then I wait until DOM is loaded
        Then I click on 'NumberOfDaysToOrder'
        Then I wait until DOM is loaded
        Then I click on 'Top'
        Then I wait until DOM is loaded
        And I set field 'Minimun' with '5'
        Then I wait until DOM is loaded
        And I set field 'Maximun' with '15'
        Then I wait until DOM is loaded
        Then I click on 'PaymentAndDiscount'
        Then I wait until DOM is loaded
        And I set field 'PaymentAndDiscountMethod' with 'Pago y descuento total sin tope en el mes'
        And I click on contain 'Pago y descuento total sin tope en el mes'
        Then I wait until DOM is loaded
        And I set field 'PaymentFrequency' with 'Mensual'
        And I click on contain 'Mensual'
        Then I wait until DOM is loaded
        And I set field 'PaymentModel' with '1ra. Quincena'
        And I click on contain '1ra. Quincena'
        Then I wait until DOM is loaded
        And I set field 'DiscountModel' with 'Mensuales'
        And I click on contain 'Mensuales'
        Then I wait until DOM is loaded
        Then I click on 'AgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'PayAgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'ExpirePeriod-AgreedDays'
        Then I wait until DOM is loaded
        And I set field 'Percentage-AgreedDays' with '30'
        Then I wait until DOM is loaded
        Then I click on 'ExtendPeriod-AgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'ExtendPeriod-AgreedDays'
        Then I wait until DOM is loaded
        # And I set field 'QuantityMonth-ExtendExpiration' with '4'
        # Then I wait until DOM is loaded
        Then I click on 'AnticipatePeriod-AgreedDays'
        Then I wait until DOM is loaded
        And I set field 'QuantityMonth-AnticipateExpiration' with '6'
        Then I wait until DOM is loaded
        Then I click button 'Save'
        And I validate user to be on the 'HolidayModel Success' page
        Then I wait until DOM is loaded
        And I validate snackbar 'Created' is visible and have the text 'Created_txt'
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        And I validate user to be on the 'HolidayModel' page

    Scenario: Modify
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Modificar' from ellipsis with value 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I clean field 'ModelName'
        Then I wait until DOM is loaded
        And I set field 'ModelName' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click on 'Format'
        Then I wait until DOM is loaded
        And I set text 'Habiles L-V' on 'TypeOfDays' and press enter
        Then I wait until DOM is loaded
        Then I click on 'ExcludeWorkingPublicHolidays'
        Then I wait until DOM is loaded
        Then I click on 'ExcludeNonWorkingPublicHolidays'
        Then I wait until DOM is loaded
        Then I click on 'SendHolidayNote'
        Then I wait until DOM is loaded
        # ExpirePeriod y ExtendPeriod se visulizan en todas las bases excepto en Argentina
        # Then I click on 'ExpirePeriod'
        # Then I wait until DOM is loaded
        # Then I click on 'ExtendPeriod'
        # Then I wait until DOM is loaded
        # Then I click on 'AnticipatePeriod'
        # Then I wait until DOM is loaded
        Then I click on 'Balance'
        Then I wait until DOM is loaded
        Then I click on 'Optimum'
        Then I click on 'Request'
        Then I wait until DOM is loaded
        Then I click on 'AllowNegativeBalance'
        Then I wait until DOM is loaded
        Then I click on 'HalfDayEnabled'
        Then I wait until DOM is loaded
        Then I click on 'MondayStart'
        Then I wait until DOM is loaded
        Then I click on 'RequestsByPeriod'
        Then I wait until DOM is loaded
        Then I click on 'Percentage'
        Then I wait until DOM is loaded
        And I set field 'PercentageOfDays' with '5'
        Then I wait until DOM is loaded
        Then I click on 'PaymentAndDiscount'
        Then I wait until DOM is loaded
        And I set text 'Pago y descuento según fecha sin tope' on 'PaymentAndDiscountMethod' and press enter
        Then I wait until DOM is loaded
        And I set text 'Semanal' on 'PaymentFrequency' and press enter
        Then I wait until DOM is loaded
        And I set text 'SAC' on 'PaymentModel' and press enter
        Then I wait until DOM is loaded
        And I set text 'Otros' on 'DiscountModel' and press enter
        Then I wait until DOM is loaded
        Then I click on 'AgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'PayAgreedDays'
        Then I wait until DOM is loaded
        Then I click on 'ExpirePeriod-AgreedDays'
        Then I wait until DOM is loaded
        Then I click button 'Save'
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'
        Then I wait until DOM is loaded
        And I validate user to be on the 'HolidayModel' page

    Scenario: Duplicate
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Duplicar' from ellipsis with value 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I clean field 'ModelName'
        Then I wait until DOM is loaded
        And I set field 'ModelName' with 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        Then I click button 'Save'
        And I validate user to be on the 'HolidayModel Success' page
        Then I wait until DOM is loaded
        Then I click button 'Finish'
        And I validate user to be on the 'HolidayModel' page

    Scenario: Cancel Delete
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Eliminar' from ellipsis with value 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click button 'Cancel'
        Then I wait until DOM is loaded
        And I validate user to be on the 'HolidayModel' page

    Scenario: Delete
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Eliminar' from ellipsis with value 'HolidayModel Cypress (No Borrar)'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'

    Scenario: Inactive
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Inactivo' from ellipsis with value 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Asset
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Activo' from ellipsis with value 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        And I validate snackbar 'Modified' is visible and have the text 'Modified_txt'

    Scenario: Duplicate Delete
        And I load file 'HolidayModel' from 'VismaLatam/People'
        Then I set field 'FilterSearch' with 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        And I select option 'Eliminar' from ellipsis with value 'Duplicated Cy Model (No Borrar)'
        Then I wait until DOM is loaded
        Then I click Modal button 'Accept'
        Then I wait until DOM is loaded
        And I validate snackbar 'Deleted' is visible and have the text 'Deleted_txt'