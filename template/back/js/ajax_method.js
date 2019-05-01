 
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

	
	  function other_delete(){
		  
	  }
	  function other_forms(){
	  }

	window.addEventListener("keydown", checkKeyPressed, false);
	 
	function checkKeyPressed(e) {
		if (e.keyCode == "13") {
			$(":focus").each(function() {
				if($(this).is('textarea') || $(this).closest('.form-group').find('textarea').length > 0){ 
				} else {
					if($(this).closest('.form-group').find('.bootstrap-tagsinput').length > 0){ 
					} else {
						e.preventDefault();
						$(this).closest('form').find('.enterer').click();
						$(this).closest('form').closest('.modal-content').find('.enterer').click();
					}
				}
			});
		}
	}
	
	$.ajaxPrefilter('script', function(options) { 
		options.cache = true; 
	});
	
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
				if(data !== ''){
					list.html('');
					list.html(data).fadeIn(); // fade in response data
				}
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
			        $('#demo-tp-textinput').timepicker({
			            minuteStep: 5,
			            showInputs: false,
			            disableFocus: true
			        });
			        
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

	

	$(document).ready(function() {
		if($('#lang_select').length){
		} else {
			ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+list_cont_func,'list','first');
		}
	});

	function ajax_modal(type,title,noty,form_id,id){
		modal_form(title,noty,form_id);
		ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+type+'/'+id,'form','form');
		sound('ajax_load');
	}

	function ajax_set_list(extra){
		ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+list_cont_func+'/'+extra,'list','first');
		sound('ajax_load');
	}

	function ajax_set_full(type,title,noty,form_id,id){
		//full_form(title,noty,form_id);
		ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+type+'/'+id,'list','form');
		sound('ajax_load');
	}

	$('#multi_dlt_btn').on('click', function(){
		var ids = $('#hidden_input').val();
		ajax_load(base_url+'index.php/'+user_type+'/'+module+'/multi_delete/'+ids,'list','delete');
	});



	function delete_confirm(id,msg){
		msg = '<div class="modal-title">'+msg+'</div>';
		bootbox.confirm(msg, function(result) {
			if (result) {
				ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+dlt_cont_func+'/'+id,'list','delete');
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-check',
					message : dss,
					container : 'floating',
					timer : 3000
				});
				sound('delete');
			}else{
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-minus',
					message : cncle,
					container : 'floating',
					timer : 3000
				});
				sound('cancelled');
			};
		});
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
				sound('done');
			} else {
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-minus',
					message : cncle,
					container : 'floating',
					timer : 3000
				});
				sound('cancelled');
			};

		});
	}



	function delete_img_confirm(id,msg){
		msg = '<div class="modal-title">'+msg+'</div>';
		bootbox.confirm(msg, function(result) {
			if (result) {
				ajax_load(base_url+'index.php/'+user_type+'/'+module+'/dlt_img/'+id,'list','delete');
				$.activeitNoty({
					type: 'success',
					icon : 'fa fa-check',
					message : dss,
					container : 'floating',
					timer : 3000
				});
				sound('delete');
			}else{
				$.activeitNoty({
					type: 'danger',
					icon : 'fa fa-minus',
					message : cncle,
					container : 'floating',
					timer : 3000
				});
				sound('cancelled');
			};

		});
	}

    $('#fol').on('click','.submitter', function(){

        //alert('vdv');
        var here = $(this); // alert div for show alert message
        var form = here.closest('form');
        var can = '';
		var ing = here.data('ing');
		var msg = here.data('msg');
		var prv = here.html();
		
		form.find('.summernotes').each(function() {
            var now = $(this);
            now.closest('div').find('.val').val(now.code());
        });
		
        //var form = $(this);
        var formdata = false;
        if (window.FormData){
            formdata = new FormData(form[0]);
        }

        var a = 0;
        var take = '';
        form.find(".required").each(function(){
       		var txt = '*'+req;
            a++;
            if(a == 1){
                take = 'scroll';
            }
            var here = $(this);
            if(here.val() == ''){
                if(!here.is('select')){
                    here.css({borderColor: 'red'});
                    if(here.attr('type') == 'number'){
                        txt = '*'+mbn;
                    }
                    
                    if(here.closest('div').find('.require_alert').length){

                    } else {
                        sound('form_submit_problem');
                        here.closest('div').append(''
                            +'  <span id="'+take+'" class="label label-danger require_alert" >'
                            +'      '+txt
                            +'  </span>'
                        );
                    }
                } else if(here.is('select')){
                    here.closest('div').find('.chosen-single').css({borderColor: 'red'});
                    if(here.closest('div').find('.require_alert').length){

                    } else {
                        sound('form_submit_problem');
                        here.closest('div').append(''
                            +'  <span id="'+take+'" class="label label-danger require_alert" >'
                            +'      *Required'
                            +'  </span>'
                        );
                    }

                }
                var topp = 100;

                $('html, body').animate({
                    scrollTop: $("#scroll").offset().top - topp
                }, 500);
                can = 'no';
            }

			if (here.attr('type') == 'email'){
				if(!isValidEmailAddress(here.val())){
					here.css({borderColor: 'red'});
					if(here.closest('div').find('.require_alert').length){
						
					} else {
						sound('form_submit_problem');
						here.closest('div').append(''
							+'  <span id="'+take+'" class="label label-danger require_alert" >'
							+'      *'+mbe
							+'  </span>'
						);
					}
					can = 'no';
				}
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
                    here.html(ing); // change submit button text
                },
                success: function() {
                    here.fadeIn();
                    here.html(prv)
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : msg,
                        container : 'floating',
                        timer : 3000
                    });
                    if($('body .slider_preview').length){
                    	ajax_set_list();
                    }
                },
                error: function(e) {
                    console.log(e)
                }
            });
        } else {
            sound('form_submit_problem');
            return false;
        }
    });


	function form_submit(form_id,noty,e){
		
		var alerta = $('#form'); // alert div for show alert message
		var form = $('#'+form_id);
		var can = '';
		if(!extra){
			var extra = '';
		}
		form.find('.summernotes').each(function() {
            var now = $(this);
            now.closest('div').find('.val').val(now.code());
        });
		
		//var form = $(this);
	    var formdata = false;
	    if (window.FormData){
	        formdata = new FormData(form[0]);
	    }

		var a = 0;
		var take = '';
		form.find(".required").each(function(){
			var txt = '*'+req;
            a++;
            if(a == 1){
                take = 'scroll';
            }
            var here = $(this);
            if(here.val() == ''){
                if(!here.is('select')){
                    here.css({borderColor: 'red'});
                    if(here.attr('type') == 'number'){
                        txt = '*'+mbn;
                    }
                    
                    if(here.closest('div').find('.require_alert').length){

                    } else {
                        sound('form_submit_problem');
                        here.closest('div').append(''
                            +'  <span id="'+take+'" class="label label-danger require_alert" >'
                            +'      '+txt
                            +'  </span>'
                        );
                    }
                } else if(here.is('select')){
                    here.closest('div').find('.chosen-single').css({borderColor: 'red'});
                    if(here.closest('div').find('.require_alert').length){

                    } else {
                        sound('form_submit_problem');
                        here.closest('div').append(''
                            +'  <span id="'+take+'" class="label label-danger require_alert" >'
                            +'      *Required'
                            +'  </span>'
                        );
                    }

                }
                var topp = 100;
                if(form_id == 'product_add' || form_id == 'product_edit'){
                } else {
	                $('html, body').animate({
	                    scrollTop: $("#scroll").offset().top - topp
	                }, 500);
                }
                can = 'no';
            }

			if (here.attr('type') == 'email'){
				if(!isValidEmailAddress(here.val())){
					here.css({borderColor: 'red'});
					if(here.closest('div').find('.require_alert').length){
	
					} else {
						sound('form_submit_problem');
						here.closest('div').append(''
							+'  <span id="'+take+'" class="require_alert" >'
							+'      *'+mbe
							+'  </span>'
						);
					}
					can = 'no';
				}
			}

			take = '';
		});

		if(can !== 'no'){
			if(form_id !== 'vendor_pay'){
				$.ajax({
					url: form.attr('action'), // form action url
					type: 'POST', // form submit method get/post
					dataType: 'html', // request type html/json/xml
					data: formdata ? formdata : form.serialize(), // serialize form data 
			        cache       : false,
			        contentType : false,
			        processData : false,
					beforeSend: function() {
						var buttonp = $('.enterer');
						buttonp.addClass('disabled');
						buttonp.html(working);
					},
					success: function() {
						ajax_load(base_url+'index.php/'+user_type+'/'+module+'/'+list_cont_func+'/'+extra,'list','first');
						if(form_id == 'vendor_approval'){
							noty = enb_ven;
						}
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : noty,
							container : 'floating',
							timer : 4000
						});
						$('.bootbox-close-button').click();
						('form_submit_success');
						other_forms();
					},
					error: function(e) {
						console.log(e)
					}
				});
			} else {
				//form.html('fff');
				form.submit();
				//alert('ff');
				return false;
			}
		} else {
			sound('form_submit_problem');
			if(form_id == 'product_add' || form_id == 'product_edit'){
				var ih = $('.require_alert').last().closest('.tab-pane').attr('id');
				$("[href=#"+ih+"]").click();
			}
			$('body').scrollTo('#scroll');
			return false;
		}
	}

	function modal_form(title,noty,form_id){
		bootbox.dialog({
			title: title,
			message:"<div id='form'></div>",
			buttons: {
				success: {
					label: sv,
					className: "btn-purple enterer",
					callback: function() {
						if(form_submit(form_id,noty) !== false){
							return false;
						} else {
							sound('form_submit_problem');
							return false;
						}
					}
				},
				danger: {
					label: cnl,
					className: "btn-dark",
					callback: function() {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-minus',
							message : 'Cancelled',
							container : 'floating',
							timer : 3000
						});
						sound('cancelled');
					}
				}
			}
		});
		sound('modal_opened');
	}

	$("body").on('change','.required',function(){
		var here = $(this);
		here.css({borderColor: '#dcdcdc'});
		if (here.attr('type') == 'email'){
			if(isValidEmailAddress(here.val())){
				here.closest('div').find('.require_alert').remove();
			}
		} else {
			here.closest('div').find('.require_alert').remove();
		}
		if(here.is('select')){
			here.closest('div').find('.chosen-single').css({borderColor: '#dcdcdc'});
		}
	});

	function isValidEmailAddress(emailAddress) {
		var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
		return pattern.test(emailAddress);
	};

	if(typeof set_switchery != 'function'){
		window.set_switchery = function(){
			if($('#prod').length){
				$(".sw1").each(function(){
					new Switchery(document.getElementById('pub_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#pub_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/product_publish_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'prod','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : ppus,
							container : 'floating',
							timer : 3000
						});
						setTimeout(function(){ ajax_set_list(); }, 500);
						sound('published');
					  } else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-check',
							message : pups,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
				$(".sw2").each(function(){
					new Switchery(document.getElementById('fet_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#fet_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/product_featured_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'prod','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : pfe,
							container : 'floating',
							timer : 3000
						});
						sound('featured');
					  } else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-check',
							message : pufe,
							container : 'floating',
							timer : 3000
						});
						sound('unfeatured');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
				$(".sw3").each(function(){
					new Switchery(document.getElementById('deal_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#deal_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/product_deal_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'prod','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : ptd,
							container : 'floating',
							timer : 3000
						});
						sound('featured');
					  } else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-check',
							message : ptnd,
							container : 'floating',
							timer : 3000
						});
						sound('unfeatured');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
			} else if($('#slid').length){
				$(".sw1").each(function(){
					new Switchery(document.getElementById('sli_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#sli_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/slider_publish_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'slid','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : spus,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-check',
							message : supus,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
			} else if($('#pag').length){
				$(".sw1").each(function(){
					new Switchery(document.getElementById('pag_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#pag_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/page_publish_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'pag','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : papus,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : paupus,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
			} else if($('#genset').length){
				$(".sw5").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/general_settings/'+set+'/'+changeCheckbox.checked,'site','others');
					  if(changeCheckbox.checked == true){
						if(set == 'g_login_set'){
							ntsen = glen;
							$('.g_log_ins').show('fast');
						}
						if(set == 'fb_login_set'){
							ntsen = flen;
							$('.fb_log_ins').show('fast');
						}
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : ntsen,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						if(set == 'g_login_set'){
							ntsds = glds;
							$('.g_log_ins').hide('fast');
						}
						if(set == 'fb_login_set'){
							ntsds = flds;
							$('.fb_log_ins').hide('fast');
						}
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : ntsds,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
				
				$(".sw4").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/general_settings/'+set+'/'+changeCheckbox.checked,'site','othersd');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : su_e,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : su_d,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
			} else if($('#business').length){
				$(".sw8").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  ajax_load(base_url+'index.php/'+user_type+'/business_settings/'+set+'/'+changeCheckbox.checked,'demo-home','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : pplen,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : pplds,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					};
				});
				$(".sw7").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  ajax_load(base_url+'index.php/'+user_type+'/business_settings/'+set+'/'+changeCheckbox.checked,'demo-home','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : c_e,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : c_d,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					};
				});
				$(".sw9").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  ajax_load(base_url+'index.php/'+user_type+'/business_settings/'+set+'/'+changeCheckbox.checked,'demo-home','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : c2_e,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : c2_d,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					};
				});
				$(".sw10").each(function(){
					var h = $(this);
					var id = h.attr('id');
					var set = h.data('set');
					new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#'+id);
					changeCheckbox.onchange = function() {
					  ajax_load(base_url+'index.php/'+user_type+'/business_settings/'+set+'/'+changeCheckbox.checked,'demo-home','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : vp_e,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type : 'danger',
							icon : 'fa fa-check',
							message : vp_d,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					};
				});
	
			} else if($('#coupn').length){
				$(".sw1").each(function(){
					new Switchery(document.getElementById('pub_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
					var changeCheckbox = document.querySelector('#pub_'+$(this).data('id'));
					changeCheckbox.onchange = function() {
					  //alert($(this).data('id'));
					  ajax_load(base_url+'index.php/'+user_type+'/'+module+'/publish_set/'+$(this).data('id')+'/'+changeCheckbox.checked,'prod','others');
					  if(changeCheckbox.checked == true){
						$.activeitNoty({
							type: 'success',
							icon : 'fa fa-check',
							message : enb,
							container : 'floating',
							timer : 3000
						});
						sound('published');
					  } else {
						$.activeitNoty({
							type: 'danger',
							icon : 'fa fa-check',
							message : dsb,
							container : 'floating',
							timer : 3000
						});
						sound('unpublished');
					  }
					  //alert(changeCheckbox.checked);
					};
				});
			} else if($('#vendr').length){
				$(".sw1").each(function(){
					new Switchery(document.getElementById('pub_'+$(this).data('id')), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77', size:'large'});
					var changeCheckbox = document.querySelector('#pub_'+$(this).data('id'));
				});
			}
		}
	}
	
	
	
	function FromHTML(from_id,name,o,w) {
		var pdf = new jsPDF(o, 'pt', 'letter')
		
		// source can be HTML-formatted string, or a reference
		// to an actual DOM element from which the text will be scraped.
		, source = $('#'+from_id)[0]

		// we support special element handlers. Register them with jQuery-style 
		// ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
		// There is no support for any other type of selectors 
		// (class, of compound) at this time.
		, specialElementHandlers = {
			// element with id of "bypass" - jQuery style selector
			'#bypassme': function(element, renderer){
				// true = "handled elsewhere, bypass text extraction"
				return true
			}
		}

		margins = {
	      top: 60,
	      bottom: 50,
	      left: 40,
	      right: 40,
	      width: w
	    };
	    // all coords and widths are in jsPDF instance's declared units
	    // 'inches' in this case
	    pdf.fromHTML(
	    	source // HTML string or DOM elem ref.
	    	, margins.left // x coord
	    	, margins.top // y coord
	    	, {
	    		'width': margins.width // max width of content on PDF
	    		, 'elementHandlers': specialElementHandlers
	    	},
	    	function (dispose) {
	    	  // dispose: object with X, Y of the last line add to the PDF 
	    	  //          this allow the insertion of new lines after html
				pdf.save(name+'.pdf');
				$('#export-title').hide();
				$('#export-table').hide();
	        },
	    	margins
	    )

		/*
		pdf.addHTML(document.getElementById(from_id),function() {
			var string = pdf.output('datauristring');
			$('.preview-pane').attr('src', string);
			//pdf.save(name+'.pdf');
		});
		*/
	}

	function FromaHTML(id,name,o){
		var pdf = new jsPDF(o,'px','a4');
		var options = {
	        pagesplit: true
	    };
		pdf.addHTML(document.getElementById(id),options,function() {
			var string = pdf.output('datauristring');
			$('.preview-pane').attr('src', string);
		});
		$('#export-title').show();
			pdf.save(name+'.pdf');
		setTimeout(function() {
			$('#export-title').hide();
			$('#export-table').hide();
		}, 100);
	}

	
	function export_it(type,ignore){
		$('#export-table').show();
		var name = $('#export-table').data('name');
		var o = $('#export-table').data('orientation');
		var w = $('#export-table').data('width');
		if(type == 'pdf'){
			//FromaHTML('export-div',name,o);
			FromHTML('export-div',name,o,w);
		} else {
			$('#export-table').tableExport({type:type,escape:'false',tableName:name,pdfFontSize:10,htmlContent:'true',ignoreColumn:'['+ignore+']'});
			$('#export-table').hide();
		}
	}
	
	//data-bb-handler="success"