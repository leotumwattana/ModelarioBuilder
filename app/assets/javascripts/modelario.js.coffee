# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.sortable').sortable(
    handle: '.move'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  );
  $('.vertical_sortable').sortable(
    axis: 'y'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  );

jQuery ->
	$('.resizable').resizable();
	$('div.section').resizable();
	
	$('div.section').each( (index, section) ->
		section_height = $(section).height()
		$(section).children('.title').children('span').width(section_height).css('text-align','center')
	);
		
	$('div.section').bind('resize', ->
		$('div.section').each( (index, section) ->
			section_height = $(section).height()
			$(section).children('.title').children('span').width(section_height).css('text-align','center')
		);
		
		#section.children('.title').children('span').width(section_height).css('margin-left','-'+section_height/2.34+'px')#.css('-webkit-transform','rotate(-90deg) translate(-'+section_height/100+'px, -'+0+'px)')
		#alert(section_height)
	);
	
	#$('.section').bind('resize', -> $(this).find('span').width($(this).height()).css('-webkit-transform','rotate(-90deg) translate('+$(this).height/100+'px, -'+$(this).height()/3+'px)'))
	#$('.section span').css('-webkit-transform','rotate(-90deg) translate(0px, -'++'px)');
	
	# height = $('.section').height();
	# 	$('.section span').each( (index, item) -> 
	# 		$(item).width()
	# 	);
	#$('.section span').css('-webkit-transform','rotate(-90deg) translateX(-'+h/2+'px)');
	
	
	
#	-webkit-transform: rotate(-90deg);