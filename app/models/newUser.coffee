Model = require './model'

module.exports = class NewUser extends Model
  urlRoot: "http://localhost:8081/api/users"