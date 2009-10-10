$(document).ready(function() {

	// I'm on the outside
	hostname = window.location.hostname
	$("a[href^=http]")
		.not("a[href*='" + hostname + "']")
		.addClass('link external')
		.attr('target', '_blank');

  $('#nav_main li').each(function() {
 
    // Iterate over each with .qtip()
    $(this).qtip({
      show: { solo: true, ready: false, effect: { type: 'slide', length: 250 } },
      hide: { fixed: true, effect: { type: 'slide', length: 50 } },
      content: { text: $(this).find('.tooltip') },
      position: { adjust: { screen: true }, corner: { target: 'bottomLeft', tooltip: 'topLeft' } },
      style: { width: 300, padding: 15, background: '#333', color: 'white', border: { width: 1, color: '#333' } }
    });
 
  });
	
});