$(document).ready(function() {
	$('.btn-delete').click(function(e){
		e.preventDefault();

		var row = $(this).parents('tr');
		var id = row.data('id');
		var form = $('#form-delete');
		var url = form.attr('action').replace(':USER_ID', id);
		var data = form.serialize();

		bootbox.confirm(message, function(res){
			if (res == true) {
				
				$.post(url, data, function(result){
					if (result.removed == 1) {
						row.fadeOut();
						var totalUsers = $('#total').text();
						if ($.isNumeric(totalUsers)) {
							$('#total').text(totalUsers - 1);
						}else{
							$('#total').text(result.countUsers);
						}
					}
				});
			}else{
				//$('#message-danger').removeClass
			}
		}).fail(function(){
			alert('ERROR');
			row.show();
		});
	});
});