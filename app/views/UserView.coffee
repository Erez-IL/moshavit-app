module.exports = class UserView extends Backbone.Marionette.ItemView
  template: require('./templates/user')

  events:
    "click .save": 'save'
    "keyup input.firstName": "updateFirstName"

  modelEvents:
    "change": 'update'

  onRender: =>

  update: =>
    @updateFirstName()
    @$("span.firstName").text(@model.get("firstName"))
    @$("span.lastName").text(@model.get("lastName"))

  updateFirstName: =>
    @model.set 'firstName', @$("input.firstName").val()

  save: =>
#    @model.set "firstName", @$("input.firstName").val()
    @model.save()
