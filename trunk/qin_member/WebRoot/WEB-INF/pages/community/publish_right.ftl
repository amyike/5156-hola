<!--[if !IE]>右边<![endif]-->
<div class="publish_pl">
   <ul>
      <#if user.area??>
	      <li class="pl_li1">我住在${user.area.title}<#--<#if user.area.pArea??>${user.area.pArea.title}</#if>--></li>
	  <#else>
	  	<li class="pl_li4">请完善个人信息（地址）</li>
	  </#if>
	  
	  <#if user.xqtable??>
	  <li class="pl_li4">${user.xqtable.xqname}</li>
	  <#--<li class="pl_li3">${user.xqtable.xqname}</li>-->
	  	<#if personCount??&&personCount gt 50><li class="pl_li4">该小区已有<em class="li4_em">${personCount}人</em>入住</li></#if>
	  <#else>	
	  <li class="pl_li4">您未填写小区信息</li>
	  </#if>
   </ul>
</div>
<!--[if !IE]>右边(结束)<![endif]-->