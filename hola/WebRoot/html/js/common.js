//jquery
$(document).ready(function(){
  //下拉
  $('.nav_message').mouseenter(function(){
	$(this).find('dl').show();
  });
  $('.nav_message').mouseleave(function(){
	$(this).find('dl').hide();
  });
  
  //搜索提示
  $('.s_input').focus(function(){
	var val=$(this).val();
	if(val=='请输入嘉宾编号')
	$(this).val('');
  });
  $('.s_input').blur(function(){
	var val=$(this).val();
	if($.trim(val)=='')
	$(this).val('请输入嘉宾编号');
  });
  
  //提示2
  $('.text_iiii').focus(function(){
    $('.m_d_iiii').hide();
  });
  $('.m_d_iiii').click(function(){
	 $(this).hide();
	 $('.text_iiii').focus();
   });
  $('.text_iiii').blur(function(){
	var val=$(this).val();
	if($.trim(val)=='')
	$('.m_d_iiii').show();
  });
  
  //节目提示1
  $('.select_dl_ii').focus(function(){
	  $(this).parents('.select_dd').find('dd').show();
  });
  $('.select_dl_ii').blur(function(){
	  $(this).parents('.select_dd').find('dd').hide();
  });
  $('.select_dd dd').mouseenter(function(){
	$(this).addClass('sel_cur').siblings('dd').removeClass('sel_cur');
	$(this).siblings('dt').find('.select_dl_ii').val($(this).html());
  });
  
  //视频切换
  $('.m_gd_vdl dd').click(function(){
	 var video=$(this).find('a').attr('video');
	 $(this).addClass('m_gd_current').siblings('dd').removeClass('m_gd_current');
	 $('.video_obj').attr('value',video);
	 $('.video_embed').attr('src',video);
  });
  
  //加入收藏夹
	$(".keep a:eq(1)").click(function(){
		var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL';
		var href=location.href;
		if(document.all){
		window.external.addFavorite(href,'知名演艺嘉宾网') 
		} else if(window.sidebar) { 
		window.sidebar.addPanel('知名演艺嘉宾网','http://www.yyjiabin.com',"") 
		} else { 
		alert('添加失败\n您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~') 
		} 
	});
	//设为首页
	$('.keep a:first').click(function(){
		if (document.all) {
			document.body.style.behavior='url(#default#homepage)';
			document.body.setHomePage('http://www.yyjiabin.com');
			}else{
			alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!");
		}
	});
	
	//弹框0
	$('.yi').live('click',function(){
		$('.popup_box0').show();
	});
	$('.popup_box_xx').live('click',function(){
		$(this).parents('.popup_box').hide();
		$('.password').hide();
	});
	//弹框1
	$('.on').live('click',function(){
		$('.popup_box1').show();
	});
	//弹框2
	$('.ban').live('click',function(){
		$('.popup_box2').show();
	});
	
	
	//弹出下拉
	$('.po_rel').live('mouseenter',function(){
		$(this).find('dt').addClass('po_cur');
		$(this).find('dd').show();
	});
	$('.po_rel').live('mouseleave',function(){
		$(this).find('dt').removeClass('po_cur');
		$(this).find('dd').hide();
	});
	
	//输入密码
	$('.popup_box li a').live('click',function(){
		var this_x=$(this).offset().left;
		var this_y=$(this).offset().top+40;
		var html='<span class="password_po">请输入密码</span><input class="password_text" type="password" name="" value="" /><input class="password_btn" type="button" name="" value="确&nbsp;定" />';
		$('.password').show().css({'top':this_y+'px','left':this_x+'px'});
		$('.password').html(html);
	});
	$('.password_po').live('click',function(){
	   var password_text=$('.password_text').val();
	   $(this).hide();
	   $(this).siblings('.password_text').focus();
	});
	$('.password_text').live('blur',function(){
	   var password_text=$.trim($(this).val());
	   if(password_text=='')
	   {
		  $('.password_po').show(); 
	   }
	});
	$('.password_btn').live('click',function(){
		$('.password').hide();
	});

});