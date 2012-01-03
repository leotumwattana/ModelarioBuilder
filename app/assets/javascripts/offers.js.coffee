# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

offers_check_boxes = '.offers input[type="checkbox"]'

jQuery ->
  $('#offer_button').toggle(show_offers, hide_offers)
  
  $(offers_check_boxes).change( ->
    $(offers_check_boxes).each (index, element) ->
      unhighlight(element.id)
    $(offers_check_boxes).each (index, element) ->
      if $('#'+element.id).is(':checked')
        highlight(element.id)
  );
  
  
highlight = (c) ->
  $('.' + c).addClass('highlight');

unhighlight = (c) ->
  $('.' + c).removeClass('highlight');
  
show_offers = ->
  $('.offers').slideDown('fast');
  $('.offers').removeClass('hidden');
  
hide_offers = ->
  $('.offers').slideUp('fast');
  $('.offers').addClass('hidden');