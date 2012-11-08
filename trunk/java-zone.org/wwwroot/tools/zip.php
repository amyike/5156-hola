<?php

//验证密码
$password = "123456";

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>zip 1.0 PHP在线压缩程序  www.idc886.com 免费空间，国外免费空间</title>
<style type="text/css">
<!--
body,td{
	font-size: 14px;
	color: #000000;
}
a {
	color: #000066;
	text-decoration: none;
}
a:hover {
	color: #FF6600;
	text-decoration: underline;
}
-->
</style>
</head>

<body>
  <form name="myform" method="post" action="<?=$_SERVER[PHP_SELF];?>">
<font color="#FF0000"> faisun_zip -在线压缩ZIP文件程序 V1.0</font><br>

<div style="color:#FF9900">
	  <p>转载请注明：本程序由 <a href="http://www.softpure.com/" target="_blank">纯粹空间</a> 提供，<a href="http://www.idc886.com/" target="_blank">IDC886</a> <a href="http://www.idc886.com/" target="_blank">免费空间</a> 收集！</p>
      <p>使用方法:把zip文件通过FTP上传到本文件相同的目录下,选择zip文件;或直接点击“浏览...”上传zip文件。</p>

      <p>解压的结果保留原来的目录结构。<font color="#0000FF">★ 用RAR软件必需使用 ZIP格式压缩 ★</font></p>
    
      <p>★ 程序下载：<a href=http://www.idc886.com/thread-65-1-1.html target=_blank>PHP在线解压程序</a>  ★ 使用完后，请删除本程序。以免被利用。</p>

<p><font color="#0000FF">★ 切记：下载完压缩包后删除压缩包，以免迅雷盗连带来流量。</font> ★ 如果你无法删除，请使用这工具：<a href=http://www.idc886.com/thread-1524-1-1.html target=_blank>PHP文件管理程序</a></p> 
      
               <a href=http://www.idc886.com/ target=_blank>IDC886.com</a> 整理收集！ <a href=http://idc886.com/ target=_blank>免费空间</a> 提供  <a href=http://www.idc886.com target=_blank>免费国外空间</a>   <a href=http://www.idc886.com/forum-23-1.html target=_blank>国外免费空间推荐</a>         
                       
      <br><br><br>
</div>
<?
if(!$_REQUEST["myaction"]):
?>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
      <td width="11%">验证密码: </td>
      <td width="89%"><input name="password" type="password" id="password" size="15"> 
      (源文件中设定的密码，默为密码为 123456，为安全，请修改此密码，或是用完后删除此程序) </td>
    </tr>	
    <tr>
      <td><input name="myaction" type="hidden" id="myaction" value="dolist"></td>
      <td><input type="submit" name="Submit" value=" 进 入 "></td>
    </tr>
  </table>
<?

elseif($_REQUEST["myaction"]=="dolist"):
	if($_REQUEST['password'] != $password) die("输入的密码不正确，请重新输入。");
	echo "选择要压缩的文件或目录：<br>";
  	$fdir = opendir('./');
	while($file=readdir($fdir)){
		if($file=='.'|| $file=='..') continue;
		echo "<input name='dfile[]' type='checkbox' value='$file' ".($file==basename(__FILE__)?"":"checked")."> ";
		if(is_file($file)){
			echo "文件: $file<br>";
		}else{
			echo "目录: $file<br>";
		}
	}
?>
<br>
压缩文件保存到目录: 
<input name="todir" type="text" id="todir" value="_idc886com_" size="15"> 
(请自行设置目录，留空为本目录,必须有写入权限)<br>
压缩文件名称:
<input name="zipname" type="text" id="zipname" value="idc886zip10.zip" size="15">
(.zip) ★ 注意：请自行设置这里的文件名，以免迅雷盗连带来流量)<br>
<br> 
<input name="password" type="hidden" id="password" value="<?=$_POST['password'];?>">
<input name="myaction" type="hidden" id="myaction" value="dozip">
<input type='button' value='反选' onclick='selrev();'>
<input type="submit" name="Submit" value=" 开始压缩 ">
<script language='javascript'>
function selrev() {
	with(document.myform) {
		for(i=0;i<elements.length;i++) {
			thiselm = elements[i];
			if(thiselm.name.match(/dfile\[]/))	thiselm.checked = !thiselm.checked;
		}
	}
}
</script>
<?

