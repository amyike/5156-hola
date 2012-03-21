<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JSP Page</title>
<link rel="stylesheet" type="text/css" href="http://localhost/testweb/ajaxfileupload/ajaxfileupload.css"></link>
<script type="text/javascript" src="http://localhost/testweb/ajaxfileupload/jquery.js"></script>
<script type="text/javascript" src="http://localhost/testweb/ajaxfileupload/ajaxfileupload.js"></script>
<script type="text/javascript">
     function ajaxFileUpload(){
     	loading();//动态加载小图标
         $.ajaxFileUpload({
         	url:'../upload', //你处理上传文件的服务端 
         	secureuri:false,//与页面处理代码中file相对应的ID值
         	fileElementId:'fileToUpload',
         	dataType: 'json', //返回数据类型:text，xml，json，html,scritp,jsonp五种
         	success: function (data, status){
         		if(typeof(data.error) != 'undefined'){
                     if(data.error != ''){
                         alert(data.error);
                     }else{
                         alert(data.msg);
                     }
                 }
             },
             error: function (data, status, e){
                 alert(e);
             }
         });
         return false;
     }

     function loading(){
     	$("#loading").ajaxStart(function(){
     		$(this).show();
         }).ajaxComplete(function(){
             $(this).hide();
         });
     }
</script>
</head>
<body>
	<img id="loading" src="loading.gif" style="display: none;" />
	<input id="fileToUpload" type="file" name="fileToUpload" class="input" />
	<button class="button" id="buttonUpload"
		onclick="return ajaxFileUpload();">上传</button>
</body>
</html>
