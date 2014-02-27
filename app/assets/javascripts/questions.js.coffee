# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "click", "form .add_fields", ->
  time  = new Date().getTime()
  regex = new RegExp($(this).data("id"), "g")
  item_fields_html = $(this).data("field-html").replace(regex, time)
  $(this).before(item_fields_html)