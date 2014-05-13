IndexRoute = Ember.Route.extend
  model: ->
    [
      'red'
      'yellow'
      'blue'
    ]
  renderTemplate: ->
    @render 'userss'

`export default IndexRoute`

