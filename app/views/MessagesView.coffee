MessageView = require('views/MessageView')

module.exports = class MessagesView extends Backbone.Marionette.CollectionView
  itemView: MessageView
#  tagName: 'div'
  className: 'messages'
