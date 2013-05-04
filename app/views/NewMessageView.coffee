module.exports = class NewMessageView extends Backbone.Marionette.ItemView
  template: require('./templates/newMessageBoard')

  events:
    "click .save": 'saveNewMessage'

  saveNewMessage: =>
    console.log @model
    @model.set "author.username", @$("author.username").val()
    @model.set "subject", @$("subject").val()
    @model.set "messageText", @$("subject").val()
    @model.save()
