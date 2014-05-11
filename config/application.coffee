###
Exports an object that defines
 all of the configuration needed by the projects'
 depended-on grunt tasks.

You can find the parent object in: node_modules/lineman/config/application.js
###

_ = require("underscore")

module.exports = (lineman) ->
  app = lineman.config.application

  concat_sourcemap:
      js:
        src: _(app.concat_sourcemap.js.src).without(
          "<%= files.js.app %>",
          "<%= files.coffee.generated %>"
        ).concat [
          "<%= files.js.transpiled %>/**/*.js"
        ]
      spec:
        src: _(app.concat_sourcemap.spec.src).without(
          "<%= files.js.spec %>",
          "<%= files.js.specHelpers %>",
          "<%= files.coffee.generatedSpec %>",
          "<%= files.coffee.generatedSpecHelpers %>"
        ).concat [
          "spec/vendor/**/*.js",
          "<%= files.js.transpiledSpec %>/**/*.js",
          "generated/coffeeSpec/specs-loader.js"
        ]

  loadNpmTasks: app.loadNpmTasks.concat("grunt-es6-module-transpiler")
  appendTasks:
    common: ["transpile"].concat(app.appendTasks.common)

  coffee:
    compile:
      options:
        bare: true
      files: [
        expand: true
        cwd: 'app/js'
        src: ["**/*.coffee"]
        dest: "generated/coffee/"
        ext: ".js"
      ,
        expand: true
        cwd: 'spec'
        src: ["**/*.coffee"]
        dest: "generated/coffeeSpec/"
        ext: ".js"
      ]

  transpile:
    main:
      type: "amd"
      moduleName: (path) -> 'optibus/' + path
      files: [
        expand: true
        cwd: 'generated/coffee/'
        src: ['**/*.js']
        dest: '<%= files.js.transpiled %>'
      ,
        expand: true
        cwd: 'app/js'
        src: ['**/*.js']
        dest: '<%= files.js.transpiled %>'
      ]
    spec:
      type: "amd"
      moduleName: (path) -> 'optibusSpecs/' + path
      files: [
        expand: true
        cwd: 'generated/coffeeSpec/'
        src: ['**/*.js', '!specs-loader.js']
        dest: '<%= files.js.transpiledSpec %>'
      ,
        expand: true
        cwd: 'spec/'
        src: ['**/*.js', "!vendor/**/*"]
        dest: '<%= files.js.transpiledSpec %>'
      ]

  watch:
    coffee:
      tasks: app.watch.coffee.tasks.concat ['coffee', 'transpile', 'concat_sourcemap:js']

  coffeelint:
    options:
      no_backticks:
        level: 'ignore'
  jshint:
    options:
      esnext: true

    #  API Proxying
    #
    #  During development, you'll likely want to make XHR (AJAX) requests to an API on the same
    #  port as your lineman development server. By enabling the API proxy and setting the port, all
    #  requests for paths that don't match a static asset in ./generated will be forwarded to
    #  whatever service might be running on the specified port.
    #
    #  server: {
    #    apiProxy: {
    #      enabled: true,
    #      host: 'localhost',
    #      port: 3000
    #    }
    #  }

