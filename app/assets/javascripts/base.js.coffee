# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#tags').select2({
    placeholder: 'Add tags to your images',
    minimumInputLength: 1
    multiple: true
    ajax: #instead of writing the function to execute the request we use Select2's convenient helper
      url: '/categories'
      dataType: 'json'
      data: (term, page) ->
        q: term
      results: (data, page) ->
        results: data
    dropdownCssClass: "bigdrop"
  })
$(document).on('page:load', ->
  $('#tags').select2({
    placeholder: 'Add tags to your images',
    minimumInputLength: 1
    multiple: true
    ajax: #instead of writing the function to execute the request we use Select2's convenient helper
      url: '/categories'
      dataType: 'json'
      data: (term, page) ->
        q: term
      results: (data, page) ->
        results: data
    dropdownCssClass: "bigdrop"
  })
)

tags = $('#tags').select2({
  placeholder: 'Add tags to your images',
  minimumInputLength: 1
  multiple: true
  ajax: #instead of writing the function to execute the request we use Select2's convenient helper
    url: '/categories'
    dataType: 'json'
    data: (term, page) ->
      q: term
    results: (data, page) ->
      results: data
  dropdownCssClass: "bigdrop"
})