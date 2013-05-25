User = require('models/user')

module.exports = class MessageView extends Backbone.Marionette.ItemView
  template: require('./templates/messageBoard')

  events:
    "click .save": 'save'

  save: =>
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