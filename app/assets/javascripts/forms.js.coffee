window.show_form = (snippet) ->
  $('#popup').html(snippet)
  $('#popup section.form').hide()
  $('#popup').fadeIn 'fast', ->
    $('#popup section.form').slideDown('fast')
  
  # Should I remove this out?
  $('#section_sku_tokens').tokenInput('/stock_cards.json', { 
    crossDomain: false,
    theme: 'facebook',
    prePopulate: $('#section_sku_tokens').data('pre')
  })

window.hide_form = ->
  $('#popup section.form').slideUp('fast', ->
    $('#popup').fadeOut('fast'))

# Set bindings so #popup will hide the form and also ignore clicks on the actual form area
jQuery ->
  $('#popup').click(-> hide_form())
  $('#popup').delegate('section.form', 'click', -> (e) e.stopPropagation())