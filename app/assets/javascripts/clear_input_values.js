
$(document).ready(function() {

	function endsWith(str, suffix) {
		return str.indexOf(suffix, str.length - suffix.length) !== -1;
	}

	$("input").focus(function() {
		var txt = $(this).val();
		console.log(txt);
		if (
			endsWith(txt, '...')
		) {
			$(this).val('');
		}
	});


});

