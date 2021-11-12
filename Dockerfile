#FROM cypress/included:9.0.0
FROM cypress/included:8.7.0

WORKDIR /usr/local/lib

# del is required because current version of node that cypress uses doesn't contain fs,
# thus rm cannot be used to remove files of non failing tests
RUN npm install cypress-localstorage-commands cypress-file-upload del curl git
