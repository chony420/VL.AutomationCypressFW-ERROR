//// <reference types="Cypress" />
/// <reference path="./../index.d.ts" />
// @ts-nocheck
 
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"; 
export { pageObj };
import { cssProperty } from "../cssProperties.js"; 
 
let pageObj;
  
And("I load file {string} from {string}", (file1, file2) => {
  cy.fixture(file2 + "/" + file1).then(($Json) => {
    pageObj = $Json;
  });
});

Then("I clear field {string}", (field) => {
  cy.get(pageObj[field]).clear();
});

Then("I click on empty space", (field) => { // Clickear en un punto cualquiera de la pantalla para deseleccionar un elemento
  cy.clickOutside();
});

Then("I validate {string} to be visible", (elem) => {
  // Delete conditional when cy-Tools is assigned back to only 1 element
  if (["Execution status"].includes(elem)) {
    cy.get(pageObj[elem])
      .contains(elem, { matchCase: false })
      .should("be.visible");
  } else {
    let list = elem.split(", ");

    for (let i = 0; i < list.length; i++) {
      cy.get(pageObj[list[i]]).should("be.visible");
    }
  }
});

Then("I validate {string} to contain {string}", (elem, text) => {
  cy.get(pageObj[elem]).should("be.visible").invoke("val").should("eq", text);
});

Then("I validate {string} to have text {string}", (elem, text) => {
  cy.get(pageObj[elem]).should('include.text',text)
});

Then("I validate {string} to have length of {string}", (elem, length) => {
  if (elem === "Side Bar") {
    cy.get(`${pageObj[elem]} > mat-nav-list`)
      .should("be.visible")
      .children()
      .and("have.length", length);
  } else {
    cy.get(pageObj[elem]).should("be.visible").and("have.length", length);
  }
});

Then("I wait for {string} seconds", (seconds) => {
  cy.wait(seconds * 1000);
});

Then("I validate message {string} to be visible", (message) => {
  cy.contains(message, { matchCase: false }).should("be.visible");
});

Then("I click sequentially on {string}", (sequence) => {
  let list = sequence.split(" > ");

  for (let i = 0; i < list.length; i++) {
    cy.get(pageObj[list[i]]).should("be.visible").click();
  }
});
Then("I set field {string} with range date from {string} to {string}", (elem, date1, date2) => {
  cy.get(pageObj[elem]).type(date1 +'{tab}'+ date2);
});

Then("I delete last character in {string}", (elem) => {
  cy.get(pageObj[elem]).type('{backspace}');
});

Then("I click on disabled {string}", (elem) => {
  cy.get(pageObj[elem]).should("be.visible").and("be.disabled");
});

Then("I click on {string}", (elem) => {
  // Delete conditionals when cy-Tools is assigned back to only 1 element
  if (["Execution status"].includes(elem)) {
    cy.log("Llevar elemento a data-cy");
    cy.get(pageObj[elem])
      .contains(elem, { matchCase: false })
      .should("be.visible")
      .click({ force: true });
  } else if (["GET", "VL.Security.Service"].includes(elem)) {
    cy.contains(elem, { matchCase: false })
      .should("be.visible")
      .click({ force: true });
  } else {
    cy.get(pageObj[elem]).should("be.visible").click();
  }
});

Then("I click on {string} from shadow root {string}", (elem, shadowRoot) => {
  cy.get(pageObj[shadowRoot]).shadow().find(pageObj[elem]).should("be.visible").click();
});

Then("I click on list {string} of combobox {string} then select option by contain {string}",
  (list, combobox, option) => {
    cy.get(pageObj[list]).click({force:true});
    cy.get("[aria-label='Options list']").as("input-dropdown");
    cy.get(`${pageObj[combobox]}[aria-haspopup='listbox']`).should(
      "have.attr",
      "aria-expanded",
      "true"
    );
    cy.get("@input-dropdown").within(($dropdown) => {
      cy.wrap($dropdown).contains(option, { matchCase: false })
          .as('option').click()
  })
}
);

Then("I click on list {string} after wait for {string} then type option {string}", (list, tag, option) => {
  cy.wait(`@${tag}`,{ timeout: 30000 })  

  cy.get(pageObj[list])
    .as("list")
    .should("be.visible")
    .click()
    .type(option)
    .type("{enter}");
});

Then("I click on list {string} then type option {string}", (list, option) => { 
  cy.get(pageObj[list])
    .as("list")
    .should("be.visible")
    .click()
    .type(option)
    .type("{enter}");
});


