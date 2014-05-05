# Lineman + Ember

Playing around with a single page application using:
* Ember in the client.
* Sails in the server - API only with socket.io.
* lineman for client development process.

```
$ npm install
$ lineman run
```

And then visit the page at [localhost:8000](http://localhost:8000) to verify that it works.

## Running tests

To run the tests, you can do one of two things:

1. In one terminal run lineman run and (with it still running) run `lineman spec`, which will launch chrome and an ongoing interactive session with testem.

2. For a one-shot test run, first have phantomjs installed (brew install phantomjs) and then run `lineman spec-ci` which will run the tests headlessly
