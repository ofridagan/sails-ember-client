# Exports a function which returns an object that overrides the default &
#    plugin file patterns (used widely through the app configuration)
#
#  To see the default definitions for Lineman's file paths and globs, see:
#
#    - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
#
module.exports = (lineman) ->
  coffee:
    generated: "generated/coffee/**/*.js"
  js:
    vendor: [
      "vendor/bower/loader/loader.js"
      "vendor/bower/underscore/underscore.js"
      "vendor/bower/jquery/jquery.js"
      "vendor/js/sockets.js"
      "vendor/js/sails.io.js"
      "vendor/bower/handlebars/handlebars.runtime.js"
      "vendor/bower/ember/ember.js"
      "vendor/bower/ic-ajax/dist/named-amd/main.js"
      "vendor/bower/ember-data/ember-data.js"
      "vendor/bower/ember-cli-shims/app-shims.js"
      "vendor/bower/ember-resolver/dist/ember-resolver.js"
      "vendor/bower/ember-load-initializers/ember-load-initializers.js"
      "vendor/js/**/*.js"
    ]
    transpiled: "generated/js/transpiled"
    transpiledSpec: "generated/js/transpiledSpec"
