application = require 'application'

_.extend Backbone.Marionette.View.prototype, Backbone.Epoxy.View
_.extend Backbone.Model.prototype, Backbone.Epoxy.Model

$ ->
  application.initialize()
  
  
