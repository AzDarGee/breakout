# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
	$('#checkbox1').on('toggle', ->
		# $.post('/topics/2/like').then((data) ->
		#   # do stuff with the data returned from the POST
		# )
		
	)

$(document).on('ready page:load', initialize)