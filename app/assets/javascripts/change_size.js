
$(document).ready(function() {
	$("#change-size.pagination li").click(function() {
		var size = $(this).attr('class');
		$(".company.window").each(function() {
			$(this).attr('class','company window');
			$(this).addClass('col-sm-' + size);
		});
	});
});




