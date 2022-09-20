FROM cypress/included:10.8.0

#WORKDIR /usr/local/lib

# del is required because current version of node that cypress uses doesn't contain fs,
# thus rm cannot be used to remove files of non failing tests
# cypress-social-logins: facebook/google login
# decompress: Extracting archives in tests
# cypress-multi-reporters: Cypress Reporter (Test results)
# @reportportal/agent-js-cypress: reporterportal.io Agent
RUN yarn add cypress-localstorage-commands cypress-file-upload del curl git cypress-social-logins decompress cypress-multi-reporters @reportportal/agent-js-cypress
