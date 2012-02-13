//JavaScript Document
//jquery
$(document).ready(function(){
	//图类点击切换大小图
  $(".img_small_tu").click(function(){
     $(this).parent().css("display","none");
	 $(this).parent().siblings(".img_big").css("display","block");
  });
  $(".img_big_tu").click(function(){
     $(this).parent().css("display","none");
	 $(this).parent().siblings(".img_small").css("display","block");
	 $(this).parents("div:eq(2)").siblings(".trend_username").focus();
  });
   //文类点击切换大小图
   $(".wen_trend img").click(function(){
     $(this).css("display","none");
	 $(this).parents("div:eq(0)").siblings(".wen_img").css("display","block");
  });
  $(".wen_img_tu").click(function(){
     $(this).parent().css("display","none");
	  $(this).parents("div:eq(0)").siblings(".wen_trend").find("img").css("display","block");
  });
   //音乐类点击切换大小图
  $(".music_trend_tu").click(function(){
     $(this).css("display","none");
	 $(this).parent().siblings(".music").css("display","block");
	 $(this).siblings(".music_trend_mus").css("margin-right","135px");
  });
  $(".mus").click(function(){
     $(this).parent().css("display","none");
	 $(this).parent().siblings(".music_trend").find(".music_trend_tu").css("display","block");
	 $(this).parent().siblings(".music_trend").find(".music_trend_mus").css("margin-right","0px");
  });
  $(".music_trend_off").click(function(){
     var music="";
	 music+='<object width="257" height="33" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0">';
	 music+='<param name="movie" value="http://img.xiami.com/widget/0_1769031426_/singlePlayer.swf">';
	 music+='<param name="wmode" value="transparent">';
	 music+='<param name="quality" value="high">';
	 music+='<embed width="257" height="33" src="http://img.xiami.com/widget/0_1769031426_/singlePlayer.swf" menu="false" wmode="transparent" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash">';
	 music+='</embed>';
	 music+='</object>';
     $(this).css("display","none");
	 $(this).siblings(".music-xiami-flash").css("display","block");
	 $(this).siblings(".music-xiami-flash").append(music);
  });
  //视频类点击切换大小图
  
  $(".video_trend_tu").click(function(){
  var flash="";
  flash+='<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="500" height="417">';
  flash+='<param name="movie" value="http://player.youku.com/player.php/sid/XMTAzMTcxMDQ=/v.swf&amp;isAutoPlay=true">';
  flash+='<param name="quality" value="high"> ';
  flash+='<param name="wmode" value="transparent"> ';
  flash+='<param name="menu" value="false"> ';
  flash+='<embed src="http://player.youku.com/player.php/sid/XMTAzMTcxMDQ=/v.swf&amp;isAutoPlay=true" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="500" height="417" quality="High" wmode="transparent">';
  flash+='</embed>';
  flash+='</object>';
     $(this).css("display","none");
	 $(this).parent().siblings(".video_full").css("display","block");
	 $(this).parent().siblings(".video_full").find(".video-full-play").append(flash);
  });
  $(".video_to_off").click(function(){
	 $(this).parents("div:eq(1)").css("display","none");
	 $(this).parent().siblings(".video-full-play").empty();
	 $(this).parents("div:eq(1)").siblings(".video_trend").find(".video_trend_tu").css("display","block");
  });

	//评论出现消失循环
  $(".reply").click(function(){
     $(this).parents().siblings(".response").toggle();
	 $(this).parents().siblings(".discuss_list").toggle();
	 $(this).parents("div:eq(1)").siblings(".response").focus();
  });
  
  //喜欢循环
  $(".love_off").click(function(){
     $(this).toggleClass("love_on");
  });
	
	 //变底色
  $(".feed").mouseover(function(){
     $(this).css("background","#fff");
  });
  $(".feed").mouseout(function(){
	 $(this).css("background","#fff");
  });
	
	//点xx删除
  $(".xx").click(function(){
	 $(this).parents("div:eq(4)").fadeOut("normal");
  });
  
  
  //展示收缩效果
 // $(".community_name").click(function(){
 //    $(".community_date").slideToggle("normal");
 // });
  
   //展示收缩效果2
  $(".info_name").click(function(){
     $(this).siblings(".info_main").slideToggle("fast");
  });
  
   //变底色
  $(".dl").mouseover(function(){
     $(this).css("background","#e5f5f8");
  });
  $(".dl").mouseout(function(){
	 $(this).css("background","#e2e4e7");
  });
  
  //回复不能为空
  $(".r_button").click(function(){
	var dis=$(this).siblings(".r_text").val();
	dis = dis.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
   if(dis=="")
	{ 
	//alert("评论不能为空！");
	$(this).siblings(".r_text").val('');
	}
	else{$(this).siblings(".r_text").val("");$(this).siblings(".r_text").hide();$(this).hide();}
  });
  //回复变背景
  $(".r_button").mouseover(function(){
	$(this).addClass("r_button_on");
  });
  $(".r_button").mouseout(function(){
	$(this).removeClass("r_button_on");
  });
  
  //点击输入框文字消失离开又出现（主页）
$("input[focucm]") .each (function(){
$(this).val($(this).attr("focucm"));
$(this).focus(function(){
if($(this).val() == $(this).attr("focucm"))
{
$(this).val('');
$(this).val('').css("color","#085458");
}
});
$(this).blur(function(){
if(!$(this).val()){
$(this).val($(this).attr("focucm"));
$(this).val($(this).attr("focucm")).css("color","#6A888B");
}
});
});


  //点击输入框文字消失离开又出现
$("textarea,input[focucmsg]") .each (function(){
$(this).val($(this).attr("focucmsg"));
$(this).focus(function(){
if($(this).val() == $(this).attr("focucmsg"))
{
$(this).val('');
$(this).val('').css("color","#000");
}
});
$(this).blur(function(){
if(!$(this).val()){
$(this).val($(this).attr("focucmsg"));
$(this).val($(this).attr("focucmsg")).css("color","#999");
}
});
});
  //点击输入框文字消失离开又出现(注册)
$("input[focucms]") .each (function(){
$(this).val($(this).attr("focucmsg"));
$(this).focus(function(){
if($(this).val() == $(this).attr("focucms"))
{
$(this).val('');
$(this).val('').css("color","#48c1cc");
}
});
$(this).blur(function(){
if(!$(this).val()){
$(this).val($(this).attr("focucms"));
$(this).val($(this).attr("focucms")).css("color","#48c1cc");
}
});
});
  
  //搜索判断是否为空或者为初始值
  $(".search_but").focus(function(){
	var dis=$(".text_sewrch").val();
	dis = dis.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
    if(dis==""|| dis=="搜索博客/人/小区/商家")
	{
	  $(this).siblings(".inp_prompt").css("display","block");
	  $(this).parent().addClass("search_bg");
	}
  });
 $(".search_but").blur(function(){
	$(this).siblings(".inp_prompt").css("display","none");
	$(this).parent().removeClass("search_bg");
  });
 $(".tag_but").focus(function(){
	var dis=$(".tag_text").val();
	dis = dis.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
    if(dis==""|| dis=="搜索标签" || dis=="搜索标签/感兴趣的内容")
	{
	  $(this).siblings(".tag_pr").find(".tag_prompt").css("display","block");
	  $(this).parent().addClass("tag_bg");
	}
  });
  $(".tag_but").blur(function(){
	$(this).siblings(".tag_pr").find(".tag_prompt").css("display","none");
	$(this).parent().removeClass("tag_bg");
  });

  //偶数dd背景变蓝色
  $(".hot_label dl>dd:odd").css("background","#f2f5f5");
  
  //点击关注再点击取消关注
  $(".blog_attention span").click(function(){
     $(this).toggleClass("att_on");
  });



 var _wrap=$('ul.find_frame1');//定义滚动区域  
     var _interval=4000;//定义滚动间隙时间  
     var _moving;//需要清除的动画  
     _wrap.hover(function(){  
         clearInterval(_moving);//当鼠标在滚动区域中时,停止滚动  
     },function(){  
         _moving=setInterval(function(){  
             var _field=_wrap.find('li:first');//此变量不可放置于函数起始处,li:first取值是变化的  
             var _h=_field.height();//取得每次滚动高度(多行滚动情况下,此变量不可置于开始处,否则会有间隔时长延时)  
             _field.animate({marginTop:-_h+'px'},600,function(){//通过取负margin值,隐藏第一行  
                _field.css('marginTop',0).appendTo(_wrap);//隐藏后,将该行的margin值置零,并插入到最后,实现无缝滚动  
             })  
         },_interval)//滚动间隔时间取决于_interval  
     }).trigger('mouseleave');//函数载入时,模拟执行mouseleave,即自动滚动  
  
  //点击出现(随便看看)
  $(".l_grey").click(function(){
     $("#box_1").css("display","block");
	 $("#box_2").css("display","none");
	 $("#box_3").css("display","none");
	 $(this).css("background","#e2e4e7");
	 $(".l_wgrey").css("background","none");
	 $(".l_white").css("background","none");
  });
  $(".l_wgrey").click(function(){
     $("#box_2").css("display","block");
	 $("#box_1").css("display","none");
	 $("#box_3").css("display","none");
	 $(this).css("background","#e2e4e7");
	 $(".l_grey").css("background","none");
	 $(".l_white").css("background","none");
  });
   $(".l_white").click(function(){
     $("#box_3").css("display","block");
	 $("#box_1").css("display","none");
	 $("#box_2").css("display","none");
	 $(this).css("background","#e2e4e7");
	 $(".l_wgrey").css("background","none");
	 $(".l_grey").css("background","none");
  });
  
  //点击remove
  $(".video_xx").click(function(){
     $(this).parent().remove();
  });
  
  //上传照片后加标签
  $(".img_tag_text").one("focus",function(){
   $(this).val("");
   $(this).css("color","#000");
   $(this).siblings(".img_tag_text").remove();
  });
  $(".img_tag_text").bind("keydown",function(event){
  var key= $(this).val();
  key = key.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
  var x="x";
  if(event.keyCode==13 && key!=="" || event.keyCode==32 && key!=="")
  {
  $(this).siblings(".img_add_tagmain").find(".xie").append('<li><span>'+key+'</span><a href="#none" class="li">'+x+'</a></li>');
  $(this).val("");
    $(".li").click(function(){
    $(this).parent().detach();
    });
  }
  });
  
  //发布页加标签
  $(".add_tag_text").one("focus",function(){
   $(this).val("");
   $(this).css("color","#000");
  });

  $(".add_tag_text").bind("keydown",function(event){
  var key= $(this).val();
  key = key.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
  var x="x";
  if(event.keyCode==13 && key!=="" || event.keyCode==32 && key!=="")
  {
  $(this).siblings(".add_tagmain").find(".xie").append('<li><span>'+key+'</span><a href="#none" class="li">'+x+'</a></li>');
  $(this).val("");
    $(".li").click(function(){
    $(this).parent().detach();
    });
  }
  });
  
  //点击默认文字消失改变输入字体颜色
  $(".video_depict_main").one("focus",function(){
   $(this).html("");
   $(this).css("color","#000");
  });
  
  //点击背景图片变掉（搜索及黑名单）
  $(".black_input").mouseover(function(){
	$(this).addClass("b_bg");
  });
   $(".black_input").mouseout(function(){
	$(this).removeClass("b_bg");
  });
  $(".tag_text").focus(function(){
	$(this).parent().addClass("tag_bg");
	$(this).siblings(".tag_pr").find(".tag_prompt").css("display","block");
  });
   $(".tag_text").blur(function(){
	$(this).parent().removeClass("tag_bg");
	$(this).siblings(".tag_pr").find(".tag_prompt").css("display","none");
  }); 
   $(".text_sewrch").focus(function(){
	$(this).parent().addClass("search_bg");
	$(this).siblings(".inp_prompt").css("display","block");
  });
   $(".text_sewrch").blur(function(){
	$(this).parent().removeClass("search_bg");
	$(this).siblings(".inp_prompt").css("display","none");
  });
 
   
   //点击背景图片变掉(会员设置)
  $(".sii").mouseover(function(){
	$(this).addClass("b_bg")
  });
   $(".sii").mouseout(function(){
	$(this).removeClass("b_bg")
  });
   $(".sdd").mouseover(function(){
	$(this).addClass("site_ddbg")
  });
   $(".sdd").mouseout(function(){
	$(this).removeClass("site_ddbg")
  });
   $(".address_input").one("focus",function(){
   $(this).val("");
   $(this).css("color","#000");
  });
   
    //点击变背景颜色字体颜色（邀请列表）
  $(".in").mouseover(function(){
	$(this).addClass("input_bg")
  });
   $(".in").mouseout(function(){
	$(this).removeClass("input_bg")
  });
   
   //关注与取消关注点击消失
  $(".per_but").click(function(){
     $(this).parent().fadeOut("normal");
   });
  
   //屏蔽消失
  $(".per_list3").click(function(){
     $(this).parents("div:eq(0)").remove();
   });
   $(".letter_off").click(function(){
     $(this).parents("div:eq(1)").remove();
   });
   
   //删除
    $(".letter_del").click(function(){
     $(this).parents("div:eq(1)").fadeOut("normal");
   });
	
	//发送私信对话框
	$('.per_btn_tosend').click(function(){
	$(this).parent().siblings(".per_box_let").slideToggle("normal");
	});
	
	//开闭对话框
	$('.letter_span3').click(function(){
	if (!$(this).parents("div:eq(0)").siblings(".per_letterbox").hasClass('block')) {    
	    $('.per_letterbox').removeClass('block');
	    $(this).parents("div:eq(0)").siblings(".per_letterbox").addClass('block');
	}
   });
	$(".letter_dd1").click(function(){
     $(this).parents("div:eq(1)").fadeOut("normal");
   });
	
	//个人空间推荐
	$(".re_text").focus(function(){
	$(this).css("background","#fff");
  });
   $(".re_text").blur(function(){
	$(this).css("background","none");
  });
   
   //同城搜索判断
  $(".city_but").focus(function(){
	var dis=$(".city_text").val();
	dis = dis.replace(/\s/gi,"");//将字符串内的所有空格替换成空字符
    if(dis==""|| dis=="同城信息搜索")
	{
	 $(this).siblings(".city_text").css("color","#727272");
	 $(this).parent().addClass("city_bg");
	}
  });
  
  //同城搜索
	$(".city_text").focus(function(){
	$(this).parent().addClass("city_bg");
  });
   $(".city_text").blur(function(){
	$(this).parent().removeClass("city_bg");
  });
   
    //移动变背景(同城)
  $(".city_infonews").mouseover(function(){
	$(this).addClass("city_newsbg");
  });
   $(".city_infonews").mouseout(function(){
	$(this).removeClass("city_newsbg");
  });
   
    //同城信息
   $(".info_right span:last").addClass("info_r_lispan");//删除线
   $(".public_del").click(function(){
	 $(this).parents("li:eq(0)").remove();
	 $(".info_right span:last").addClass("info_r_lispan");//删除线
  });
   
   //点击操作(同城及小区)
   /*   $(".c_loveoff").click(function(){
     $(this).parents("li:eq(0)").css("display","none");
	 $(this).parents("li:eq(0)").siblings(".c_li_love").css("display","block");
  });
$(".c_love").click(function(){
     $(this).parents("li:eq(0)").css("display","none");
	 $(this).parents("li:eq(0)").siblings(".c_li_loveoff").css("display","block");
  });
 
  $(".c_attention").click(function(){
     $(this).parents("li:eq(0)").css("display","none");
	 $(this).parents("li:eq(0)").siblings(".c_li_cancel").css("display","block");
  });
  
  $(".c_cancel").click(function(){
     $(this).parents("li:eq(0)").css("display","none");
	 $(this).parents("li:eq(0)").siblings(".c_li_attention").css("display","block");
  });
  */
  $(".city_del").click(function(){
     $(this).parents("div:eq(4)").remove();
  });
  $(".community_del").click(function(){
     $(this).parents("div:eq(3)").remove();
  });
  $(".c_reply").click(function(){
     $(this).parents("div:eq(0)").siblings(".response").slideToggle(0);
	 $(this).parents("div:eq(1)").toggleClass("do_marginb25");
	 $(this).parents("div:eq(2)").toggleClass("padding25");
	 $(this).parents("div:eq(0)").siblings(".discuss_list").slideToggle(0);
	 $(this).siblings("#arrow").toggleClass("replay_arrow");
	 $(".res_text_com").show();
	 $(".r_bcom").show();
	 $(".r_text").show();
	 $(".r_button").show();
  });
   
   //改变背景(小区)
   $(".com_a11").mouseover(function(){
	$(".dldl").addClass("com_dl_bg1");
	$("#com_1").show();
    $("#com_2").hide();
  });
   $(".com_a11").mouseout(function(){
	$(".dldl").removeClass("com_dl_bg1");
  });
   $(".com_a22").mouseover(function(){
	$(".dldl").addClass("com_dl_bg2");
	$("#com_1").hide();
    $("#com_2").show();
  });
   $(".com_a22").mouseout(function(){
	$(".dldl").removeClass("com_dl_bg2");
  });
   
   //求职招聘高级搜索
   $(".smore").click(function(){
	$(this).siblings(".job_sbox_del").slideToggle(0);
	$(this).siblings(".job_sbox").slideToggle(0);
   });
   $(".job_sbox_del").click(function(){
	$(this).css("display","none");
	$(this).siblings(".job_sbox").css("display","none");
   });
   
    //求职招聘
   $(".bb li:last").addClass("j_bottom");//删除线
   $(".job_hot li:last").addClass("j_bottom");//删除线
   
   //敬请期待
  $(".tuned_btn li").click(function(){
   if(!$(this).hasClass('tuned_current')){
   $(".tuned_btn li").removeClass("tuned_current");
   $(this).addClass("tuned_current");
  }
  });
  $(".tuned_close").click(function(){
   $(this).parent().fadeOut("normal");
   $(".tuned_btn li").removeClass("tuned_current");
   $('.tuned_arrow_m').fadeOut("normal");
  });
  function tuned(i){
  $('.tuned_btn li:eq('+i+')').click(function(){  
	  $('.tuned_main').eq(i).fadeIn("slow").siblings('..tuned_main').css('display','none');
   });
  };;tuned(0);tuned(1);tuned(2);
  
  //登录
 $(".home_ninput").focus(function(){
   $(this).parent().addClass("namebg");
  });
 $(".home_ninput").blur(function(){
   $(this).parent().removeClass("namebg");
  });
 $(".home_btn").mouseover(function(){
   $(this).addClass("home_btn_on");
  });
 $(".home_btn").mouseout(function(){
   $(this).removeClass("home_btn_on");
  });
$('#form_login').bind('submit',function(){
   var email=$("#email").val();
   var password=$("#password").val();
    if(email=="" || password==""){
      return false;
    }
    else{
    return true;
   }
  });
 
 //注册
 var gohome;
 $(".reg_rinput_code").focus(function(){
   $(this).parent().addClass("reg_ruser_on");
  });
 $(".reg_rinput_code").blur(function(){
	 
	 $(this).parent().removeClass("reg_ruser_on");
	 var vale_c=$(".reg_rinput_code").val();
	 if(vale_c=="请输入邀请码"){
			
		 $(".r_spanform_c").hide();
		 gohome=0;
	   }
	 else if(vale_c){
		 $.post( U("home/Public/isInviteCodeAvailable"), {invitecode:vale_c}, function(res){
	    		
				if(res == 'success') {
					$(".r_spanform_c").hide();
					gohome=1;
				}else{
					$(".r_spanform_c").html('邀请码错误');
					$(".r_spanform_c").show();
					gohome=0;
				}
				
			});
	 }
	 
  });
 $(".reg_rinput").focus(function(){
	 
   $(this).parent().addClass("reg_ruser_on");
  });
 
$(".reg_rinput").blur(function(){
   $(this).parent().removeClass("reg_ruser_on");
   var vale_p=$(".reg_rinput").val();
   var pattern = /^[a-z A-Z 0-9 _]+@[a-z A-Z 0-9 _]+(\.[a-z A-Z 0-9 _]+)+(\,[a-z A-Z 0-9 _]+@[a-z A-Z 0-9 _]+(\.[a-z A-Z 0-9 _]+)+)*$/;
   if(!pattern.test(vale_p))
   {
    $(".r_spanform1").html('邮箱格式不对');
	$(".r_spanform1").show();
	gohome=0;
   }
   if(vale_p=="输入一个你的邮箱作为账号"){
	 $(".r_spanform1").hide();
	 gohome=0;
   }
    if(pattern.test(vale_p))
   {	
    	
    	$.post( U("home/Public/isEmailAvailable"), {email:vale_p}, function(res){
    		
			if(res == 'success') {
				$(".r_spanform1").hide();
				gohome=1;
			}else{
				$(".r_spanform1").html('邮箱已被占用');
				$(".r_spanform1").show();
				gohome=0;
			}
			
		});
	
   }
  });
  $(".reg_rpass").click(function(){
   $(this).find(".reg_rpass_zi").css("display","none");
   $(this).find(".reg_rinput2").trigger("focus");
  });
 $(".reg_rinput2").focus(function(){
   $(this).parent().addClass("reg_rpass_on");
   $(this).siblings(".reg_rpass_zi").css("display","none");
  });
 $(".reg_rinput2").blur(function(){
   $(this).parent().removeClass("reg_rpass_on");
   if($(this).val()==""){
   $(this).siblings(".reg_rpass_zi").css("display","block");
   gohome=0;
   }
  })
 $(".reg1").blur(function(){
	if($(this).val().length<6){
	$(".pass1").show();
	gohome=0;
   }
   if($(this).val().length>=6){
	$(".pass1").hide();
	gohome=1;
   }
   else if($(this).val()=="")
   {
   $(".pass1").hide();
	gohome=0;
   }
  });
 $(".reg2").blur(function(){
	if($(this).val()!==$(".reg1").val()){
	$(".pass2").show();
   }
   if($(this).val()==""){
	$(".pass2").hide();
	gohome=0;
   }
   if($(this).val()==$(".reg1").val()){
	$(".pass2").hide();
	gohome=1;
   }
  });
 $(".reg_btn").mouseover(function(){
   $(this).addClass("reg_btn_on");
   if(gohome==0)
   {
   $("#r_offoff").show();
   $("#r_onon").hide();
   }
   if(gohome==1)
   {
   $("#r_offoff").hide();
   $("#r_onon").show();
   }
   if($(".reg_rinput_code").val()=="请输入邀请码" || $(".reg_rinput").val()=="输入一个你的邮箱作为账号" || $(".reg1").val()=="设置一个密码" || $(".reg2").val()=="确认密码")
   {
   $("#r_offoff").show();
   $("#r_onon").hide();
   }
  });
 $(".reg_btn").mouseout(function(){
   $(this).removeClass("reg_btn_on");
  });
  
  //$(function(){
 //var scrtime;
 // $(".register_img").hover(function(){
 // clearInterval(scrtime);
 //},function(){
// scrtime = 
setInterval(function(){
  var $ul = $(".register_img ul");
  var liWidth = $ul.find("li:last").width();
  $ul.animate({marginLeft : liWidth+0 +"px"},0,function(){  //数值调整下滚速度
  $ul.find("li:last").prependTo($ul)
  $ul.find("li:first").hide();
  $ul.css({marginLeft:0});
  $ul.find("li:first").fadeIn(2000);  //数值调整淡入速度
  }); 
 },5000);  //数值调整静止不动的时间
 //});
 //.trigger("mouseleave");
//});
  
  //背景黑
  var b_hh=$("body").height();
  var b_ww=$("body").width();
  $(".b_black").css("height",b_hh);
  $(".b_black").css("width",b_ww);
  //社区私信框
  $(".c_letter").live("click",function(){
    $(".cper_letterall").show();
    $(".b_black").show();
  });
  $(".c_spanx").live("click",function(){
    $(".cper_letterall").hide();
    $(".b_black").hide();
  });
  
});

//回到底部
$(document).ready(function(){
	$('.totop').hide();
	$(window).scroll(function() {
		if($(window).scrollTop() >= 200){
			$('.totop').fadeIn(10);
    }
    else
    {
    $('.totop').fadeOut(10);
    }
  });
  $('.to_top').click(function(){$('html,body').animate({scrollTop: '0px'}, 100);});
  $('.to_top').mouseover(function(){$(this).addClass("to_top_on");});
  $('.to_top').mouseout(function(){$(this).removeClass("to_top_on");});
});

$(".logout").click(function(){
	$.get("/logout");
});