User = require('models/user')

module.exports = class NewMessageView extends Backbone.Marionette.ItemView
  template: require('./templates/newMessageBoard')

  events:
    "click .save": 'saveNewMessage'

  saveNewMessage: =>
    userId = @$(".authorId").val()
    user = new User
      id: userId
    user.fetch
      success: =>
      @model.set
        author: user
        subject: @$(".subject").val()
        messageText: @$(".messageText").val()

      console.log @model
      @model.save()

