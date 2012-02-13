function formatTime(sT,cT){
var str=sT;
	var s1=toNewDate(sT);
	var s2=toNewDate(cT);
	var dif=(s2-s1)/1000;
	if (dif<3)
	{str="1秒钟前";}
	else if (dif >=3 && dif<60 ){
		str=dif+"秒钟前";
	}else if (dif >=60 && dif<3600 ){
		str=Math.floor(dif/60)+"分钟前";
	}else if (dif >=3600 && dif<86400) {
		str=Math.floor(dif/3600)+"小时前";
	}
return str;
}

function toNewDate(sDate){
	var s=sDate.split(' ');
	var s1=s[0].split('-');
	var s2='';
	switch(toInt(s1[1])){
		case 1:
			s2='January';
			break;
		case 2:
			s2='February';
			break;
		case 3:
			s2='March';
			break;
		case 4:
			s2='April';
			break;
		case 5:
			s2='May';
			break;
		case 6:
			s2='June';
			break;
		case 7:
			s2='July';
			break;
		case 8:
			s2='August';
			break;
		case 9:
			s2='September';
			break;
		case 10:
			s2='October';
			break;
		case 11:
			s2='November';
			break;
		case 12:
			s2='December';
			break;
	}
	var s3=s2+' '+s1[2]+', '+s1[0]+' '+s[1];
	return Date.parse(s3);
}

//2008-04-12 01:13:17
function splitTime(t){
var t1=t.split(" ");
var t2=t1[0].split("-");
var t3=t1[1].split(":");
var t4=new Array();
t4[0]=toInt(t2[0]);
t4[1]=toInt(t2[1]);
t4[2]=toInt(t2[2]);
t4[3]=toInt(t3[0]);
t4[4]=toInt(t3[1]);
t4[5]=toInt(t3[2]);
return t4;
}

function toInt(str){
if(str.length==2 && str.substring(0,1)=='0')
str=str.substring(1);
return parseInt(str);
}

function showInfo(id,info,autoHide){
	var infobox = SigmaUtil.$(id);
	infobox.style.display="";
	infobox.innerHTML = info;
	if(autoHide)
		toHide(id);
}
function toHide(id){
	setTimeout('doHide("'+id+'")',1000*3);
}

function doHide(id){
	SigmaUtil.$(id).style.display = "none";
}

function toEnable(id){
	setTimeout('doEnable("'+id+'")',1000*3);
}
function doEnable(id){
	su.$(id).disabled = false;
}

function getCookies(){
	var map = {};
	var s = window.document.cookie;
	var ss = s.split(";");
	for(var i=0;i<ss.length;i++){
		var nvp = ss[i].split("=");
		map[nvp[0].trim()] = nvp[1].trim();
	}
	return map;
}