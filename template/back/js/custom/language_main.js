function other_forms(){
	get_selector();
}

function get_selector(){
	ajax_load(base_url+'index.php/'+user_type+'/'+module+'/lang_select/','lang_select','none');
}
$(document).ready(function() {
	//get_selector();
	ajax_set_list(set_lang);
});

function delete_lang(lang){
	dlt_cont_func = 'dlt_lang';
	delete_confirm(lang,dlt_txt);
}

function other_delete(){
	get_selector();
}

$('#list').on('click','.submittera', function(){
	var here = $(this); // alert div for show alert message
	var fid = here.data('wid');
	var form = $('#'+fid);
	var formdata = false;
	if (window.FormData){
		formdata = new FormData(form[0]);
	}
	$.ajax({
		url: form.attr('action'), // form action url
		type: 'POST', // form submit method get/post
		dataType: 'html', // request type html/json/xml
		data: formdata ? formdata : form.serialize(), // serialize form data 
		cache       : false,
		contentType : false,
		processData : false,
		beforeSend: function() {
			here.html(saving); // change submit button text
		},
		success: function() {
			here.fadeIn();
			here.html('Save');
			$.activeitNoty({
				type: 'success',
				icon : 'fa fa-check',
				message : upd_txt,
				container : 'floating',
				timer : 3000
			});
		},
		error: function(e) {
			console.log(e)
		}
	});
});

$(document).ready(function() {
	$("form").submit(function(e){
		return false;
	});
});