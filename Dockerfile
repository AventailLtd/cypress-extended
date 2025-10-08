# https://hub.docker.com/r/cypress/included
FROM cypress/included:15.4.0

#WORKDIR /usr/local/lib

# we need curl for pipeline management
RUN apt-get update && apt-get install -y -q --no-install-recommends curl && apt-get clean && rm -r /var/lib/apt/lists/*

# del is required because current version of node that cypress uses doesn't contain fs,
# thus rm cannot be used to remove files of non failing tests
# cypress-social-logins: facebook/google login
# decompress: Extracting archives in tests
# cypress-multi-reporters: Cypress Reporter (Test results)
# mocha, mochawesome: Test Reporter
# cypress-fail-on-console-error: Console error watcher plugin
RUN yarn add \
    cypress-localstorage-commands \
    cypress-file-upload \
    del \
    curl \
    git \
    cypress-social-logins \
    decompress \
    cypress-multi-reporters \
    mochawesome \
    mocha \
    cypress-fail-on-console-error \
    cypress-real-events
