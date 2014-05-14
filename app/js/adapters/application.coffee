# ApplicationAdapter = DS.FixtureAdapter.extend()
# ApplicationAdapter = DS.RESTAdapter.extend() # this is the default..
ApplicationAdapter = DS.SailsSocketAdapter.extend
  pluralize: false

`export default ApplicationAdapter`
