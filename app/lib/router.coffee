application = require('application')
HomeView = require('views/HomeView')
UserView = require('views/UserView')
UsersView = require('views/UsersView')
MessageView = require('views/MessageView')
NewMessageView = require('views/NewMessageView')
MessagesView = require('views/MessagesView')
updateProfileView = require('views/updateProfileView')
User = require('models/user')
Users = require('models/users')
Message = require('models/message')
NewMessage = require('models/newMessage')
Messages = require('models/messages')

module.exports = class Router extends Backbone.Router

  routes:
    '': 'home'
    'messageBoard': 'messageViewDefault'
    'newmessageBoard': 'newMessageViewDefault'
    'messagesBoard': 'messagesViewDefault'
    'user': 'userViewDefault'
    'users': 'usersViewDefault'
    'user/:id': 'userView'
    'updateProfile/:id': 'updateProfile'
    'messageBoard/:id': 'messageViewById'

  home: =>
    view = new HomeView()
    application.layout.content.show(view)

  messageViewDefault: =>
    view = new MessageView()
    application.layout.content.show(view)

  newMessageViewDefault: =>
    view = new NewMessageView
      model: new NewMessage()
    application.layout.content.show(view)

  messagesViewDefault: =>
    messages = new Messages
    messages.fetch
      success: =>
        view = new MessagesView
          collection: messages
        application.layout.content.show(view)

  userViewDefault: =>
    view = new UserView()
    application.layout.content.show(view)

  usersViewDefault: =>
    users = new User
    users.fetch
      success: =>
        view = new UsersView
          model: users
        application.layout.content.show(view)

  messageViewById: (id)=>
    message = new Message
      id: id
    message.fetch
      success: =>
        view = new MessageView
          model: message
        application.layout.content.show(view)

  userView: (id) =>
    user = new User
      id: id
    user.fetch
      success: =>
        view = new UserView
          model: user
        application.layout.content.show(view)

  updateProfile: (id) =>
    user = new User
      id: id
    user.fetch
      success: =>
        view = new updateProfileView
          model: user
        application.layout.content.show(view)




