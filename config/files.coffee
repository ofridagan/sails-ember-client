# Exports a function which returns an object that overrides the default &
#    plugin file patterns (used widely through the app configuration)
#
#  To see the default definitions for Lineman's file paths and globs, see:
#
#    - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
#
module.exports = (lineman) ->
  js:
    vendor: [
      "vendor/bower/underscore/underscore.js"
      "vendor/bower/jquery/dist/jquery.js"
      "vendor/bower/handlebars/handlebars.runtime.js"
      "vendor/bower/ember/ember.js"
      "vendor/js/**/*.js"
    ]
