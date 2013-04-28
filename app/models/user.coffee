Model = require './model'

module.exports = class User extends Model
  urlRoot: "http://localhost:8081/api/users"