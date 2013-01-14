//添加
function add() {
	if (confirm("")) {

	}
}

// 删除
function del(id) {
	var ids = id ? id : getCheckedIds();
	if (!ids) {
		alert("没有要删除的数据！");
		return;
	}
	if (!confirm("你确定要删除！"))
		return;
	$.get($("#module").attr("value") + "/delete.form", {
		"ids" : ids
	}, function() {
		refresh();
	});
}

// 更新
function upd() {
	if (confirm("")) {

	}
}

// 更新 Type
function updType(type, id) {
	var ids = id ? id : getCheckedIds();
	if (!ids)
		return;
	if (!confirm("你确定要修改！"))
		return;
	$.get($("#module").attr("value") + "/updType.form", {
		"ids" : ids,
		type : type
	}, function() {
		refresh();
	});
}

// 更新 State
function updState(state, id) {
	if (confirm("")) {

	}
}

// 跳转
function go(url) {
	location = url;
}

// 返回
function back() {
	history.go(-1);
}

// 刷新当前页面
function refresh() {
	location.reload();
}

// 选中所有复选框
function checkAll(obj) {
	$.each($("input[name='checkbox']"), function(i, n) {
		$(n).attr("checked", $(obj).attr("checked") ? true : false);
	});
}

// 获取所有选中的记录ID
function getCheckedIds() {
	// alert("getCheckedIds");
	// alert($("input[type='checkbox'][name='checkbox'][checked='checked']").size());
	var ids = "";
	$.each($("input[type='checkbox'][name='checkbox']"), function(i, n) {
		if ($(n).attr("checked")) {
			if (i > 0 && ids != "")
				ids += ",";
			ids += $(n).val();
		}
	});
	return ids;
}