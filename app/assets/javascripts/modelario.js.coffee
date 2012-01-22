# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.sortable').sortable(
    handle: '.move'
    connectWith: '.sortable'
    update: ->
      #$.post($(this).data('update-url'), $(this).sortable('serialize'))
  );
  $('.vertical_sortable').sortable(
    axis: 'y'
    update: ->
      #$.post($(this).data('update-url'), $(this).sortable('serialize'))
  );

jQuery ->
  $('.resizable').resizable()
  $('div.section').resizable()
  
  $('div.section').each( (index, section) ->
    section_height = $(section).height()
    $(section).children('.title').children('span').width(section_height).css('text-align','center')
  )

  $('div.section').bind('resize', ->
    $('div.section').each( (index, section) ->
      section_height = $(section).height()
      $(section).children('.title').children('span').width(section_height).css('text-align','center')
    ))