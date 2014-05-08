`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true

App = Ember.Application.extend
  Resolver: Resolver
  modulePrefix: 'optibus'

loadInitializers(App, 'optibus')

`export default App`
