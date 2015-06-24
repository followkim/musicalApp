function SetUpListeners() {
	$(".ShowHideButton").each(function() {
			$(this).on("click", function(){

				var nextRow = $(this).closest('tr').next();
				var clickButton = $(this);

				if (nextRow.is(":visible")) {
					nextRow.hide();
					$(this).attr ('src', '/assets/expand.png');
					$(this).attr ('alt', '+');
				} else {
					nextRow.show();
					$(this).attr ('src', '/assets/collapse.png');
					$(this).attr ('alt', '-');
				}
		});
	});
}