Then("I click on list {string} then select option {string}", (list, option) => {
  cy.wait(1200);

  cy.get(pageObj[list]).as("list").should("be.visible").click();

  cy.get("[role=combobox]").should("have.attr", "aria-expanded", "true");
  
  cy.get("[role=listbox]", { timeout: 25000 })
    .as("selectList")
    .should("be.visible");

  cy.get("@selectList").within(($list) => {
    cy.wrap($list).contains(option, { matchCase: false }).as("option").click();
  });

  cy.get("@selectList").should("not.exist");
  cy.get("[role=combobox]").should("have.attr", "aria-expanded", "false");
}); 0

Then("I click on combo list {string} then select option {string}", (list, option) => { 
  cy.get(pageObj[list]).as("list").should("be.visible").click();  
  cy.get('@list').within(($listCombo) => {
    cy.wrap($listCombo).should("have.attr", "aria-expanded", "true");
  });
  cy.get("[role=listbox]", { timeout: 25000 })
    .as("selectList")
    .should("be.visible");

  cy.get("@selectList").within(($list) => {
    cy.wrap($list).contains(option, { matchCase: false }).as("option").click();
  });

  cy.get("@selectList").should("not.exist");
  cy.get("[role=combobox]").should("have.attr", "aria-expanded", "false");
});

Then("I click button {string}", (button) => {
  cy.fixture("Commons/Buttons").then(($Buttons) => {
    cy.get($Buttons[button]).should("be.visible").click();
  });
});
Then("I click button {string} and intercept {string} request {string}", (button,  method, url) => {
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
    cy.intercept({
      method: `${method}`,
      url:`${$urlRequest[url]}`,
      auth: {
        'bearer': `${Cypress.env('token')}`
      }
    }).as(`request`)
  cy.fixture("Commons/Buttons").then(($Buttons) => {
    cy.get($Buttons[button]).should("be.visible").click();
      cy.wait(`@request`,{timeout:30000})
      cy.get(`@request`).then((xhr)=>{
        cy.CustomLog(xhr)
      })
      });
  });
});

Then("I force click button {string}", (button) => {
  cy.fixture("Commons/Buttons").then(($Buttons) => {
    cy.get($Buttons[button]).should("be.visible").click({force: true});
  });
});

Then("I force click button {string} from shadow root {string}", (button, shadowRoot) => {
  cy.fixture("Commons/Buttons").then(($buttonsPage) => {
    cy.get(pageObj[shadowRoot]).shadow().find($buttonsPage[button]).should("be.visible").click({force: true});
  });
});

Then("I force click {string}", (elem) => { 
    cy.get(pageObj[elem]).click({force: true}); 
});

Then("I click on contain {string}", (contain1) => {
  cy.contains(contain1).click();
});

Then("I force click on contain {string}", (contain1) => {
  cy.contains(contain1).should("be.visible").click({force: true}) 
});
Then("I click autocomplete text {string}", (contain1) => {
  cy.get('.autoCompleteText').contains(contain1).click();
});
Then("I validate text {string} not exist", (text) => {
  cy.contains(text).should('not.exist');
});

Then("I validate options in ellipsis {string}", (values) => {
  cy.fixture("Commons/Options").then(($Options) => {(
    cy.ellipsisValidateOptions($Options[values]))
  });
});



Then("I click toggle {string}", (toggle) => {
  cy.fixture("Commons/Toggles").then(($Toggles) => {
    cy.get($Toggles[toggle]).should("be.visible").click();
});})

Then("I mark checkbox of {string} containing {string}", (arrow, text) => {
  cy.contains(text, { matchCase: false })
    .should("be.visible")
    .parents(pageObj[arrow])
    .siblings(".mat-checkbox")
    .should("be.visible")
    .as("checkbox")
    .click();
});
Then("I mark checkbox containing {string}", (text) => {
  cy.contains(text, { matchCase: false })
    .should("be.visible") 
    .siblings(".mat-checkbox")
    .should("be.visible")
    .as("checkbox")
    .click();
});

And("I click on not visible {string}", (elem) => {
  cy.get(pageObj[elem]).click({ force: true });
});

And("I validate in fixture {string} the element {string} not exist",
  (fixture, elem) => {
    cy.fixture(fixture).then(($Fixture) => {
      cy.get($Fixture[elem]).should("not.exist");
    });
  }
);

Then("I validate button {string} is not disabled", (button) => {
  cy.fixture("Commons/Buttons").then(($Buttons) => {
    cy.get($Buttons[button])
      .should("not.be.disabled");
  });
});

