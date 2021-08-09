# Goal

This image is based on the upstream cypress-included image and extended with commonly used libs so one can use thie image in build pipeline as is.

Included libs:

- https://github.com/javierbrea/cypress-localstorage-commands (for local storage testing)
- cypress-file-upload https://github.com/abramenal/cypress-file-upload (for file uploads)
- del https://github.com/sindresorhus/del (for artifact file management)
- curl, git (for gitlab cicd management)

Upstream image:

https://hub.docker.com/r/cypress/included/tags

# Manual image build and push (automated build is not working atm):

(you have to use docker login for push!)

    docker build -t aventailltd/cypress-extended-8.2.0-20210809 .
    docker push aventailltd/cypress-extended-8.2.0-20210809

