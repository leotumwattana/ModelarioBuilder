# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.section').live('sortstop', (event, ui) -> 
    $.post($(this).data('assignment-update-url'), {section_id: this.id, assignment_id: $(ui.item).attr('id').split('_')[1], position: ui.item.index()})
    event.stopImmediatePropagation())
  $('.sortable').sortable(handle: '.move', connectWith: '.sortable')
  $('.vertical_sortable').sortable(axis: 'y')
  $('.sections_sortable').sortable(axis: 'y', items: 'li', handle: '.title')
  
jQuery ->
  $('.resizable').resizable()
  $('div.section').resizable()

  $('div.section').each( (index, section) ->
    section_height = $(section).height()
    $(section).children('.title').children('span').width(section_height).css('text-align','center'))

  $('div.section').bind('resize', ->
    $(this).children('.title').width($(this).height()))