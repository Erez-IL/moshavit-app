Collection = require './collection'
Message = require './message'

module.exports = class Messages extends Collection
  model: Message
  url: 'http://localhost:8081/api/boardMessage'


