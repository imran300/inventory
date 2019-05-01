
	var height = $( window ).height();
	var f_h = height/5;
	var loading = '<div style="height:'+height+'px; width:100%;">'
				  +'<div class="spinner" style="top:'+f_h+'px;position:relative;">'
				  +'<div class="rect1"></div>'
				  +'  <div class="rect2"></div>'
				  +'  <div class="rect3"></div>'
				  +'  <div class="rect4"></div>'
				  +'  <div class="rect5"></div>'
				  +'</div>';
				  +'</div>';


	function ajax_load(url,id,type){
		var list = $('#'+id);
		$.ajax({
			url: url, // form action url
    		cache: false,
        	dataType: "html",
			beforeSend: function() {
				//list.fadeOut();
				if(type !== 'other'){
					list.html(loading); // change submit button text
				}
			},
			success: function(data) {
				list.html('');
				list.html(data).fadeIn(); // fade in response data
				if(type == 'first'){
					$('#demo-table').bootstrapTable();
					set_switchery();
					$('#demo-table img').each(function() {
						if($(this).attr('src') !== ''){
							if($(this).data('im') !== 'fb'){
						    	$(this).attr('src', $(this).attr('src')+'?random='+new Date().getTime());
							}
						}
					});
				} else if(type=='form') {
					//reloadStylesheets();
					
			        
				} else if(type=='delete') {
					ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+list_cont_func,'list','first');
					other_delete();
				} else if(type=='other') {
					other();
				} else {

				}
			},
			error: function(e) {
				console.log(e)
			}
		});
	}



	function reloadStylesheets() {
	    var queryString = '?reload=' + new Date().getTime();
	    $('link').each(function () {
	        this.href = this.href.replace(/\?.*|$/, queryString);
	    });
	    $('script').each(function () {
	        this.src = this.src.replace(/\?.*|$/, queryString);
	    });

	}

	

	function ajax_modal(type,title,noty,form_id,id){
		modal_form(title,noty,form_id);
		ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+type+'/'+id,'form','form');
	}
	
	function other_confirm(func,id,msg,noty){
		msg = '<div class="modal-title">'+msg+'</div>';
		bootbox.confirm(msg, function(result) {
			if (result) {
				ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+func+'/'+id,'list','delete');
				$.activeitNoty({
					type: 'success',
					icon : 'fa fa-check',
					message : noty,
					container : 'floating',
					timer : 3000
				});
			} else {
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-minus',
					message : cancdd,
					container : 'floating',
					timer : 3000
				});
			};

		});
	}




	function form_submit(form_id){
		var alert = $('#form'); // alert div for show alert message
		var form = $('#'+form_id);
		var can = '';
		if(!extra){
			var extra = '';
		}
		//var form = $(this);
	    var formdata = false;
	    if (window.FormData){
	        formdata = new FormData(form[0]);
	    }

		var a = 0;
		var take = '';
		$(".required").each(function(){
			a++;
			if(a == 1){
				take = 'scroll';
			}
			var here = $(this);
			if(here.val() == ''){
				if(!here.is('select')){
				    here.css({borderColor: 'red'});
				    if(here.closest('div').find('.require_alert').length){

				    } else {
					    here.closest('div').append(''
							+'	<span id="'+take+'" style="color:red;" class="require_alert label label-danger" >'
							+'		* '+req
							+'	</span>'
						);
					}
				} else if(here.is('select')){
					here.closest('div').find('.chosen-single').css({borderColor: 'red'});
				    if(here.closest('div').find('.require_alert').length){

				    } else {
					    here.closest('div').append(''
							+'	<span id="'+take+'" style="color:red;" class="require_alert label label-danger" >'
							+'		* '+req
							+'	</span>'
						);
					}

				}
				var topp = 100;
				if($('body').find('.modal-footer').length){
					alert('for nothing');
					topp = 0;
				}

				$('html, body').animate({
			        scrollTop: $("#scroll").offset().top - topp
			    }, 500);
				can = 'no';
			}
			take = '';
		});

		if(can !== 'no'){
			$.ajax({
				url: form.attr('action'), // form action url
				type: 'POST', // form submit method get/post
				dataType: 'html', // request type html/json/xml
				data: formdata ? formdata : form.serialize(), // serialize form data 
		        cache       : false,
		        contentType : false,
		        processData : false,
				beforeSend: function() {
					if(form_id == 'login'){
						$('.snbtn').html(sing); // change submit button text
					}
				},
				success: function(data) {
					if(data == 'email_sent'){
						$.activeitNoty({
							type: 'purple',
							icon : 'fa fa-check',
							message : nps,
							container : 'floating',
							timer : 4000
						});
					} else if(data == 'login_failed'){
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-times',
							message : lfil,
							container : 'floating',
							timer : 4000
						});
						$('.snbtn').html('SIGN IN');
					} else if(data == 'email_nay'){
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-times',
							message : wrem,
							container : 'floating',
							timer : 4000
						});						
					} else if(data == 'unapproved'){
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-times',
							message : unapproved,
							container : 'floating',
							timer : 4000
						});			
						$('.snbtn').html('SIGN IN');			
					} else if(data == 'lets_login'){
						location.replace(base_url+'index.php/'+user_type);
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : lss,
							container : 'floating',
							timer : 3000
						});	
						$('.snbtn').html(sucss);
						//setTimeout( function(){ 
							//window.location.href=base_url+'index.php/admin';
						//}
						//, 1 );			
					} else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-times',
							message : data,
							container : 'floating',
							timer : 4000
						});	
					}
				},
				error: function(e) {
					console.log(e)
				}
			});
		} else {
			return false;
		}
	}

	function modal_form(title,noty,form_id){
		bootbox.dialog({
			title: title,
			message:"<div id='form'></div>",
			buttons: {
				success: {
					label: rpss,
					className: "btn-success snbtn_modal",
					callback: function() {
						if(form_submit(form_id,noty) !== false){
						} else {
							return false;
						}
					}
				},
				danger: {
					label: "cancel",
					className: "btn-dark",
					callback: function() {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-minus',
							message : cancdd,
							container : 'floating',
							timer : 3000
						});
					}
				}
			}
		});
	}
