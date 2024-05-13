@vlpeople-nightly
Feature: Payroll -> Tablero de Nomina
  This feature validates:
  - The responsiveness & behaviour of different views at certain viewports
  - The css styles in the People & Payroll views

  Background:
        Given I login on 'VismaLatam' as 'superadmin'
        Then I validate user to be on the 'Login' page
        And I load file 'Login' from 'Commons/Login'
        And I set field 'Database' with 'Cypress Argentina'
        And I click on contain 'Cypress Argentina'
        Then I click on 'ChooseBtn'
        And I validate user to be on the 'Home' page 
    Scenario: Payroll Board UI - Different viewport
        And I load file 'Tablero' from 'VismaLatam/Payroll' 
        Then I visit url 'VismaLatam' 'Payroll Board'
        Then I wait until 'Progress Spinner' not exist  
        Then I validate the element 'Header Detail' to have a padding-left of '20px'
        Then I validate the element 'Header Detail' to have a padding-top of '12px' 
        Then I click on 'Colaborador'
        Then I validate the element 'Employee Summary' to have a padding-left of '16px'
        Then I validate the element 'Employee Summary' to have a padding-top of '16px' 
        Then I click on 'FirstEmployeeSidebar'
        Then I validate the element 'Concept Title' its font-family is 'PFBeauSansPro' 
        Then I validate 'Colaborador Search Button' is not visible
       
        Then I set viewport 1200 768
        Then I force click 'Close Sidebar'
        Then I validate the element 'Employee Summary' to have a 'padding-left' of '0px' 
        Then I validate the element 'Employee Summary' to have a 'padding-top' of '0px' 
        Then I validate the element 'Header Detail' to have a flex-wrap of 'wrap'
        Then I validate the element 'Payroll-board__accordion' to have a flex-grow of '1'
        Then I validate the element 'Payroll-board__accordion' to have a gap of '10'
        Then I validate 'Colaborador Search Button' to be visible
        Then I force click 'Close Sidebar'
        
        Then I set viewport 991 768
        Then I validate 'Employee-summary-wrapper__employee-seniority' is not visible
        Then I validate the element 'Payroll-board__accordion' to have a flex-wrap of 'wrap' 

 
    Scenario: People Styles
     And I load file 'Home' from 'VismaLatam/People' 
     Then I validate the element 'Cards Link' its letter-spacing is '0.5px' 
     Then I validate the element 'Carousel Paragraph' its font-weight is '500'  
     Then I visit url 'VismaLatam' 'Basic Configuration Dashboard'
     Then I validate the element 'Mat Cards' its color is 'rgb(40, 40, 40)' 
     Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px'  
     Then I visit url 'VismaLatam' 'Organization Configuration Dashboard'
     Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px' 
     Then I validate the element 'Cards Paragraph' its font-weight is '500'  

    Scenario: Payroll Styles
      And I load file 'Home' from 'VismaLatam/People'
      Then I visit url 'VismaLatam' 'Payroll Operations Dashboard'
      Then I validate the element 'Mat Cards' its color is 'rgb(40, 40, 40)' 
      Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px' 
      Then I validate the element 'Cards Paragraph' its font-weight is '500'   
      Then I visit url 'VismaLatam' 'Payroll Configuration Dashboard'
      Then I validate the element 'Mat Cards' its color is 'rgb(40, 40, 40)' 
      Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px' 
      Then I validate the element 'Cards Paragraph' its font-weight is '500'  
      Then I visit url 'VismaLatam' 'Payroll Process Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px'  
      Then I visit url 'VismaLatam' 'Payroll Accumulators Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px'  
      Then I visit url 'VismaLatam' 'Payroll Parameter Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Formula Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Basic Configuration Dashboard'  
      Then I validate the element 'Mat Cards' its color is 'rgb(40, 40, 40)' 
      Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px' 
      Then I validate the element 'Cards Paragraph' its font-weight is '500' 
      Then I visit url 'VismaLatam' 'Payroll Period Board'
      Then I wait until 'Progress Spinner' not exist   
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Period Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Model Board'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Payment Types Board'
      Then I validate the element 'Mat Cards' its color is 'rgb(40, 40, 40)' 
      Then I validate the element 'Cards Paragraph' its letter-spacing is '0.5px' 
      Then I validate the element 'Cards Paragraph' its font-weight is '500' 
      Then I visit url 'VismaLatam' 'Payroll Payment Types Dashboard'
      Then I wait until 'Progress Spinner' not exist  
      Then I validate the element 'Mat Cell' its font-size is '13px'  
      Then I visit url 'VismaLatam' 'Payroll Custom Processing Periods Board'
      Then I validate the element 'Mat Cell' its font-size is '13px' 
      Then I visit url 'VismaLatam' 'Payroll Mopre Board'
      Then I validate the element 'Mat Cell' its font-size is '13px'  
      Then I visit url 'VismaLatam' 'Payroll Reports Board'
      Then I validate the element 'Td Cell' its font-size is '13px' in shadow root
      

        