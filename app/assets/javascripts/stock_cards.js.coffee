# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#photo_sku').live('change',
    ->
      sku = $('#photo_sku').val()
      zango_path = getZangoPath(sku)
      $('.zango_photo_path').val(zango_path)
      $('.photo').attr('src', zango_path)
  )
  $('#stock_card_sku').live('change',
    ->
      $('#photo_sku').val($('#stock_card_sku').val()).trigger('change')
  )
  
jQuery ->
  $('.stock_card').mouseenter( -> show_overlay(this.id))
  $('.stock_card').mouseleave( -> hide_overlay(this.id))

hide_overlay = (id) ->
  $('#'+id+' .overlay').addClass('hidden')

show_overlay = (id) ->
  $('#'+id+' .overlay').removeClass('hidden')

# Need to make this more robust...so that it can loop through and find an image that really exists...etc
getZangoPath = (sku) ->
  zango_path = 'http://zango.vuitton.lvmh/website/media/prod_image/' + sku + '/S000' + sku + '00N0.jpg'