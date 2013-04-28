module.exports = class updateProfile extends Backbone.Marionette.ItemView
  template: require('./templates/updateProfile')

  events:
    "click .save": 'save'
#    "keyup input.firstName": "updateFirstName"
#
#  modelEvents:
#    "change": 'update'

  onRender: =>

#  update: =>
#    @updateFirstName()
#    @$("span.firstName").text(@model.get("firstName"))
#    @$("span.lastName").text(@model.get("lastName"))
#
#  updateFirstName: =>
#    @model.set 'firstName', @$("input.firstName").val()

  save: =>
    @model.set "firstName", @$("input.firstName").val()
    @model.set "lastName", @$("input.lastName").val()
    @model.set "email", @$("input.email").val()
    @model.set "membership", @$("input.membership").val()
    @model.save()
