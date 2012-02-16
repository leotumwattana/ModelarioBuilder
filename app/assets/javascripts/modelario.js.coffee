# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Sorting and event handling for stock_card items
jQuery ->
  
  # For stock card sorting
  $('div.modelario').delegate('.section', 'sortstop', (event, ui) -> 
    item_type = $(ui.item).attr('id').split('_')[0]
    assignment_update_url = $('div.modelario').data('assignment-update-url')
    
    if item_type == "assignment"
      $.post(assignment_update_url, {section_id: this.id, assignment_id: $(ui.item).attr('id').split('_')[1], position: ui.item.index()})
      event.stopImmediatePropagation()
  )
  
  # For sorting root sections
  $('div.modelario').delegate('.sections_sortable', 'sortstop', (event, ui) ->
    item_type = $(ui.item).attr('id').split('_')[0]
    section_update_path = $('div.modelario').data('sections-update-url')
    
    if item_type == "section"
      section_id = $(ui.item).attr('id').split('_')[1]
      section_position = ui.item.index()
      parent_section_id = $(ui.item).parent('ul').attr('class')
      
      alert(parent_section_id)
      # Send to section_update_url
        # section_id
        # position as ui.item.index()
        # parent_section_id if any
  )

  #$('body').delegate('.section', 'sortstop', (event, ui) ->
  #  item_type = $(ui.item).attr('id').split('_')[0]
  #  
  #  if item_type == "assignment"
  #    $.post($(this).data('assignment-update-url'), {section_id: this.id, assignment_id: $(ui.item).attr('id').split('_')[1], position: ui.item.index()})
  #  event.stopImmediatePropagation())
    
  $('.sortable').sortable(handle: '.move', connectWith: '.sortable')
  
jQuery ->
  $('.resizable').resizable()
  $('div.section').resizable()

  $('div.section').each( (index, section) ->
    section_height = $(section).height()
    $(section).children('.title').children('span').width(section_height).css('text-align','center'))

  $('div.section').bind('resize', ->
    $(this).children('.title').width($(this).height()))

# Sorting and event handling for sections
jQuery ->
  $('.vertical_sortable').sortable(axis: 'y')
  $('.sections_sortable').sortable(axis: 'y', items: 'li', handle: '.title')