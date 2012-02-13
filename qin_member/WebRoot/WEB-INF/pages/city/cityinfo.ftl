<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>精彩同城-45公社-乐享城市轻社区</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/citycommunity.css" rel="stylesheet" type="text/css">
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<![endif]-->
</head>

<body>
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#include "/public/top.ftl">
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<!--[if !IE]>同城头部<![endif]-->
<div class="city_top<#if isBiz??&&isBiz> city_top4<#else> city_top2</#if>">
   <div class="city_place"><#if user.area??&&user.area.pArea??>您所在的城市：${user.area.pArea.title}<#else>请完善个人资料（地区）</#if></div>
   <div class="city_search">
       <input class="city_text" value="<#if keyword??>${keyword}<#else>同城信息搜索</#if>" focucmsg="<#if keyword??>${keyword}<#else>同城信息搜索</#if>" />
	   <input class="city_but" type="submit" value="">
   </div>
   <div class="city_nav">
       <ul>
       		<#if isBiz??&&isBiz>
		       <li class="c_navli1"><a href="/city/publish.htm">发布同城信息</a></li>
			   <li class="c_navli2"><a href="/city.htm?act=my">我的同城信息</a></li>
			</#if>
		   	   <li class="c_navli3"><a href="/city.htm?act=follow">我的关注</a></li>
		   	   <li class="c_navli4"><a href="/city.htm?act=favorite">我的喜欢</a></li>
	   </ul>
   </div>
</div>
<!--[if !IE]>同城头部(结束)<![endif]-->

<!--[if !IE]>大框架<![endif]-->
<div class="all_frame margint11">

