
	
	$(document).ready(function() {
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({
			width: '100%'
		});
		set_summer();
	});
	
	function set_summer(){
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
			if(now.closest('div').find('.val').length == 0){
            	now.closest('div').append('<input type="hidden" class="val" name="'+n+'">');
			}
            now.summernote({
                height: h,
                onChange: function() {
                    now.closest('div').find('.val').val(now.code());
                }
            });
            now.closest('div').find('.val').val(now.code());
        });
	}
	
	$('#curr_n_i').on('keyup', function() {
		$('#curr_n_s').html($('#curr_n_i').val());
	});
	
	$('#curr_s_i').on('keyup', function() {
		$('#curr_s_s').html($('#curr_s_i').val());
	});
	
	$(document).ready(function() {
		$("form").submit(function(e) {
			//return false;
		});
	});