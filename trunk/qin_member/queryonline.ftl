<script language="javascript" type="text/javascript" src="js/myajax.js"></script>
<script type="text/javascript" src="http://www.nzn.cn/js/verifyCode.js"></script>
<script type="text/javascript" src="http://www.nzn.cn/js/ajax.js"></script>
<script type="text/javascript" src="http://www.nzn.cn/js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript">
	function submit_form(){
			
		var form = document.queryForm;
		
		var uid = form.uid.value;
		var title = form.title.value;
		var content = form.content.value;
		var name = form.name.value;
		var sex = form.sex.value;
		var phone = form.phone.value;
		var qicq = form.qicq.value;
		var email = form.email.value;
		var state = form.state.value;
		var type = form.type.value;
		var address = form.address.value;
		var gid = form.gid.value;
		var buid = form.buid.value;
		var bid = form.bid.value;

		var url = "queryOnline!add.do?";
		url += "uid="+uid;
		url += "&title="+title;
		url += "&content="+content;
		url += "&name="+name;
		url += "&sex="+sex;
		url += "&phone="+phone;
		url += "&qicq="+qicq;
		url += "&email="+email;
		url += "&state="+state;
		url += "&type="+type;
		url += "&address="+address;
		url += "&gid="+gid;
		url += "&buid="+buid;
		url += "&bid="+bid;
		
		
		//中文转码
		url=encodeURI(url);        
		url=encodeURI(url);
		var params = url;
		var myAjax=new Ajax.Request("queryOnline!add.do", {method:'post',parameters:params,onComplete:retColl,onError:error});
		submitOnce(document.getElementById("submitBtn"));//防止客户端重复提交
		
		clearForm();
		submitOnce(document.getElementById("submitBtn"));//防止客户端重复提交
	}
	
	
	
	
	function sendQueryOnline(){
	   if(!checkForm())
			return;		
	   var code = $("#securityCode").attr("value");  
       code = "c=" + code;

        $.ajax({
		   type: "POST",
		   url: "resultServlet",
		   data: code,
		   success: function(data){
		   
		      if (data==1) {
		   	   		submit_form();
		   	   		changeImg();
		   	   } else if (data==3) {
		   	   		alert("验证码失效");
		   	   		changeImg();
		   	   } else if (data==0) {
		   	   		alert("验证码为空");
		   	   } else {
		   	   		alert("验证码错误");
		   	   }			
		   }
		}); 
	}
	
	function retColl(response){
		var ret = eval('(' + response.responseText + ')');
		if(ret.isok){
			alert("留言信息已发送成功！");
		}
	}
	
	
	
	
	function checkForm(){
		var eles = document.queryForm.elements;
		for(var i = 0; i < eles.length; i++){
			if(eles[i].type != "hidden"){
				if(eles[i].type == "text" && eles[i].name == "securityCode" && $.trim(eles[i].value) == ""){
					alert("验证码不能为空");
					eles[i].focus();
					return false;
				}
				if(eles[i].type == "text" && $.trim(eles[i].value) == ""){
					alert("请填写完整有效信息");
					eles[i].focus();
					return false;
				}
				if(eles[i].type == "textarea" && $.trim(eles[i].value) == ""){
					alert("请填写咨询内容");
					eles[i].focus();
					return false;
				}
			}
		}
		return true;
	}
	
	function clearForm(){
		var form = document.queryForm;
		
		form.uid.value = 0;
		form.title.value = "";
		form.content.value = "";
		form.name.value = "";
		form.sex.value = 0;
		form.phone.value = "";
		form.qicq.value = "";
		form.email.value = "";
		form.state.value = 0;
		form.type.value = 0;
		form.address.value = "";
		form.securityCode.value = "";
	}
	
	function submitOnce(obj){
		obj.enabled != obj.enabled;
	}
</script>
<!--div3-->
<form action="queryOnline!add.do" method="post" name="queryForm" id="queryForm" >
  <div class="newspinpai5" style="width:648px; height:480px;">
    <div class="newspinpaitop" style="width:648px;">
      <div class="hotgunz">在线咨询</div>
    </div>
    <div class="djiantou"></div>
    <div class="Womproduct2table" style="width:auto;margin-left:0px;">
      <input type="hidden" id="state" name="state" value="0" />
      <input type="hidden" id="type" name="type" value="<#if type ??>${type}<#else>0</#if>" />
      <input type="hidden" id="uid" name="uid" value="<#if member ??>${member.id}<#else>0</#if>" />
      <input type="hidden" id="gid" name="gid" value="<#if gid ??>${gid}<#else>0</#if>">
	  <input type="hidden" id="buid" name="buid" value="<#if buid ??>${buid}<#else>0</#if>">
	  <input type="hidden" id="bid" name="bid" value="<#if bid ??>${bid}<#else>0</#if>">
      <div class="Womproduct2div1" style="clear:both;">

        </div>
      </div>
      <div class="Womproduct2div1" style=" width:648px;height:100px;">
        <div class="Womproduct2div1titl" style="font-weight:normal; float:left;"><span style="color:red;">*</span>咨询内容：</div>
        <div  class="Womproduct2div1tit4" style="float:left; width:200px;">
          <textarea name="content" cols="" rows="" class="tatwom"></textarea>
        </div>
      </div>
      <div class="Womproduct2div1">
        <div class="Womproduct2div1titl" style="font-weight:normal;"><span style="color:red;">*</span>联系人：</div>
        <div  class="Womproduct2div1tit2"  style="width:200px;">
          <input name="name" type="text"  class="wompr2text" style="width:200px;"/>
        </div>

            <option value="1">女士</option>
          </select>
        </div>
      </div>
      <div class="Womproduct2div1" style="clear:both;">
        <div class="Womproduct2div1titl" style="font-weight:normal;"><span style="color:red;">*</span>您的电话：</div>
        <div  class="Womproduct2div1tit2"  style="width:200px;">
          <input name="phone" type="text"  class="wompr2text" style="width:200px;"/>
        </div>
      </div>
      <div class="Womproduct2div1" style="clear:both;">
        <div class="Womproduct2div1titl" style="font-weight:normal;"><span style="color:red;">*</span>QQ号：</div>
        <div  class="Womproduct2div1tit2"  style="width:200px;">

      <div class="Womproduct2div1" style="clear:both;">
        <div class="Womproduct2div1titl" style="font-weight:normal;"><span style="color:red;">*</span>电子邮箱：</div>
        <div  class="Womproduct2div1tit2"  style="width:200px;">
          <input name="email" type="text"  class="wompr2text" style="width:200px;"/>
        </div>
      </div>
      <div class="Womproduct2div1" style="clear:both;">
        <div class="Womproduct2div1titl" style="font-weight:normal;"><span style="color:red;">*</span>详细地址：</div>
        <div  class="Womproduct2div1tit2"  style="width:200px;">
          <input name="address" type="text"  class="wompr2text" style="width:200px;"/>
        </div>
      </div>
      
      <div class="Womproduct2div1" style="clear:both;">

        	<img id="imgObj" src="/verifyCodeServlet"/>
        	<a style="cursor:pointer" onclick="changeImg()">点击刷新</a>
        </div>
      </div>
      
	  <div style=" clear:both; height:10px;"></div>
	  <div class="womquedfs" id="submitBtn" onclick="sendQueryOnline();" enabled="true"></div>	  
	  <#if buser ??>
	  <#if buser.c_level == 1>
	  <div class="womquedfscor">如果该客户是高级会员，我们将同时邮件至该客户邮箱。</div>
	  </#if>
	  </#if>
    </div>