<!--[if !IE]>左边<![endif]-->
<div class="city_left">
   <#if isBiz??&&isBiz><div class="city_remy"><a class="city_remyaa" href="/city.htm?act=replies">回应我的</a></div></#if>
   <!--[if !IE]>同城分类<![endif]-->
   <div class="city_sort">
      <h3 class="city_h3">全部同城信息</h3>
	  <div class="city_sortall">
	    <ul>
		 <#if cityCategories??>
		 	<#list cityCategories as cityCate>
		 		<li class="<#if (cityCate_index+1)%5==0>city_mar</#if><#if cateId??&&cateId==cityCate.id> city_current</#if>"><a href="/city.htm?cateId=${cityCate.id}">${cityCate.title}</a></li>
		 	</#list>
		 </#if>
		</ul>
	  </div>
   </div>
   <!--新信息按钮按钮-->   
   <div class="city_rebtn"><a href="javascript:void(0);" title="点击刷新" class="news" style="display: none">有 0 条新信息</a></div>
   <#if page?? && page.elements??>
	  <#list page.elements  as cityTopic>
	  <input name="id" type="hidden" value="${cityTopic.id}">
	   <!--[if !IE]>主要信息<![endif]-->
	   <div class="city_main">
	      <!--[if !IE]>头像<![endif]-->
	      <div class="city_head">
		      <a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}"><img src="<#if cityTopic.user??>/data/uploads/avatar/${cityTopic.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="" /></a>
			  <div class="city_arrow"></div>
		  </div>
		  
		  <!--[if !IE]>主要内容<![endif]-->
		  <div class="city_info">
	          
		      <!--[if !IE]>标题<![endif]-->
		      <div class="city_up">
			     <a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}">${cityTopic.user.uname}</a>：
			     <em><a href="javascript:void(0);" onclick="location='/city.htm?buid=${cityTopic.user.uid}'">${cityTopic.title}</a></em>
				 <span class="city_time">${cityTopic.time?string("MM月dd日 HH:mm")}</span>
			  </div>
			  <!--[if !IE]>内容<![endif]-->
			  <div class="city_content">
			      <p>
				  ${cityTopic.content}
				  </p>
			  </div>
			  <!--[if !IE]>内容（结束）<![endif]-->
			  <!--[if !IE]>对本文操作<![endif]-->
			  <div class="city_operate<#if act??&&act=='replies'> padding25</#if>">
			     <div class="city_do<#if act??&&act=='replies'> do_marginb25</#if>">
				    <div class="city_do_all">
				       <ul>
				          <#-- 是本人 -->
					      <#if user.uid==cityTopic.user.uid>
						      <li class="city_li_del"><a class="city_del" href="javascript:;" onclick="location='/city/delete.htm?id=${cityTopic.id}'">删除</a></li>
							  <li><a href="javascript:;" onclick="location='/city/publish.htm?id=${cityTopic.id}'">编辑</a></li>
						  <#-- 不是本人 -->
						  <#else>
						  	  <#-- 是否已喜欢 -->
							  <#assign isFavorite = 1>
							  <#if favoriteTopicIds??>
							  <#list favoriteTopicIds as ftid>
							    <#if ftid==cityTopic.id><#assign isFavorite = 0></#if>
							  </#list>
							  </#if>
							  <li class="c_li_loveoff"><a class="c_loveoff" isFavorite="${isFavorite}" href="javascript:;" onclick="favorite(this, ${cityTopic.id});"><#if isFavorite==0>取消</#if>喜欢</a></li>
							  
							  <#-- Topic需有用户信息 -->
							  <#if cityTopic.user??>
								  <#-- 是否已关注 -->
								  <#assign isFollow = 1>
								  <#if followUids??>
								  <#list followUids as fuid>
								        <#if cityTopic.user??&&fuid==cityTopic.user.uid><#assign isFollow = 0></#if>
								  </#list>
								  </#if>
								  <li class="c_li_attention"><a class="c_attention" isFollow="${isFollow}" href="javascript:;" onclick="follow(this, ${cityTopic.user.uid});"><#if isFollow==0>取消</#if>关注</a></li>
							      <li class="c_letter"><a href="javascript:void(0);" onclick="msg(${cityTopic.user.uid},'${cityTopic.user.uname}');">发私信</a></li>
							  </#if>							  
							  
							  <li class="reply_li"><a class="c_reply" href="javascript:;" onclick="replies(0,${cityTopic.id},0);">回应(<span id="repliesSum_${cityTopic.id}">${cityTopic.citytopicReplies?size}</span>)</a><div id="arrow"></div></li>
						  </#if>
					   </ul>
					</div>
					<!--[if !IE]>回复及评论<![endif]-->
			        <div class="response margint8" style="display:none;">
					    <textarea class="r_text" id="replay_${cityTopic_index}" name="" value="" cols="" rows="" ></textarea>
					    <input class="r_button" name="" type="submit" value="" onclick="replies(1,${cityTopic.id},$('#replay_${cityTopic_index}').val());"  />
					    <div class="response_top res_topbg"></div>
			         </div>
			         <div class="discuss_list" style="display:<#if act??&&act=='replies'>block<#else>none</#if>;">
					     <ul id="replays_${cityTopic.id}"></ul>
			         </div>
					 <!--[if !IE]>回复及评论（结束）<![endif]-->
					 
				   </div>
			       
				 </div>
				 <!--[if !IE]>对本文操作（结束）<![endif]-->		  
			  
			</div>
			<!--[if !IE]>主要内容（结束）<![endif]-->	    
	   </div>
	   <!--[if !IE]>主要信息（结束）<![endif]-->
	   </#list>
	   <style>
		   .pageString ul{list-style:none;width:570px;height:30px;margin-left:10px;}
		   .pageString ul li{float:left;padding:4px 8px; margin-left:2px; background:#fff;}
		   .pageString ul li a{ color:#000;}
		   .pageString ul li a:hover{ color:#000;}
		   .pageString ul li.page_current{background:#666;}
		   .pageString ul li.page_current a{color:#fff;}
		   .pageString ul li.page_current a:hover{color:#fff;}
		   .marginlx{margin-left:60px;}
	   </style>
	   <div id="pageString" class="pageString marginlx" style="ul li{float:left;}">${page.pageString?if_exists}</div>
   <#else>
   		没有任何符合条件的数据！
   </#if>
</div>
<!--[if !IE]>左边（结束）<![endif]-->

<!--[if !IE]>右边<![endif]-->
<div class="city_right">
    <h3 class="city_hotinfo">推荐同城信息</h3>
    <#if cityTopics_4recommend??>
    <#list cityTopics_4recommend as cityTopic>
	<!--[if !IE]>用户信息<![endif]-->
	<div class="city_infoname">
	    <div class="city_infonews"><a href="#none">${cityTopic.title}</a></div>
	    <dl>
		   <dt><a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}"><img src="<#if cityTopic.user??>/data/uploads/avatar/${cityTopic.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="" /></a></dt>
		   <dd><a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}">${cityTopic.user.uname}</a></dd>
		</dl>
	</div>
	</#list>
	</#if>
	
	
	<h3 class="city_hotinfo city_hotinfo2">热门同类信息</h3>
	<#if cityTopics_4hot??>
    <#list cityTopics_4hot as cityTopic>
	<!--[if !IE]>用户信息<![endif]-->
	<div class="city_infoname">
	    <div class="city_infonews"><a href="#none">${cityTopic.title}</a></div>
	    <dl>
		   <dt><a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}"><img src="<#if cityTopic.user??>/data/uploads/avatar/${cityTopic.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="" /></a></dt>
		   <dd><a href="/index.php?app=home&mod=Space&act=index&uid=${cityTopic.user.uid}">${cityTopic.user.uname}</a></dd>
		</dl>
	</div>
	</#list>
	</#if>
	
</div>
<!--[if !IE]>右边（结束）<![endif]-->


   <!--[if !IE]>私信<![endif]-->
   <div class="cper_letterall" style="display:none;">
	<div class="cper_box_let">
		 <div class="cper_box_left">
		       <ul>
			     <li>发私信给：</li>
				 <li>私信标题：</li>
				 <li>私信内容：</li>
			  </ul>
		</div>
		<input class="cper_box_input1" id="msg_touser" type="text" value="" readonly />
		<span class="c_spanx">X</span>
		<input class="cper_box_input1" id="msg_title" focucmsg="请输入私信标题" value="请输入私信标题" type="text" value="" style="width:533px;" />
		<textarea class="cper_box_divtext" id="msg_content" focucmsg="请输入私信内容" value="请输入私信内容">请输入私信内容</textarea >
	    <div class="cper_box_img">
			<span class="cwidthbtn"><a onclick="msg();" href="javascript:void(0);">发送</a><!--<input name="" type="submit" value="提交" onclick="msg();" />--></span>
		</div>
	 </div>
    </div>
   <!--[if !IE]>私信(结束)<![endif]-->
   

</div>
<!--[if !IE]>大框架(结束)<![endif]-->
<div class="b_black" style="display:none;"></div>
</body>
<script language="javascript" type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/public.js"></script>
<#include "/common/common.ftl">
<script language="javascript" type="text/javascript">
//回帖
function replies(flag,id,content){
	if(flag==1&&$.trim(content)==''){
		showOk({content: "评论不能为空"});
		return;
	}
	$.ajax({
   	  type: flag==1?"POST":"GET",
   	  url: "/city/replies.htm",
   	  data: flag==1?{"cityTopic.id":id,"content":content}:{"id":id},
   	  success: function(data){
			if(flag==1){//post replies
				replies(0,id,'');
			}else{
				var sum=0;
	  			$("#replays_"+id).empty();
	   	  		$.each(data.data, function(i, n){
	   	  			var li = $('<li><a href="/index.php?app=home&mod=Space&act=index&uid='+n.uid+'">'+n.uname+'</a>：<em>'+n.content+'</em>                  '+n.time+'</li>');
	   	  			$("#replays_"+id).append(li);
	   	  			sum+=1;
	   	  		});	   	  		
	   	  		$("#repliesSum_"+id).text(sum);
			}
      	}
	}); 
}

//发私信
function msg(toid,toname){
	$(".cper_letterall").hide();
    $(".b_black").hide();
    if(toid&&toname){
        $("#msg_touser").val(toname).attr("title",toid);
    }else{
	   	$.ajax({
			type: "POST",
			url: "/msg.htm",
			data: {"toUser.uid":$("#msg_touser").attr("title"), "title":$("#msg_title").val(), "content":$("#msg_content").val()},
			success: function(data){
				if(data.result)
					showOk({content: data.msg});
				else
					showNo({content: data.msg});
			}
		});
	}
}

//关注
function follow(flag, fid){
	var isFollow = $(flag).attr("isFollow");
	$.ajax({
		type: "GET",
		url: "/follow.htm",
		data: {flag: isFollow, fid: fid, type: 2},
		success: function(data){
			if(data.result){
				$(flag).text(isFollow=="0"?"关注":"取消关注");
				$(flag).attr("isFollow",isFollow=="0"?"1":"0");
				showOk({content: data.msg, yesFn: function(){location.reload(); return true;}});
			}else{
				showNo({content: data.msg});
			}
		}
	});
}

//喜欢
function favorite(flag, citytopicid){
	var isFavorite = $(flag).attr("isFavorite");
	$.ajax({
		type: "GET",
		url: "/city/favorite.htm",
		data: {"flag": isFavorite, "citytopicid": citytopicid},
		success: function(data){
			if(data.result){
				
			    $(flag).text(isFavorite=="0"?"喜欢":"取消喜欢");
				$(flag).attr("isFavorite",isFavorite=="0"?"1":"0");
				showOk({content: data.msg, yesFn: isFavorite==0? function(){location.reload();}: null});
			}else{
				showNo({content: data.msg});
			}
		}
	});
}

$(".city_h3").click(function(){location='/city.htm'});

$(".city_but").click(function(){
	location="/city.htm?keyword="+encodeURI(encodeURI($(".city_text").val()));
});

$(".news").click(function(){location.reload();});

function refreshNews (){
	$.get("/city/citytoppicNews.htm", {maxId: maxId}, function(data){
		if(data.count>0){
			$(".news").css("display", "block");
			$(".news").text("有 "+data.count+" 条新信息");
		}
	});
	setTimeout(refreshNews, 10000);
}

function loadReplies(){
	$.each($("input[name='id']"), function(i, n) {
		replies(0, $(n).val(), 0);
	});
}

var maxId;
jQuery(function($){
	$.get("/city/citytoppicNews.htm", {maxid: 0}, function(data){maxId = data.maxId;});
	setTimeout(refreshNews, 10000);

<#-- 如果是查看回应，自动加载回应列表 -->
<#if act??&&act=='replies'>
	setTimeout(loadReplies, 10);
</#if>
});
</script>
</html>