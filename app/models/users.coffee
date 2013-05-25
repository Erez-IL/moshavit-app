Collection = require './collection'
User = require './user'

module.exports = class Users extends Collection
  model: User
  url: 'http://localhost:8081/api/users'