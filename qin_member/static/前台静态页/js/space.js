// JavaScript Document
//jquery
$(document).ready(function(){
   //音乐类
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
  
   //个人空间顶部按钮
 $(".sp2").click(function(){
   $(this).css("display","none");
   $(".sp1").css("display","block");
  });
 $(".sp1").click(function(){
   $(this).css("display","none");
   $(".sp2").css("display","block");
  });
 
  //个人空间1时间
 $(".space1_maintop").mouseover(function(){
   $(this).find(".sp1_time").css("display","block");
  });
 $(".space1_maintop").mouseout(function(){
   $(this).find(".sp1_time").css("display","none");
  });
 
 //喜欢循环
  $(".space4_oli1").click(function(){
     $(this).toggleClass("space4_oli1-1");
  });
  
  //喜欢循环2
  $(".space5_oli1 a").click(function(){
     $(this).toggleClass("space5_oli1-1");
  });
  
  //删除评论
  $(".talkbox").mouseover(function(){
     $(this).find(".space4_talkdel").css("display","block");
  });
  $(".talkbox").mouseout(function(){
     $(this).find(".space4_talkdel").css("display","none");
  });
  $(".space4_talkdel").click(function(){
     $(this).parents("div:eq(1)").remove();
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

  //喜欢
  $(".space4_oli1").mouseover(function(){
     $(this).addClass("space4_oli1-1");
   });
   $(".space4_oli1").mouseout(function(){
     $(this).removeClass("space4_oli1-1");
   });
  //分享
  $(".oli3").mouseover(function(){
     $(this).find(".space4_share").css("display","block");
   });
   $(".oli3").mouseout(function(){
     $(this).find(".space4_share").css("display","none");
   });
   
   //下一页上一页
  $(".space3_lr").mouseover(function(){
     $(this).find(".next").css("display","block");
   });
   $(".space3_lr").mouseout(function(){
     $(this).find(".next").css("display","none");
   });
   
   //去掉虚线
   $(".space5_main:last").css("border","none");
   
   //博客移动切换效果导航样式
 function cutover_main(i){
  $(".blog_site_text li:eq("+i+")").mouseover(function(){
	$(".bsite").css("display","none");
	$(".blog_site_text li").removeClass("color_current");
	$(".blog_site_text li:eq("+i+")").addClass("color_current");
	$(".bsite:eq("+i+")").css("display","block");
  })
 };cutover_main(0);cutover_main(1);cutover_main(2);cutover_main(3);
 
 //自定义主题选中
 $(".bsite_templet_main li").click(function(){
	 if (!$(this).hasClass("onc_current")){
	  $(".bsite_templet_main li").removeClass("onc_current");
	  $(this).addClass("onc_current");
	 }
  });

});

//博客设置导航滑动
$(document).ready(function(){
var action=0;
              
$(".blog_site_text li").each(function(i){
$(this).mouseover(function(){                
if(action == 1)
action = 0;
else{
$(".blog_site_block").stop();                                
}
$(".blog_site_block").animate({left:10+i*100+'px'},'fast',function(){
action = 1;
});
});
});

});