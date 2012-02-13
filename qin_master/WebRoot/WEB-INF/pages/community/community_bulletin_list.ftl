<#escape x as (x)!>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>小区公告</title>
<script language="javascript" type="text/javascript" src="/master/js/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="/master/js/edit.js"></script>
<script language="javascript" type="text/javascript" src="/master/js/pager.js"></script>
</head>
<body>
  <table border=1 width="100%" >
    <thead>
      <tr>
        <td colspan="100%" align="left">
                  <div id="module" value="bulletin">当前位置：小区公告管理</div>
        </td>
      </tr>
      <tr>
        <td colspan="100%" align="left">
  			<input type="button" onclick="del(null);" value="删除"/>
            <input type="button" onclick="updType(1, null);" value="推荐"/>
            <input type="button" onclick="updType(2, null);" value="置顶"/>
        </td>
      </tr>
      <tr>
		<th width="5%"><input type="checkbox" onclick="checkAll(this);" /></th>
		<th>ID</th>
		<th>标题</th>
		<th>内容</th>
		<th>发布时间</th>
		<th>操作</th>
	  </tr>
      </thead>
      <tbody>
      <#if page?? && page.elements??>
	  <#list page.elements?sort_by("id")?reverse  as xqnotice>
	    <tr align="center">
	      <td>
	        <input type="checkbox" name="checkbox" value="${xqnotice.id}" />
	      </td>
		<td>
		  ${xqnotice.id}
		</td>
		<td>
		  <a href="#"><#if xqnotice.title?length lt 10>${xqnotice.title}<#else>${xqnotice.c_title[0..10]}</#if></a>
		</td>
		<td>
		  <#if xqnotice.title?length lt 15>${xqnotice.content}<#else>${xqnotice.content[0..15]?html}</#if>
		</td>
	    <td>
		${xqnotice.time?string("yyyy-MM-dd HH:mm")}
		</td>
	    <td>
		  <a href="javascript:void(0);" onclick="del(${xqnotice.id});">删除</a>
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
            <input type="button" onclick="updType(1, null);" value="推荐"/>
            <input type="button" onclick="updType(2, null);" value="置顶"/>
        </td>
      </tr>
    </tfoot>
  </table>
</body>
</html>
</#escape>