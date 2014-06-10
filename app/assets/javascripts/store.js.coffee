$(document).on "ready page:load", ->
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()