Then("I validate button {string} is disabled", (button) => {
  cy.fixture("Commons/Buttons").then(($Buttons) => {
    cy.get($Buttons[button]) 
      .and("be.disabled");
  });
});
Then("I validate checkbox {string} is disabled", (elem) => {
      cy.get(pageObj[elem]).and("be.disabled").invoke("attr", "aria-checked").should("contain", false);; 
});

Then("I validate {string} its attribute {string} contain {string}", (elem, attr, text) => {
    cy.get(pageObj[elem]).then(($elem)=>{
      expect($elem).to.have.attr(attr, text)
    })
});

Then("I validate {string} its value contain {string}", (elem,  text) => {
    cy.get(pageObj[elem]).invoke("val").should("contain", text);
});

Then("I validate {string} is checked", (elem) => {
  cy.get(pageObj[elem]).invoke("attr", "aria-checked").should("contain", true);
});

Then("I validate {string} is not checked", (elem) => {
  cy.get(pageObj[elem]).invoke("attr", "aria-checked").should("contain", false);
});

Then("I validate the element {string} to have a {string} of {string}", (elem, attr, value) => {
    cy.get(pageObj[elem]).should("have.css", attr).and("contain", `${value}`);
});

Then("I wait until {string} is visible", (elem) => {
  cy.get(pageObj[elem]).should("be.visible");
});

Then("I wait until {string} has value {string}", (elem,value) => {
  cy.get(pageObj[elem],{ timeout: 10000 }).should("be.visible");
  cy.get(pageObj[elem],{ timeout: 10000 }).contains(value);

});

Then("I wait until {string} is not visible", (elem) => {
  if (elem == "Spinner") {
    cy.fixture("Commons/Spinner").then(($Spinner) => {
      cy.get($Spinner).should("not.be.visible");
    })
  }
  else {
    cy.get(pageObj[elem]).should("not.be.visible");
  }
});
Then("I wait until spinner {string} not exist", (elem) => {
  cy.fixture("Commons/Spinner").then(($Spinner) => {
   cy.get($Spinner[elem]).should("not.exist");
 }) 
});
Then("I set text {string} on {string} and press enter", (text, elem)  => {
  cy.get(pageObj[elem]).type(text+'{enter}');
});

Then("I clear cache and cookies",() => {
  cy.getCookies().should('not.be.empty')
  cy.clearCookies()
  cy.getCookies().should('be.empty')
  cy.clearAllSessionStorage()
  cy.getAllSessionStorage().should('be.empty')
  cy.clearLocalStorage()
  cy.getAllLocalStorage().should('be.empty')

});

Then("I wait for {string} backend request with {string} method and taged as {string}", (https,method,tag) => {
  cy.intercept(method,https).as(tag)
  cy.wait('@'+tag,{ timeout: 30000 })
});

Then("I wait for backend request taged as {string}", (tag) => { 
  cy.wait(`@${tag}`,{ timeout: 30000 })  
  cy.get(`@${tag}`).then((xhr)=>{ 
    cy.CustomLog(xhr) 
  })
});

Then("I wait until {string} not have class {string}", (elem, $class) => {
  cy.get(pageObj[elem]).should("not.have.class",$class);
});
Then("I wait until {string} not exist", (elem, $class) => {
  cy.get(pageObj[elem]).should('not.exist')
});
Then("I validate {string} have class {string}", (elem, $class) => {
  cy.get(pageObj[elem]).should("have.class",$class );
});

Then("I validate {string} is a {string} with text {string}",
  (elem, elemTag, text) => {
    cy.get(pageObj[elem])
      .should("include.text", text)
      .then(($el) => {
        const tagName = $el.prop("tagName");
        cy.wrap(tagName).should("be.equal", elemTag);
    });
  }
);

Given("I set viewport {int} {int}", (width, height) => {   
  cy.viewport(width, height);
});

And("I validate content of column {string} from element containing {string} is shown after in {string}",(column,value, elem2) => {
  let text1
  cy.contains(value).parent("tr").find(pageObj[column]).as('row').then(($someText) => {
     
    text1 =  $someText[0].innerText.split('Colaboradores')[0] 
  })
  cy.get('@row').dblclick()

  cy.get(pageObj['StatusHeader']).should('be.visible')
  cy.get(pageObj[elem2]).then(($someText2) => {
       
    const textValidation =  $someText2[0].innerText 
    expect(textValidation.trim(' '), 'compare').to.equal(text1.trim(' '))
  })
})

