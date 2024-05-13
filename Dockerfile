FROM cypress/browsers:node14.16.0-chrome89-ff86
RUN npm install cypress-cucumber-preprocessor
RUN mkdir /FrameworkCypress
WORKDIR /FrameworkCypress
COPY ./package.json .
COPY ./cypress.json .
COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npx","cypress","run"]
CMD [""]