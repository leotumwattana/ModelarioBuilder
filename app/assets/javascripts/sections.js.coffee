# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.section .title').toggle( 
    -> $('#'+this.id+'_menu').removeClass('hidden'),
    -> $('#'+this.id+'_menu').addClass('hidden'));

# also moved below code to sections/new.js.erb & sections/edit.js.erb for ajax forms
jQuery ->
  $('#section_sku_tokens').tokenInput('/stock_cards.json', { 
    crossDomain: false,
    theme: 'facebook'
    prePopulate: $('#section_sku_tokens').data('pre')
  });
  
jQuery ->
  $('section div.title').each (index, ele) ->
    $(this).css('width', $(this).parent().height())
  # $('section div.section_menu').each (index, ele) ->
  #   $(this).css('height', $(this).parent().height())