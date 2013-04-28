Collection = require './collection'
User = require './user'

module.exports = class User extends Collection
  model: User
  url: 'http://localhost:8081/api/users'