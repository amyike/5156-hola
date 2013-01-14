<#escape x as (x)!>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>小区内容</title>
<script language="javascript" type="text/javascript" src="master/js/jquery-1.7.1.min.js"></script>
<script language="javascript" type="text/javascript" src="master/js/edit.js"></script>
<script language="javascript" type="text/javascript" src="master/js/pager.js"></script>
<script language="javascript" type="text/javascript">
   
</script>
</head>
<body>
  <table border=1 width="100%" >
    <thead>    
      <tr>
        <td colspan="100%" align="left">
                当前位置：小区内容管理
        </td>
      </tr>
      <tr>
        <td colspan="100%" align="left">
          <input type="button" onclick="del('${module}',null);" value="删除"/>
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
	  <#list page.elements?sort_by("id")?reverse  as xqtopic>
	    <tr align="center">
	      <td>
	        <input type="checkbox" name="checkbox" value="${xqtopic.id}" />
	      </td>
		<td>
		  ${xqtopic.id}
		</td>
		<td>
		  <a href="#"><#if xqtopic.title?length lt 10>${xqtopic.title}<#else>${xqtopic.c_title[0..10]}</#if></a>
		</td>
		<td>
		  <#if xqtopic.title?length lt 15>${xqtopic.content}<#else>${xqtopic.content[0..15]}</#if>
		</td>
	    <td>
		${xqtopic.time?string("yyyy-MM-dd HH:mm")}
		</td>
	    <td>
		  <a href="javascript:void(0);" onclick="del('${module}',${xqtopic.id})">删除</a>
		</td>
	  </tr>
	</#list>
	  <tr>
        <td colspan="100%" align="center">
      	      ${page.pageString}
        </td>
      </tr>
	</#if>
	</tbody>
	<tfoot>
	  <tr>
        <td colspan="100%" align="left">
          <input type="button" onclick="del('${module}',null);" value="删除"/>
        </td>
      </tr>
    </tfoot>
  </table>
</body>
</html>
</#escape>e