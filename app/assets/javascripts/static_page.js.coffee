# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#tags').select2({
    placeholder: 'Add tags to your images'
  })
$(document).on('page:load', ->
  $('#tags').select2({
    placeholder: 'Add tags to your images'
  })
)