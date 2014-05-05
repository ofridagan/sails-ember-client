window.App = Ember.Application.create()

App.Router.map ->
  # put your routes here

App.IndexRoute = Ember.Route.extend
  model: ->
    [
      'red'
      'yellow'
      'blue'
    ]