And("I validate content of blue chip when assigning employees",() => {
  
  let text1
  cy.get("[role='progressbar'].skeleton-loader").should('not.exist')
  cy.get(pageObj['Left Chip']).then(($someText) => {
    text1 =  $someText[0].innerText.split('- Encontrados')[0] 
  })
  cy.fixture("Commons/Buttons").then(($Buttons) => {
  cy.get($Buttons['MoveAllAssigned']).should('not.be.disabled')
  cy.get($Buttons['MoveAllAssigned']).click();
}); 

  cy.get(pageObj['Progress Spinner']).should('not.exist')
  cy.get(pageObj['Right Chip']).then(($someText2) => { 
    const textValidation =  $someText2[0].innerText.split('- Incorporados')[0]
    expect(textValidation.trim(' '), 'compare').to.equal(text1.trim(' '))
  })

})

Then("I validate {string} not include {string}", (elem,text) => { 
  cy.get(pageObj[elem]).should('not.include.text',text)
});  

Then("I validate {string} is not visible", (elem) => { 
  cy.get(pageObj[elem]).should('not.be.visible')
});

Then("I validate row containing {string} is marked as favorite",
  (text, starIcon) => {
    cy.get("tbody")
      .contains("tr", text)
      .find(".cdk-column-favorite")
      .children(pageObj[starIcon])
      .should("have.length", 1);
  }
);

Then("I wait until DOM is loaded", () => {
  cy.DOMisLoaded();
});

Then("I wait until {string} request {string} status is OK", (request, url) => { 
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
  cy.intercept({
    method: 'GET',
    url:`${$urlRequest[url]}`, 
    auth: {
      'bearer': `${Cypress.env('token')}`
    }  
  }).as(request)
  cy.wait(`@${request}`,{timeout:20000}).its('response.statusCode').should('eq', 200)
  cy.get(`@${request}`).then((xhr)=>{ 
    cy.CustomLog(xhr) 
  })
  });
});

Then("I validate text {string} is visible", (text) => {
  cy.contains(text).should("be.visible");
});

Then("I select VismaCore tenant {string}", (tenant) => {
  cy.wait(200);
  cy.get('#ctl00_content_cLogin_cmbDatabase').select(tenant)
});


Then("I scroll into view {string}", (elem) => { 
  cy.get(pageObj[elem]).scrollIntoView()
}); 

Then("I save id from {string}", (url) => {  
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
    cy.intercept(`${$urlRequest[url]}`).as('request')  
     cy.get(`@request`).then((xhr)=>{ 
      Cypress.env('idPayrollProcess',JSON.stringify(xhr)) 
    }) 
    }
  );
}); 
Given("I wait request {string} and save with alias {string}", (url, alias) => {  
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
    cy.intercept(`${$urlRequest[url]}`).as(alias)   
    }
  );
}); 
Given("I intercept {string} and stub response {string}", (url, alias) => {  
  cy.fixture("Commons/URLRequest").then(($urlRequest) => {
    const staticResponse = {
      statusCode: 200,
      method: 'GET',
      body: {
        "quantity": 0,
        "pageNumber": 0,
        "pageSize": 25,
        "paginatedList": []
      } 
    }
     
    cy.intercept(`${$urlRequest[url]}`,staticResponse).as(alias)  
    }
  );
}); 


Then("I upload file {string}", (fileName) => {
  cy.get('input[type=file]')
    .then(($input) => {
      // Remover la propiedad 'display: none' del elemento
      Cypress.$($input).css('display', 'block');
    })
    .selectFile("cypress/fixtures/Plantilla/" + fileName, { force: true });
});


Then("I validate {string} is visible", (elem) => { 
  cy.get(pageObj[elem]).should('be.visible')
});


And("I validate paginator range {string} is set {string}", (range, set) => {
  cy.get(pageObj[elem])
  cy.get("[role=combobox]").should("have.attr", "aria-expanded", "false")
      .should("be.visible")
      .should('contain', set);
  });

And('I validate {string} orientation is 0', (elem) => {
    cy.get(pageObj[elem])
    cy.get('[style="transform: rotate(0deg);"]').should('exist');
  });

And('I validate {string} orientation is 180', (elem) => {
    cy.get(pageObj[elem])
    cy.get('[style="transform: rotate(180deg);"]').should('exist');
  });

And("I click on {string} and select to {string} with ctrl key", (elem, concept) => {
   cy.get(pageObj[elem]).click()
   cy.get(pageObj[concept]).click({ ctrlKey: true, multiple: true });
});

And("I click on {string} and select to {string} with shift key", (elem, concept) => {
  cy.get(pageObj[elem]).click()
  cy.get(pageObj[concept]).click({ shiftKey: true, multiple: true });
});
