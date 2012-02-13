<#escape x as (x)!>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>小区内容</title>
<script language="javascript" type="text/javascript" src="/master/js/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="/master/js/edit.js"></script>
<script language="javascript" type="text/javascript">
   
</script>
</head>
<body>
  <table border=1 width="100%" >
    <thead>    
      <tr>
        <td colspan="100%" align="left">
                <div id="module" value="city">当前位置：同城内容管理</div>
        </td>
      </tr>
      <tr>
        <td colspan="100%" align="left">
        	<input type="checkbox" onclick="checkAll(this);"/>全选
            <input type="button" onclick="del(null);" value="删除"/>
            <select onchange="updType(this.value, null);" title="选择推荐类型或取消推荐">
			  	<option value="0" title="选择类型/取消推荐">选择类型/取消推荐
			  	<option value="1"><strong>推荐</strong>
			  	<option value="2"><strong>热门</strong>
			  	<option value="3"><strong>置顶</strong>
			  	<option value="4"><strong>全类别时置顶</strong>
		    </select>
        </td>
      </tr>
      <tr>
		<th width="5%">选中</th>
		<th>ID</th>
		<th>标题</th>
		<th>内容</th>
		<th>用户</th>
		<th>类别</th>
		<th>发布时间</th>
		<th>操作</th>
	  </tr>
      </thead>
      <tbody>
	  <#if page?? && page.elements??>
	  <#list page.elements?sort_by("id")?reverse  as cityinfo>
	    <tr align="left">
		    <td align="center">
		      <input type="checkbox" name="checkbox" value="${cityinfo.id}" />
		    </td>
			<td>
			  ${cityinfo.id}
			</td>
			<td>
			  <#if cityinfo.title?length lt 10>${cityinfo.title}<#else>${cityinfo.c_title[0..10]}</#if>
			</td>
			<td>
			  <#if cityinfo.content?length lt 25>${cityinfo.content}<#else>${cityinfo.content[0..25]?html}</#if>
			</td>
			<td>
			  ${cityinfo.user.uname}
			</td>
			<td>
			  ${cityinfo.cityCategory.title}
			</td>
		    <td>
			${cityinfo.time?string("yyyy-MM-dd HH:mm")}
			</td>
		    <td>
		      <input type="button" onclick="del(${cityinfo.id});" value="删除">
			  <select onchange="updType(this.value, ${cityinfo.id});" title="选择推荐类型或取消推荐">
			  	<option value="0" <#if cityinfo.type==0>selected</#if>><#if cityinfo.type==0>选择类型<#else>取消推荐</#if>
			  	<option value="1" <#if cityinfo.type==1>selected</#if>><strong>推荐</strong>
			  	<option value="2" <#if cityinfo.type==2>selected</#if>><strong>热门</strong>
			  	<option value="3" <#if cityinfo.type==3>selected</#if>><strong>置顶</strong>
			  	<option value="4" <#if cityinfo.type==4>selected</#if>><strong>全类别时热门</strong>
			  	<option value="5" <#if cityinfo.type==5>selected</#if>><strong>全类别时置顶</strong>
			  </select>
			</td>
	  </tr>
	</#list>
	  <tr>
        <td colspan="100%" align="center">
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
        </td>
      </tr>
	</#if>
	</tbody>
	<tfoot>
	  <tr>
        <td colspan="100%" align="left">
  			<input type="button" onclick="del(null);" value="删除"/>
            <select onchange="updType(this.value, null);" title="选择推荐类型或取消推荐">
			  	<option value="0" title="选择类型/取消推荐">选择类型/取消推荐
			  	<option value="1" title="本类别中推荐"><strong>本类别推荐</strong>
			  	<option value="2" title="本类别中热门"><strong>本类别热门</strong>
			  	<option value="3" title="本类别中热门"><strong>全部类别时热门</strong>
			  	<option value="4" title="本类别中置顶"><strong>本类别置顶</strong>
			  	<option value="5" title="整站类别中置顶"><strong>全部类别时置顶</strong>
		    </select>
        </td>
      </tr>
    </tfoot>
  </table>
</body>
</html>
</#escape>