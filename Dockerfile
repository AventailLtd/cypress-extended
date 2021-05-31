FROM cypress/included:7.4.0

RUN npm install cypress-localstorage-commands cypress-file-upload del
