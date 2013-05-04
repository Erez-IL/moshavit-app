# Put your handlebars.js helpers here.


Handlebars.registerHelper 'pick', (val, options) ->
	return options.hash[val]

#Handlebars.registerHelper 'date', (val, options) ->
#	return moment(val).format("DD/MM/YYYY")

Handlebars.registerHelper 'date', (val, options) ->
	return ""+val.dayOfMonth+"/"+val.monthOfYear+"/"+val.year+""