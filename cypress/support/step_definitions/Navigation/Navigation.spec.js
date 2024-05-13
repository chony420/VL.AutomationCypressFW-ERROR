//// <reference types="Cypress" />
/// <reference path="./../../index.d.ts" />
// @ts-nocheck
 
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"; 
import { pageObj } from "./../../step_definitions/General.spec.js";
 
import { Product } from "./../../commands.js";
import {VismaProduct, VismaModules} from "../../../fixtures/Commons/Visma-Name.js"; 
 
let txtModule;

Then("I go to module {string}", (module) => {
  cy.fixture("Commons/Navigation/Modules").then(($Modules) => {

    cy.get($Modules[module]).click(); 
    txtModule = VismaModules[module]    

  });
});

Then("I go to card {string}", (card) => {
  cy.fixture("Commons/Navigation/Cards").then(($Cards) => {
    
    switch (Product) {

      case VismaProduct.VLCA1:
        if(txtModule !== "") {
          cy.get($Cards.VLCA[txtModule][card]).click();
          break;
        }
        cy.get($Cards[card]).click();
        break;

      case VismaProduct.VismaLatam:
        
        if(txtModule !== "") {
          cy.get($Cards.VismaLatam[txtModule][card]).click();
          break;
        }
        cy.get($Cards[card]).click();
        break;
    }
  });
});

Then("I validate user to be on the {string} page", (page) => {
  cy.fixture("Commons/Navigation/PagePaths").then(($PagePaths) => {
    
    if (page == "Login") {
      txtModule = "";
    }

    switch (Product) {

      case VismaProduct.VLCA1:
      
      if(txtModule !== ""){ 
        cy.url().should("include", $PagePaths.VLCA[txtModule][page]);
        
        break;
      }
        cy.url().should("include", $PagePaths[page]);
        break;

      case VismaProduct.VismaLatam:
        
        if(txtModule !== ""){
          cy.url().should("include", $PagePaths.VismaLatam[txtModule][page]);
          break;
        }
        
        cy.url().should("include", $PagePaths[page]);
        break;
    }
  });
});

// SideNavBar
Then("I click on {string} from the side navigation bar", (elem) => {
  cy.fixture("Commons/Navigation/SideNavBar").then(($SideNavBar) => {
    cy.get($SideNavBar[elem]).should("be.visible").click({ force: true });
  });
});


Then("I click breadcrumb {string}", (breadcrumb) => {
  cy.fixture("Commons/Breadcrumb").then(($breadcrumb) => {
    
    switch (Product) {
      
      case VismaProduct.VLCA1:
       
        if(txtModule !== ""){  
          cy.get($breadcrumb.VLCA[breadcrumb]).should("be.visible").click();
          break;
        }
        cy.get($breadcrumb[breadcrumb]).should("be.visible").click();
        break;

      case VismaProduct.VismaLatam:   
        
        console.log($breadcrumb.VismaLatam[txtModule][breadcrumb])
        if(txtModule !== ""){
          cy.get($breadcrumb.VismaLatam[txtModule][breadcrumb]).should("be.visible").click();
          break;
        }
        
        cy.get($breadcrumb[breadcrumb]).should("be.visible").click();
        break;
    }
  });
});

Then("I go to tab {string}", (tab) => {
  cy.fixture("Commons/Navigation/Tabs").then(($Tabs) => {
    
    switch (Product) {

      case VismaProduct.VLCA:
        cy.get($Tabs[tab]).click();
        break;

      case VismaProduct.VismaLatam:
        
        if(txtModule !== "") {
          cy.get($Tabs.VismaLatam[txtModule][tab]).click();
          break;
        }
        
        cy.get($Tabs[tab]).click();
        break;
    }
  });
});
Then("I wait for request {string} and navigate to tab parent element containing {string}",(request, text) => {
  cy.wait(`@${request}`,{timeout:20000}).its('response.statusCode').should('be.within', 200, 404)
  cy.contains(text).parents('[role="tab"]').click()
})
Then("I go to step {string}", (step) => {
  cy.fixture("Commons/Navigation/Steps").then(($Steps) => {
    
    switch (Product) {

      case VismaProduct.VLCA:
        cy.get($Steps[step]).click();
        break;

      case VismaProduct.VismaLatam:
        
        if(txtModule !== "") {
          cy.get($Steps.VismaLatam[txtModule][step]).click();
          break;
        }
        
        cy.get($Steps[step]).click();
        break;
    }
  });
}); 
Then("I go to step {string} and intercept graphql", (step, url) => {
  cy.fixture("Commons/Navigation/Steps").then(($Steps) => {
    
    switch (Product) {

      case VismaProduct.VLCA:
        cy.get($Steps[step]).click();
        break;

      case VismaProduct.VismaLatam:
        
        if(txtModule !== "") {
          cy.get($Steps.VismaLatam[txtModule][step]).click();
          cy.intercept('**/graphql').as('request')
          cy.wait(`@request`,{timeout:20000}).its('response.statusCode').should('eq', 200) 
          break;
        }
        
        cy.get($Steps[step]).click();
        break;
    }
  });
}); 

Then("I avoid redirection by clicking {string}", (elem) => {  
  cy.window().then((win)=>{
    cy.stub(win, 'open').callsFake((url)=>{
        return win.open.wrappedMethod.call(win, url, '_self')
    } ).as('Open')
  })   
  cy.get(pageObj[elem]).click() 
}); 