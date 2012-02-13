<#escape x as (x)!>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>社区主页-45公社-乐享城市轻社区</title>
</head>
<body>
${user}
${latestProduct.name}
${latestProduct.url}

 <#assign x = 1>  
<@repeat count=4>  
  Test ${x}   
  <#assign xx = x + 1>  
</@repeat>  
<@repeat count=3 hr=true>  
  Test   
</@repeat>    
<@repeat count=3; cnt>  
  ${cnt}. Test   
</@repeat>
</body>
</html>
</#escape>