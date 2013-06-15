User = require('models/user')

module.exports = class LoginView extends Backbone.Marionette.ItemView
  template: require('./templates/login')
  events:
    "click .loginButton": 'login'
    "click .logoutButton": 'logout'

  logout: =>
    $.get( "/api/users/logout")
    console.log("User Session Cleared")
    document.getElementById('sessionUsername').innerHTML ="Guest"


  login: =>
    $.ajax({
      url: "/api/users/login",
      type: "POST",
      contentType: "application/x-www-form-urlencoded",
      data: {
        username: $("#username").val(),
        password: $("#password").val()
      },
      success: (data)=>
        console.log("Logged in as " + $("#username").val() + " successfully")
        document.getElementById('sessionUsername').innerHTML=$("#username").val()
#        document.getElementById('invalidPassword').innerHTML = " "
        alert("wellcom "+$("#username").val())
        document.location.href="/#"
      ,
      error: ( jqXHR, textStatus, errorThrown) =>
        console.log("Failed logging in " + $("#username").val() + ": " +  errorThrown)
        document.getElementById('sessionUsername').innerHTML = "Guest"
#        document.getElementById('invalidPassword').innerHTML = "Invalid Password OR Username"
        alert("Invalid Password OR Username")
        $("#password").val("")
    })





