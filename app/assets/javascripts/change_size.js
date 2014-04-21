
$(document).ready(function() {
	$("#change-size.pagination li").click(function() {
		event.preventDefault();
		var size = $(this).attr('class');
		$(".company.window").each(function() {
			console.log($(this));
			$(this).attr('class','company window');
			$(this).addClass('col-sm-' + size);
		});
	});
});




