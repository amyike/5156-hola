function createPageBar(pageNumber,pageSize,pageIndex,url,viewedNum,param){
	if(pageNumber<=1)
		return "";
	if (param==null)
		param="";
	if(viewedNum==null)
		viewedNum = 5;
	var firstNumber = pageIndex-Math.floor(viewedNum/2);
	
	if(firstNumber<1)
		firstNumber = 1;
	var lastNumber = firstNumber+viewedNum-1;
	if(lastNumber>pageNumber)
		lastNumber = pageNumber;
	if((lastNumber-firstNumber+1<viewedNum) && pageNumber>viewedNum){
		firstNumber= lastNumber-viewedNum+1;
	}
	var num=lastNumber-firstNumber+1;
	if (num<viewedNum){
		firstNumber=lastNumber-viewedNum-1;
		if(firstNumber<0)
		{
		firstNumber=1;
		}
	}
	var sb = [];
	var curl = '';
	sb.push('<ul>');
	pageSize = pageSize + "&_isRFPB=true";
	var joinChar = "&";
	if(url.indexOf("?")<0)
		joinChar = "?";
	if(pageIndex>1 && pageIndex <= pageNumber){
	    curl = url+joinChar+'pageIndex='+(1)+'&pageSize='+pageSize+param;
	    sb.push('<li><a href="'+curl+'">首页</a></li>');
		curl = url+joinChar+'pageIndex='+(pageIndex-1)+'&pageSize='+pageSize+param;
		sb.push('<li><a href="'+curl+'">上一页</a></li>');
	}
	for(var i=firstNumber;i<=lastNumber;i++){
		if(i==pageIndex){
			curl = url+joinChar+'pageIndex='+i+'&pageSize='+pageSize+param;
			sb.push('<li class="ch"> <a href="'+curl+'">'+i+'</a></li>');
		}else{
			curl = url+joinChar+'pageIndex='+i+'&pageSize='+pageSize+param;
			sb.push('<li> <a href="'+curl+'">'+i+'</a></li>');
		}
	}
	if(pageIndex<pageNumber){
		curl = url+joinChar+'pageIndex='+(pageIndex+1)+'&pageSize='+pageSize+param;
		sb.push('<li><a href="'+curl+'">下一页</a></li>');
		curl = url+joinChar+'pageIndex='+(pageNumber)+'&pageSize='+pageSize+param;
		sb.push('<li><a href="'+curl+'">末页</a></li>');
	}
	sb.push('<li>共' + pageNumber + '页，跳转至</li>');  	
	sb.push('<li><select id="pid" onchange="location.href=this.value">');  		
	for(var i=1;i<=pageNumber;i++){	
	if(i==pageIndex){
		curl = url+joinChar+'pageIndex='+i+'&pageSize='+pageSize+param;
		sb.push('<li> <option value="'+curl+'"  selected="selected">'+i+'</option></li>');
	}else{
		curl = url+joinChar+'pageIndex='+i+'&pageSize='+pageSize+param;
		sb.push('<li> <option value="'+curl+'">'+i+'</option></li>');
	}
	}
	sb.push('</select></li>');

	sb.push('</ul>');
	return sb.join('');
}