// JavaScript Document
//jquery
$(document).ready(function(){
	//ͼ�����л���Сͼ
  $(".img_small_tu").click(function(){
     $(this).parent().css("display","none");
	 $(this).parent().siblings(".img_big").css("display","block");
  });
  $(".img_big_tu").click(function(){
     $(this).parent().css("display","none");
	 $(this).parent().siblings(".img_small").css("display","block");
	 $(this).parents("div:eq(2)").siblings(".trend_username").focus();
  });
   //�������л���Сͼ
   $(".wen_trend img").click(function(){
     $(this).css("display","none");
	 $(this).parents("div:eq(0)").siblings(".wen_img").css("display","block");
  });
  $(".wen_img_tu").click(function(){
     $(this).parent().css("display","none");
	  $(this).parents("div:eq(0)").siblings(".wen_trend").find("img").css("display","block");
  });
   //���������л���Сͼ
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
  //��Ƶ�����л���Сͼ
  
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

	//���۳�����ʧѭ��
  $(".reply").click(function(){
     $(this).parents().siblings(".response").toggle();
	 $(this).parents().siblings(".discuss_list").toggle();
	 $(this).parents("div:eq(1)").siblings(".response").focus();
  });
  
  //ϲ��ѭ��
  $(".love_off").click(function(){
     $(this).toggleClass("love_on");
  });
	
	 //���ɫ
  $(".feed").mouseover(function(){
     $(this).css("background","#fff");
  });
  $(".feed").mouseout(function(){
	 $(this).css("background","#fff");
  });
	
	//��xxɾ��
  $(".xx").click(function(){
	 $(this).parents("div:eq(4)").fadeOut("normal");
  });
  
  
  //չʾ����Ч��
 // $(".community_name").click(function(){
 //    $(".community_date").slideToggle("normal");
 // });
  
   //չʾ����Ч��2
  $(".info_name").click(function(){
     $(this).siblings(".info_main").slideToggle("fast");
  });
  
   //���ɫ
  $(".dl").mouseover(function(){
     $(this).css("background","#e5f5f8");
  });
  $(".dl").mouseout(function(){
	 $(this).css("background","#e2e4e7");
  });
  
  //�ظ�����Ϊ��
  $(".r_button").click(function(){
	var dis=$(".r_text").val();
	dis = dis.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
    if(dis=="")
	{
	  alert("���۲���Ϊ�գ�")
	}
  });
  //�ظ��䱳��
  $(".r_button").mouseover(function(){
	$(this).addClass("r_button_on");
  });
  $(".r_button").mouseout(function(){
	$(this).removeClass("r_button_on");
  });
  
  //��������������ʧ�뿪�ֳ��֣���ҳ��
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


  //��������������ʧ�뿪�ֳ���
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
  //��������������ʧ�뿪�ֳ���(ע��)
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
  
  //�����ж��Ƿ�Ϊ�ջ���Ϊ��ʼֵ
  $(".search_but").focus(function(){
	var dis=$(".text_sewrch").val();
	dis = dis.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
    if(dis==""|| dis=="��������/��/С��/�̼�")
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
	dis = dis.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
    if(dis==""|| dis=="������ǩ" || dis=="������ǩ/����Ȥ������")
	{
	  $(this).siblings(".tag_pr").find(".tag_prompt").css("display","block");
	  $(this).parent().addClass("tag_bg");
	}
  });
  $(".tag_but").blur(function(){
	$(this).siblings(".tag_pr").find(".tag_prompt").css("display","none");
	$(this).parent().removeClass("tag_bg");
  });

  //ż��dd��������ɫ
  $(".hot_label dl>dd:odd").css("background","#f2f5f5");
  
  //�����ע�ٵ��ȡ����ע
  $(".blog_attention span").click(function(){
     $(this).toggleClass("att_on");
  });



 var _wrap=$('ul.find_frame1');//�����������  
     var _interval=4000;//���������϶ʱ��  
     var _moving;//��Ҫ����Ķ���  
     _wrap.hover(function(){  
         clearInterval(_moving);//������ڹ���������ʱ,ֹͣ����  
     },function(){  
         _moving=setInterval(function(){  
             var _field=_wrap.find('li:first');//�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��  
             var _h=_field.height();//ȡ��ÿ�ι����߶�(���й��������,�˱����������ڿ�ʼ��,������м��ʱ����ʱ)  
             _field.animate({marginTop:-_h+'px'},600,function(){//ͨ��ȡ��marginֵ,���ص�һ��  
                _field.css('marginTop',0).appendTo(_wrap);//���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����  
             })  
         },_interval)//�������ʱ��ȡ����_interval  
     }).trigger('mouseleave');//��������ʱ,ģ��ִ��mouseleave,���Զ�����  
  
  //�������(��㿴��)
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
  
  //���remove
  $(".video_xx").click(function(){
     $(this).parent().remove();
  });
  
  //�ϴ���Ƭ��ӱ�ǩ
  $(".img_tag_text").one("focus",function(){
   $(this).val("");
   $(this).css("color","#000");
   $(this).siblings(".img_tag_text").remove();
  });
  $(".img_tag_text").bind("keydown",function(event){
  var key= $(this).val();
  key = key.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
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
  
  //����ҳ�ӱ�ǩ
  $(".add_tag_text").one("focus",function(){
   $(this).val("");
   $(this).css("color","#000");
  });

  $(".add_tag_text").bind("keydown",function(event){
  var key= $(this).val();
  key = key.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
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
  
  //���Ĭ��������ʧ�ı�����������ɫ
  $(".video_depict_main").one("focus",function(){
   $(this).html("");
   $(this).css("color","#000");
  });
  
  //�������ͼƬ�������������������
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
 
   
   //�������ͼƬ���(��Ա����)
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
   
    //����䱳����ɫ������ɫ�������б�
  $(".in").mouseover(function(){
	$(this).addClass("input_bg")
  });
   $(".in").mouseout(function(){
	$(this).removeClass("input_bg")
  });
   
   //��ע��ȡ����ע�����ʧ
  $(".per_but").click(function(){
     $(this).parent().fadeOut("normal");
   });
  
   //������ʧ
  $(".per_list3").click(function(){
     $(this).parents("div:eq(0)").remove();
   });
   $(".letter_off").click(function(){
     $(this).parents("div:eq(1)").remove();
   });
   
   //ɾ��
    $(".letter_del").click(function(){
     $(this).parents("div:eq(1)").fadeOut("normal");
   });
	
	//����˽�ŶԻ���
	$('.per_btn_tosend').click(function(){
	$(this).parent().siblings(".per_box_let").slideToggle("normal");
	});
	
	//���նԻ���
	$('.letter_span3').click(function(){
	if (!$(this).parents("div:eq(0)").siblings(".per_letterbox").hasClass('block')) {    
	    $('.per_letterbox').removeClass('block');
	    $(this).parents("div:eq(0)").siblings(".per_letterbox").addClass('block');
	}
   });
	$(".letter_dd1").click(function(){
     $(this).parents("div:eq(1)").fadeOut("normal");
   });
	
	//���˿ռ��Ƽ�
	$(".re_text").focus(function(){
	$(this).css("background","#fff");
  });
   $(".re_text").blur(function(){
	$(this).css("background","none");
  });
   
   //ͬ�������ж�
  $(".city_but").focus(function(){
	var dis=$(".city_text").val();
	dis = dis.replace(/\s/gi,"");//���ַ����ڵ����пո��滻�ɿ��ַ�
    if(dis==""|| dis=="ͬ����Ϣ����")
	{
	 $(this).siblings(".city_text").css("color","#727272");
	 $(this).parent().addClass("city_bg");
	}
  });
  
  //ͬ������
	$(".city_text").focus(function(){
	$(this).parent().addClass("city_bg");
  });
   $(".city_text").blur(function(){
	$(this).parent().removeClass("city_bg");
  });
   
    //�ƶ��䱳��(ͬ��)
  $(".city_infonews").mouseover(function(){
	$(this).addClass("city_newsbg");
  });
   $(".city_infonews").mouseout(function(){
	$(this).removeClass("city_newsbg");
  });
   
    //ͬ����Ϣ
   $(".info_right span:last").addClass("info_r_lispan");//ɾ����
   $(".public_del").click(function(){
	 $(this).parents("li:eq(0)").remove();
	 $(".info_right span:last").addClass("info_r_lispan");//ɾ����
  });
   
   //�������(ͬ�Ǽ�С��)
  $(".c_loveoff").click(function(){
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
  });
   
   //�ı䱳��(С��)
   $(".com_a11").mouseover(function(){
	$(".dldl").addClass("com_dl_bg1")
  });
   $(".com_a11").mouseout(function(){
	$(".dldl").removeClass("com_dl_bg1")
  });
   $(".com_a22").mouseover(function(){
	$(".dldl").addClass("com_dl_bg2")
  });
   $(".com_a22").mouseout(function(){
	$(".dldl").removeClass("com_dl_bg2")
  });
   
   //��ְ��Ƹ�߼�����
   $(".smore").click(function(){
	$(this).siblings(".job_sbox_del").slideToggle(0);
	$(this).siblings(".job_sbox").slideToggle(0);
   });
   $(".job_sbox_del").click(function(){
	$(this).css("display","none");
	$(this).siblings(".job_sbox").css("display","none");
   });
   
    //��ְ��Ƹ
   $(".bb li:last").addClass("j_bottom");//ɾ����
   $(".job_hot li:last").addClass("j_bottom");//ɾ����
   
   //�����ڴ�
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
  
  //��¼
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
 
 //ע��
 $(".reg_rinput").focus(function(){
   $(this).parent().addClass("reg_ruser_on");
  });
 $(".reg_rinput").blur(function(){
   $(this).parent().removeClass("reg_ruser_on");
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
  })
 $(".reg_btn").mouseover(function(){
   $(this).addClass("reg_btn_on");
  });
 $(".reg_btn").mouseout(function(){
   $(this).removeClass("reg_btn_on");
  });
  
});

//�ص��ײ�
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