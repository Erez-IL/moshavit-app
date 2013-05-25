Model = require './model'

module.exports = class Login extends Model
  url: "http://localhost:8081/api/users/login"