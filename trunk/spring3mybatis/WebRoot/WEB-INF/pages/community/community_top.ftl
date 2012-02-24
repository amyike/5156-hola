<#if xqnotice??>
  <!--[if !IE]>小区公告<![endif]-->
  <div class="community_placard">
     <h3 class="com_publish">小区公告</h3>
	 <ol>
	    <#if user.area??>
	    <li class="com_li1">${user.area.title}</li>
	    </#if>
	    <#if user.xqtable??>
		<li class="com_li1">${user.xqtable.xqname}</li>
		</#if>
		<li class="com_li2"><#if !flag??><a href="/community/bulletin.htm">更多公告</a><#else><a href="/community.htm">返回</a></#if></li>
	 </ol>
  </div>	
   
   <!--[if !IE]>公告信息<![endif]-->
   <div class="community_info">
       <h4 class="com_title"><a href="#none">${xqnotice.title}</a></h4>
	   <span class="com_time">${xqnotice.time?string("MM月dd日 HH:mm")}</span>
	   <p>
	 	&nbsp;&nbsp;${xqnotice.content}
	   </p>
   </div>
</#if>