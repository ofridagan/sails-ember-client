Ember.keys(requirejs._eak_seen).filter((key)-> (/optibusSpecs/).test(key))
  .forEach (moduleName) ->
    require(moduleName, null, null, true)
