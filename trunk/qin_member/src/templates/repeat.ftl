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