User = require('models/user')

module.exports = class NewUserView extends Backbone.Marionette.ItemView
  template: require('./templates/newUser')

  events:
    "click .register": 'register'

  register: =>
    user=new User
    user.set "firstName", @$("input.firstName").val()
    user.set "lastName", @$("input.lastName").val()
    user.set "email", @$("input.email").val()
    user.set "password",@$("input.password").val()
    user.set "username",@$("input.username").val()
    console.log user
    user.save()
#    @model.set "firstName", @$("input.firstName").val()