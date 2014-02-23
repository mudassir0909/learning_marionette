@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API = 
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  ###
    Modules also have events like "before:start", "stop", "before:stop"
  ###
  FooterApp.on 'start', ->
    API.showFooter()