jQuery ->
  $('#popup').live('click', -> $('#popup').addClass('hidden'))
  $('.form').live('click', -> (e) e.stopPropagation())