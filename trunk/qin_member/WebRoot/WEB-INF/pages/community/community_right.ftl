   <!--[if !IE]>右边<![endif]-->
   <div class="community_right">
       <!--[if !IE]>小区信息<![endif]-->
	   <div class="community_rtop">
	       <h4 class="com_rtitle"><#if user.area??>我住在${user.area.title}<#else>请在设置中完善您的个人信息(地址)</#if><#if user.xqtable??>${user.xqtable.xqname}</#if></h4>
		   <#if user.xqtable??&&user.xqtable.users??&&user.xqtable.users?size gt 50><div class="com_peopele">该小区已有<em class="com_pe_em">${user.xqtable.users?size}</em>人入住</div></#if>
		   <div class="c_onlike">
		       <ul class="c_onlikeul">
		         <li class="mar_li">
		           <a href="/community.htm?act=follow" title="我的关注">
		            <span class="c_onlispan1"></span>
		            <span class="c_onlispan2"><span class="c_onmain"><#if followUids??>${followUids?size}<#else>0</#if></span></span>
		            <span class="c_onlispan3"></span>
		           </a>
		         </li>
		         <li>
		           <a href="/community.htm?act=favorite" title="我的喜欢">
		            <span class="c_onlispan4"></span>
		            <span class="c_onlispan2"><span class="c_onmain"><#if favoriteTopicIds??>${favoriteTopicIds?size}<#else>0</#if></span></span>
		            <span class="c_onlispan5"></span>
		           </a>
		         </li>
		       </ul>
		       <div class="comm_remy">
		          <a href="/community.htm?act=replies" title="回应我的">
		            <span class="comm_respan1"></span>
		            <span class="c_onlispan2"><span class="c_onmain"><#if repliesIds??>${repliesIds?size}<#else>0</#if></span></span>
		            <span class="comm_respan2"></span>
		           </a>
		       </div>
		   </div>
		   <div class="community_put">
		      <dl class="dldl">
			     <dt>
	     			<#if isWuye??&&isWuye>
			     		<#if user.xqtable??>
			     			<a title="发布小区公告" href="/community/bulletin/publish.htm">发布</a>
			     		<#else>
			     			<a title="请填写小区信息">发布</a>
			     		</#if>
		     		<#else>
		     			<a title="发布小区信息" href="/community/publish.htm">发布</a>
		     		</#if>
			     </dt>
				 <dd><a class="com_a11">小区信息</a></dd>
				 <dd><a class="com_a22">小区公告</a></dd>
			  </dl>
		   </div>
	    </div>
	    <div id="com_1">
	    <#if xq3Topic??>
		    <#list xq3Topic as xqt>
			   <!--[if !IE]>用户信息<![endif]-->
			   <div class="community_user">
			     <dl>
				    <dt><a href="<#if xqt.user??>/index.php?app=home&mod=Space&act=index&uid=${xqt.user.uid}</#if>"><img src="<#if xqt.user??>/data/uploads/avatar/${xqt.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="" /></a></dt>
					<dd class="com_u_dd1"><a href="<#if xqt.user??>/index.php?app=home&mod=Space&act=index&uid=${xqt.user.uid}</#if>"><#if xqt.user??>${xqt.user.uname}</#if></a></dd>
					<dd class="com_u_dd2"><a href="#none">${xqt.title}</a></dd>
				 </dl>
			   </div>
			  </#list>
		  </#if>
		   </div>
		   
		   
	    <div id="com_2" style="display:none;">
	    <#if user.xqtable??>
		    <#if xq3Notice??>
			    <#list xq3Notice as xqn>
				   <!--[if !IE]>用户信息<![endif]-->
				   <div class="community_user">
				     <dl>
					    <dt><a href="<#if xqn.user??>/index.php?app=home&mod=Space&act=index&uid=${xqn.user.uid}</#if>"><img src="<#if xqn.user??>/data/uploads/avatar/${xqn.user.uid}/middle.jpg<#else>/images/default_avatar.jpg</#if>" alt="" /></a></dt>
						<dd class="com_u_dd1"><a href="<#if xqn.user??>/index.php?app=home&mod=Space&act=index&uid=${xqn.user.uid}</#if>"><#if xqn.user??>${xqn.user.uname}</#if></a></dd>
						<dd class="com_u_dd2"><a href="#none">${xqn.title}</a></dd>
					 </dl>
				   </div>
			    </#list>
		    <#else>
		    	暂无公告
			</#if>
	    <#else>
	    	请填写小区信息
		</#if>		
	    </div>
	  </div>	
   </div>
  </div>
   <!--[if !IE]>右边（结束）<![endif]-->
