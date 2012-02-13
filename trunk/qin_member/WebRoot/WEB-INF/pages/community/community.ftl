<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>社区主页-45公社-乐享城市轻社区</title>
<link href="/css/public.css" rel="stylesheet" type="text/css" />
<link href="/css/citycommunity.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--[if !IE]>网页顶部logo及导航<![endif]-->
<#include "/public/top.ftl">
<!--[if !IE]>网页顶部logo及导航(结束)<![endif]-->

<!--[if !IE]>大框架<![endif]-->
<div class="all_frame margint11 width907">

   <!--[if !IE]>左边<![endif]-->
   <div class="community_left">
   
    	<!--[if !IE]>小区公告<![endif]-->
    	<#if user.xqtable??><#-- 填写了小区信息 -->
     		<#include "community_top.ftl">
     	</#if>
        <!--[if !IE]>公告信息<![endif]-->
        <div class="city_rebtn comm_rebtn"><a href="javascript:void(0);" title="点击刷新" class="news" style="display: none">有 0 条新信息</a></div>
      <#if page?? && page.elements??>
	  <#list page.elements?sort_by("id")?reverse  as xqTopic>
	  <input name="id" type="hidden" value="${xqTopic.id}">
	    <!--[if !IE]>小区主要内容<![endif]-->
	    <div class="community_main">
	       <!--[if !IE]>头部<![endif]-->
	       <div class="community_top">
		      <dl>
			     <dt><a href="/index.php?app=home&mod=Space&act=index&uid=${xqTopic.user.uid}"><img src="<#if xqTopic.user??>/data/uploads/avatar/${xqTopic.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="${xqTopic.user.uname}" /></a></dt>
				 <dd class="com_dd1"><a href="/index.php?app=home&mod=Space&act=index&uid=${xqTopic.user.uid}">${xqTopic.user.uname}</a><span class="com_topspan">${xqTopic.time?string("MM月dd日 HH:mm")}</span></dd>
				 <dd class="com_dd2"><a href="javascript:void(0);" onclick="location='/community.htm?buid=${xqTopic.user.uid}'">${xqTopic.title}</a></dd>
			  </dl>
		   </div>
		   <!--[if !IE]>头部(结束)<![endif]-->
		   
		   <div>
		   <!--[if !IE]>文章内容<![endif]-->
		   <div class="community_content">
		       <p>
		       ${xqTopic.content}
			   </p>
			   <div class="city_do_all do_all_w">
			       <ul>
			       <#-- 是本人 -->
			       <#if  xqTopic.user??&&user.uid==xqTopic.user.uid>
				      <li class="city_li_del"><a class="community_del" href="javascript:void(0);" onclick="location='/community/delete.htm?id=${xqTopic.id}'">删除</a></li>
				      <li><a href="javascript:void(0);" onclick="location='/community/publish.htm?id=${xqTopic.id}'">编辑</a></li>
				   <#-- 不是本人 -->
				   <#else>
				   		  <#-- 是否已喜欢 -->
						  <#assign isFavorite = 1>
						  <#if favoriteTopicIds??>
							  <#list favoriteTopicIds as ftid>
							    <#if ftid==xqTopic.id><#assign isFavorite = 0></#if>
							  </#list>
						  </#if>
						  <li class="c_li_loveoff" "><a class="c_loveoff" href="javascript:void(0);" isFavorite="${isFavorite}" onclick="favorite(this, ${xqTopic.id});"><#if isFavorite==0>取消</#if>喜欢</a></li>

						  <#-- Topic需有用户信息 -->
						  <#if xqTopic.user??>
							  <#-- 是否已关注 -->
							  <#assign isFollow = 1>
							  <#if followUids??>
								  <#list followUids as fuid>
								        <#if fuid==xqTopic.user.uid><#assign isFollow = 0></#if>
								  </#list>
							  </#if>
							  <li class="c_li_attention"><a class="c_attention" href="javascript:void(0);" isFollow="${isFollow}" onclick="follow(this, ${xqTopic.user.uid});"><#if isFollow==0>取消</#if>关注</a></li>
						      <li class="c_letter"><a href="javascript:void(0);" onclick="msg(${xqTopic.user.uid},'${xqTopic.user.uname}');">发私信</a></li>
						  </#if>
						  
						  <li class="reply_li"><a class="c_reply" href="javascript:void(0);" onclick="replies(0,${xqTopic.id},0);">回应(<span id="repliesSum_${xqTopic.id}">${xqTopic.xqtopicReplies?size}</span>)</a><div id="arrow"></div></li>
				   </#if>
				   </ul>
				</div>
				<!--[if !IE]>回复及评论<![endif]-->
		        <div class="response margint8 res_com" style="display:none;">
				    <textarea class="r_text res_text_com" id="replay_${xqTopic_index}" name="" value="" cols="" rows="" ></textarea>
				    <input class="r_button r_bcom" name="" type="submit" value="" onclick="replies(1,${xqTopic.id},$('#replay_${xqTopic_index}').val());" />
				    <div class="response_top res_topbg res_com"></div>
		         </div>
		         <div class="discuss_list res_com" style="display:<#if act??&&act=='replies'>block<#else>none</#if>;">
				     <ul id="replays_${xqTopic.id}"></ul>
		         </div>
				 <!--[if !IE]>回复及评论（结束）<![endif]-->
		   </div>
		   <!--[if !IE]>文章内容（结束）<![endif]-->
		   </div>
		   
		   <!--[if !IE]>底部<![endif]-->
		   <div class="community_bottom"></div>
		   
	   </div>
	   <!--[if !IE]>小区主要内容（结束）<![endif]-->
	   </#list>
		<style>
			.pageString ul{list-style:none;width:570px;height:30px;margin-left:10px;}
			.pageString ul li{float:left;padding:4px 8px; margin-left:2px; background:#fff;}
			.pageString ul li a{ color:#000;}
			.pageString ul li a:hover{ color:#000;}
			.pageString ul li.page_current{background:#666;}
			.pageString ul li.page_current a{color:#fff;}
			.pageString ul li.page_current a:hover{color:#fff;}
		</style>
		<div id="pageString" class="pageString">${page.pageString}</div>
		<#else>
   			没有任何符合条件的数据！
		</#if>
	   
   </div>
   <!--[if !IE]>左边（结束）<![endif]-->
   
   <!--[if !IE]>右边<![endif]-->
   <#include "community_right.ftl">
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
   	  url: "/community/replies.htm",
   	  data: flag==1?{"xqTopic.id":id,"content":content}:{"id":id},
   	  success: function(data){
			if(flag==1){//post replies
				replies(0,id,'');
			}else{
				var sum=0;
	  			$("#replays_"+id).empty();
	   	  		$.each(data.data, function(i, n){
	   	  			var li = $('<li><a href="/index.php?app=home&mod=Space&act=index&uid='+n.uid+'">'+n.uname+'</a>：<em>'+n.content+'</em>                    '+n.time+'</li>');
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
		data: {flag: isFollow, fid: fid, type: 1},
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
function favorite(flag, xqtopicid){
	var isFavorite = $(flag).attr("isFavorite");
	$.ajax({
		type: "GET",
		url: "/community/favorite.htm",
		data: {"flag": isFavorite, "xqtopicid": xqtopicid},
		success: function(data){
			if(data.result){
			    $(flag).text(isFavorite=="0"?"喜欢":"取消喜欢");
				$(flag).attr("isFavorite",isFavorite=="0"?"1":"0");
				showOk({content: data.msg, yesFn: function(){location.reload(); return true;}});
			}else{
				showNo({content: data.msg});
			}
		}
	});
}


$(".news").click(function(){location.reload();});

function refreshNews (){
	$.get("/community/xqtoppicNews.htm", {maxId: maxId}, function(data){
		if(data.countNews>0){
			$(".news").css("display", "block");
			$(".news").text("有 "+data.countNews+" 条新信息");
		}
		$(".c_onmain").text(data.unreadTids);
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
	$.get("/community/xqtoppicNews.htm", {maxid: 0}, function(data){maxId = data.maxId;});
	setTimeout(refreshNews, 10000);
	
<#-- 如果是查看回应，自动加载回应列表 -->
<#if act??&&act=='replies'>
	setTimeout(loadReplies, 10);
</#if>
});
</script>
</html>
</#escape>