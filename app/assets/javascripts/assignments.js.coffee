# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#assignment_stock_card_sku').autocomplete
    source: $('#assignment_stock_card_sku').data('autocomplete-source')