elseif($_REQUEST["myaction"]=="dozip"):

  set_time_limit(0);

  class PHPzip{

	var $file_count = 0 ;
	var $datastr_len   = 0;
	var $dirstr_len = 0;
	var $filedata = ''; //该变量只被类外部程序访问
	var $gzfilename;
	var $fp;
	var $dirstr='';
	/*
	返回文件的修改时间格式.
	只为本类内部函数调用.
	*/
    function unix2DosTime($unixtime = 0) {
        $timearray = ($unixtime == 0) ? getdate() : getdate($unixtime);

        if ($timearray['year'] < 1980) {
        	$timearray['year']    = 1980;
        	$timearray['mon']     = 1;
        	$timearray['mday']    = 1;
        	$timearray['hours']   = 0;
        	$timearray['minutes'] = 0;
        	$timearray['seconds'] = 0;
        }

        return (($timearray['year'] - 1980) << 25) | ($timearray['mon'] << 21) | ($timearray['mday'] << 16) |
               ($timearray['hours'] << 11) | ($timearray['minutes'] << 5) | ($timearray['seconds'] >> 1);
    }

	/*
	初始化文件,建立文件目录,
	并返回文件的写入权限.
	*/
	function startfile($path = 'faisun.zip'){
		$this->gzfilename=$path;
		$mypathdir=array();
		do{
			$mypathdir[] = $path = dirname($path);
		}while($path != '.');
		@end($mypathdir);
		do{
			$path = @current($mypathdir);
			@mkdir($path);
		}while(@prev($mypathdir));

		if($this->fp=@fopen($this->gzfilename,"w")){
			return true;
		}
		return false;
	}

	/*
	添加一个文件到 zip 压缩包中.
	*/
    function addfile($data, $name){
        $name     = str_replace('\\', '/', $name);
		
		if(strrchr($name,'/')=='/') return $this->adddir($name);
		
        $dtime    = dechex($this->unix2DosTime());
        $hexdtime = '\x' . $dtime[6] . $dtime[7]
                  . '\x' . $dtime[4] . $dtime[5]
                  . '\x' . $dtime[2] . $dtime[3]
                  . '\x' . $dtime[0] . $dtime[1];
        eval('$hexdtime = "' . $hexdtime . '";');

        $unc_len = strlen($data);
        $crc     = crc32($data);
        $zdata   = gzcompress($data);
        $c_len   = strlen($zdata);
        $zdata   = substr(substr($zdata, 0, strlen($zdata) - 4), 2);
		
		//新添文件内容格式化:
        $datastr  = "\x50\x4b\x03\x04";
        $datastr .= "\x14\x00";            // ver needed to extract
        $datastr .= "\x00\x00";            // gen purpose bit flag
        $datastr .= "\x08\x00";            // compression method
        $datastr .= $hexdtime;             // last mod time and date
        $datastr .= pack('V', $crc);             // crc32
        $datastr .= pack('V', $c_len);           // compressed filesize
        $datastr .= pack('V', $unc_len);         // uncompressed filesize
        $datastr .= pack('v', strlen($name));    // length of filename
        $datastr .= pack('v', 0);                // extra field length
        $datastr .= $name;
        $datastr .= $zdata;
        $datastr .= pack('V', $crc);                 // crc32
        $datastr .= pack('V', $c_len);               // compressed filesize
        $datastr .= pack('V', $unc_len);             // uncompressed filesize


		fwrite($this->fp,$datastr);	//写入新的文件内容
		$my_datastr_len = strlen($datastr);
		unset($datastr);
		
		//新添文件目录信息
        $dirstr  = "\x50\x4b\x01\x02";
        $dirstr .= "\x00\x00";                	// version made by
        $dirstr .= "\x14\x00";                	// version needed to extract
        $dirstr .= "\x00\x00";                	// gen purpose bit flag
        $dirstr .= "\x08\x00";                	// compression method
        $dirstr .= $hexdtime;                 	// last mod time & date
        $dirstr .= pack('V', $crc);           	// crc32
        $dirstr .= pack('V', $c_len);         	// compressed filesize
        $dirstr .= pack('V', $unc_len);       	// uncompressed filesize
        $dirstr .= pack('v', strlen($name) ); 	// length of filename
        $dirstr .= pack('v', 0 );             	// extra field length
        $dirstr .= pack('v', 0 );             	// file comment length
        $dirstr .= pack('v', 0 );             	// disk number start
        $dirstr .= pack('v', 0 );             	// internal file attributes
        $dirstr .= pack('V', 32 );            	// external file attributes - 'archive' bit set
        $dirstr .= pack('V',$this->datastr_len ); // relative offset of local header
        $dirstr .= $name;
		
		$this->dirstr .= $dirstr;	//目录信息
		
		$this -> file_count ++;
		$this -> dirstr_len += strlen($dirstr);
		$this -> datastr_len += $my_datastr_len;	
    }

	function adddir($name){ 
		$name = str_replace("\\", "/", $name); 
		$datastr = "\x50\x4b\x03\x04\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00"; 
		
		$datastr .= pack("V",0).pack("V",0).pack("V",0).pack("v", strlen($name) ); 
		$datastr .= pack("v", 0 ).$name.pack("V", 0).pack("V", 0).pack("V", 0); 

		fwrite($this->fp,$datastr);	//写入新的文件内容
		$my_datastr_len = strlen($datastr);
		unset($datastr);
		
		$dirstr = "\x50\x4b\x01\x02\x00\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00"; 
		$dirstr .= pack("V",0).pack("V",0).pack("V",0).pack("v", strlen($name) ); 
		$dirstr .= pack("v", 0 ).pack("v", 0 ).pack("v", 0 ).pack("v", 0 ); 
		$dirstr .= pack("V", 16 ).pack("V",$this->datastr_len).$name; 
		
		$this->dirstr .= $dirstr;	//目录信息

		$this -> file_count ++;
		$this -> dirstr_len += strlen($dirstr);
		$this -> datastr_len += $my_datastr_len;	
	}


	function createfile(){
		//压缩包结束信息,包括文件总数,目录信息读取指针位置等信息
		$endstr = "\x50\x4b\x05\x06\x00\x00\x00\x00" .
					pack('v', $this -> file_count) .
					pack('v', $this -> file_count) .
					pack('V', $this -> dirstr_len) .
					pack('V', $this -> datastr_len) .
					"\x00\x00";

		fwrite($this->fp,$this->dirstr.$endstr);
		fclose($this->fp);
	}
  }

	
	if(!trim($_REQUEST[zipname])) $_REQUEST[zipname] = "webzip10.zip"; else $_REQUEST[zipname] = trim($_REQUEST[zipname]);
	if(!strrchr(strtolower($_REQUEST[zipname]),'.')=='.zip') $_REQUEST[zipname] .= ".zip";
	$_REQUEST[todir] = str_replace('\\','/',trim($_REQUEST[todir]));
	if(!strrchr(strtolower($_REQUEST[todir]),'/')=='/') $_REQUEST[todir] .= "/";	
	if($_REQUEST[todir]=="/") $_REQUEST[todir] = "./";
	
	function listfiles($dir="."){
		global $faisunZIP;
		$sub_file_num = 0;

		if(is_file("$dir")){
		  if(realpath($faisunZIP ->gzfilename)!=realpath("$dir")){
			$faisunZIP -> addfile(implode('',file("$dir")),"$dir");
			return 1;
		  }
			return 0;
		}
		
		$handle=opendir("$dir");
		while ($file = readdir($handle)) {
		   if($file=="."||$file=="..")continue;
		   if(is_dir("$dir/$file")){
			 $sub_file_num += listfiles("$dir/$file");
		   }
		   else {
		   	   if(realpath($faisunZIP ->gzfilename)!=realpath("$dir/$file")){
			     $faisunZIP -> addfile(implode('',file("$dir/$file")),"$dir/$file");
				 $sub_file_num ++;
				}
		   }
		}
		closedir($handle);
		if(!$sub_file_num) $faisunZIP -> addfile("","$dir/");
		return $sub_file_num;
	}

	function num_bitunit($num){
	  $bitunit=array(' B',' KB',' MB',' GB');
	  for($key=0;$key<count($bitunit);$key++){
		if($num>=pow(2,10*$key)-1){ //1023B 会显示为 1KB
		  $num_bitunit_str=(ceil($num/pow(2,10*$key)*100)/100)." $bitunit[$key]";
		}
	  }
	  return $num_bitunit_str;
	}
	
	if(is_array($_REQUEST[dfile])){
		$faisunZIP = new PHPzip;
		if($faisunZIP -> startfile("$_REQUEST[todir]$_REQUEST[zipname]")){
			echo "正在添加压缩文件...<br><br>";
			$filenum = 0;
			foreach($_REQUEST[dfile] as $file){
				if(is_file($file)){
					echo "文件: $file<br>";
				}else{
					echo "目录: $file<br>";
				}
				$filenum += listfiles($file);
			}
			$faisunZIP -> createfile();
			echo "<br>压缩完成,共添加 $filenum 个文件.<br><a href='$_REQUEST[todir]$_REQUEST[zipname]'>$_REQUEST[todir]$_REQUEST[zipname] (".num_bitunit(filesize("$_REQUEST[todir]$_REQUEST[zipname]")).")</a>";
		}else{
			echo "$_REQUEST[todir]$_REQUEST[zipname] 不能写入,请检查路径或权限是否正确.<br>";
		}
	}else{
		echo "没有选择的文件或目录.<br>";
	}


endif;

?>
  </form>
</body>
</html>
