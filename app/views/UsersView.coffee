#module.exports = class UsersView extends Backbone.Marionette.ItemView
#  template: require('./templates/users')
#
#
UserView = require('views/UserView')

module.exports = class UsersView extends Backbone.Marionette.CollectionView
  itemView: UserView
#  tagName: 'div'
  className: 'users'

