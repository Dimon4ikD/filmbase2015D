ready = ->
  $("[data-masked=date]").mask('99.99.9999')
  $("[data-masked=datetime]").mask('9999-99-99 99:99')
$(document).ready ready
$(document).on 'page:load', ready