$(document).ready(function() {
	$('.demo-chosen-select').chosen();
	$('.demo-cs-multiselect').chosen({
		width: '100%'
	});
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#wrap').hide('fast');
			$('#blah').attr('src', e.target.result);
			$('#wrap').show('fast');
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$("#imgInp").change(function() {
	readURL(this);
});

$(document).ready(function() {
	$("form").submit(function(e) {
		return false;
	});
});