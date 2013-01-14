
/*-----右侧菜单*/
$(document).ready(function(){
var menuObj = null;
var menuClassObj = null;
var menuIndex = 0;
var interval = 200;
/*隐藏dd标签*/
//$(".index_left_menu_div dl dd").hide();
/*显示相关菜单*/
$(".index_left_menu_div dl dt").click(function(){
	var menuIndexTemp = $(this).parent().index();
	if(menuObj != null && menuIndexTemp != menuIndex){
		menuObj.slideUp(interval);
	}
	menuObj = $(this).parent().children("dd");
	menuObj.slideToggle(interval);
	menuIndex = menuIndexTemp;
});
/*更改class引用*/
$(".index_left_menu_div dl dd[default]").click(function(){
	if(menuClassObj != null){
		menuClassObj.removeClass("dd_focus");
	}
	menuClassObj = $(this);
	menuClassObj.addClass("dd_focus");
});
$(".index_left_menu_div dl dt[default]").click();
});
/*-----右侧菜单 END*/


// table行间隔颜色
$(document).ready(function(){
	/*
	$(".table_list_style tr:gt(0)").each(function(i){
		if(i%2 != 0){
			modifColor(i+1, "", "#E3EFFF");
		}else{
			modifColor(i+1, "", "#F8FBFE");
		}
	});
	
	$(".table_list_style tr:gt(0)").mouseenter(function(){
		$(this).css({"color":"#FFF","background-color":"#42A0FF"});
	}).mouseleave(function(){
		var index = $(this).index();
		if(index%2 != 0){
			$(this).css({"color":"","background-color":"#F8FBFE"});
		}else{
			$(this).css({"color":"","background-color":"#E3EFFF"});
		}
	});
 */
});
/*-----公共按钮*/

//刷新
$("a[REFRESH]").click(function(){
	location.reload();
});

// 选中全部
$("a[CHOOSE]").click(function(){
	$("td input[type='checkbox']").each(function(i){
		$(this).attr("checked", "checked");
	});
});

// 反选
$("a[INVERT]").click(function(){
	$("td input[type='checkbox']").click();
});

//获得选中项ids
var getIds = function(){
	var ids = new Array();
	$("td input[type='checkbox']").each(function(i){
		if("checked" == $(this).attr("checked") && $(this).attr("id") != "-1"){
			var id = $(this).attr("id");
			ids.push(id);
		}
	});
	return ids;
};

//修改表格行的颜色
function  modifColor(index, _color, _bgColor){
	$(".table_list_style tr").eq(index).css({"color":_color,"background-color":_bgColor});
}

//批量删除-回调方法-用于删除列表中的数据
var callbackFunc = function(result){
	if(result.state == 0){
		var ids = result.ids.split(",");
		for ( var i = 0; i < ids.length; i++) {
			$("#"+ids[i]).attr({"id":"-1","checked":false,"disabled":true});
			var index = document.getElementById("tr"+ids[i]).rowIndex;
			modifColor(index, "#FFF", "#DCDCDC");
			$(".table_list_style tr").eq(index).find("td:last").html("已删除&nbsp;");
			$(".table_list_style tr").eq(index).unbind("mouseenter").unbind("mouseleave");
			//$(".table_list_style tr").eq(index).remove();// 直接删除行！
		}
	}else{
		alert("【错误】->批量删除：删除时发生错误！服务端已处理，请手动刷新页面...");
	}
};

// 批量删除
$("a[REMOVE]").click(function(){
	if(confirm("【警告】->批量删除：确定删除选中项，此操作不可回复！")){
		var ids = getIds();
		
		if(ids.length == 0){
			alert("【提示】->批量删除：没有选中要删除的选项...");
			return;
		}
		
		var url = $("#delUrl").val();
		if(url == undefined){
			alert("[该提示用于开发测试]->[ #delUrl ]:"+url);
			return;
		}
		var jsonDate = {ids:ids.join(",")};
		ajaxPOST(url, jsonDate, callbackFunc);
	}
});

// 单独删除
$("a[ONEDEL]").click(function(){
	if(confirm("【警告】->删除：确定删除，此操作不可回复！")){
		var url = $("#delUrl").val();
		ajaxPOST(url, {ids:$(this).attr("ONEDEL")}, callbackFunc);
	}
});

/*-----公共按钮 END*/



/*-----公共方法*/

//跳转到指定URL地址
function goURL(url){
	location.href = url;
}

/*-----公共方法END*/


/*-----搜索方法*/
$("input[SEARCH]").click(function(){
	var key = $("#key").val();
	key = key.trim();
	if(key == "") return;
	
	var inputObj = $("input[name='search']:checked");
	var pattern = inputObj.val();
	var ISID = inputObj.attr("ISID");
	var precision = "true";
	if(ISID == "true"){
		if(isNaN(key))return;
	}else{
		precision = $("input[name='model']:checked").val();
	}
	
	var searchUrl = $("#searchUrl").val();
	goURL(searchUrl+".do?searchParam="+key+"&pattern="+pattern+"&precision="+precision);
});
/*-----搜索方法END*/



