# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  emailPattern = /// ^ #begin of line
    ([\w.-]+)         #one or more letters, numbers, _ . or -
    @                 #followed by an @ sign
    ([\w.-]+)         #then one or more letters, numbers, _ . or -
    \.                #followed by a period
    ([a-zA-Z.]{2,6})  #followed by 2 to 6 letters or periods
    $ ///i #end of line and ignore case

  numberOnlyPattern = /// ^ #begin of line
    ([^\d]+)
    $ ///i #end of line and ignore case



  $('.datepicker').datepicker(
  	{
  		autoclose: true
  		format: 'yyyy-mm-dd'
  	}
  )

  

  # This works!!
  #$( '.title' ).on "keyup", ->
  #  alert "Handler for .keyup() called."
  
  # This works!!
  #$( '.title' ).on "keyup", ->
  #  this.value = this.value.replace(numberOnlyPattern, '')

  $('#test_id').css('color', 'pink')

