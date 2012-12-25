$("form").live("submit", function() {
	var account = $.trim($("input[name=account]").val());
	if (account.length < 5) {
		alert("帐号不能少于5位！");
		return false;
	}
	var password = $.trim($("input[name=password]").val());
	if (password.length < 6) {
		alert("密码不能少于6位！");
		return false;
	}
	$.ajax({
		url : "/login",
		type : "post",
		data : {
			account : account,
			password : password
		},
		success : function(retVal) {
			if (!retVal)
				return;
			var json = eval('(' + retVal + ')');
			if (json.status) {
				// location.href = "/admin";
				open("/admin", "_top");
			} else {
				alert(json.msg);
			}
		}
	});
	return false;
});