// Buttons.js
// ====================================================================
// ====================================================================
// - ThemeOn.net -


$(document).ready(function(){



	// STATE BUTTON
	// =================================================================
	// Require Bootstrap Button
	// -----------------------------------------------------------------
	// http://getbootstrap.com/javascript/#buttons
	// =================================================================
	$('#demo-state-btn').on('click', function () {
		var btn = $(this).button('loading')
		// business logic...

		var doSomething = setTimeout(function(){
			clearTimeout(doSomething);
			btn.button('reset')
		}, 3000);
	});



});
