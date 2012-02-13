<script language="javascript" type="text/javascript" src="/componets/artDialog/scripts/artDialog.js?skin=default"></script>
<script language="javascript" type="text/javascript" src="/componets/artDialog/scripts/jquery.artDialog.js?skin=default"></script>
<script language="javascript" type="text/javascript" src="/componets/artDialog/scripts/artDialog.iframeTools.js"></script>
<script language="javascript" type="text/javascript">
	function showOk(params){
		art.dialog({
			title: params.title? params.title: '提示', 
			content: params.content?params.content: '...', 
			icon: 'face-smile', lock: true, 
			yesFn: params.yesFn? params.yesFn: function () {return true;},
			noFn: params.noFn? params.noFn: null
		});
	}
	function showNo(params){
		art.dialog({
			title: params.title? params.title: '提示', 
			content: params.content?params.content: '...', 
			icon: 'face-sad', lock: true, 
			yesFn: params.yesFn? params.yesFn: function () {return true;},
			noFn: params.noFn? params.noFn: null
		});
	}
</script>