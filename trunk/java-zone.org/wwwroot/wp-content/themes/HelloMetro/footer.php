<div class="clear"></div>
</div>
<div class="clear"></div>
<div id="footer">
<div id="footer-body">
<a id="footer-logo" rel="nofollow" href="http://www.itkes.com/"></a>
<div id="footer-content">
Copyright <?php echo comicpress_copyright(); ?> <?php bloginfo('name'); ?> |  
<a href="http://www.itkes.com/sitemap.html" target="_blank">站点地图</a> |  <?php if (get_option('swt_beian') == 'Display') { ?>
<a href="http://www.itkes.com/" rel="external"><?php echo stripslashes(get_option('swt_beianhao')); ?></a>
<?php { echo '|'; } ?><?php } else { } ?> 
<a href="http://tongji.baidu.com/hm-web/welcome/ico?s=f70aad2a9021b3ed988694ccce8dc8d4" rel="external">百度统计</a><div style="display: none;" id="tongji"><?php if (get_option('swt_tj') == 'Display') { ?><?php echo stripslashes(get_option('swt_tjcode')); ?><?php { echo '|'; } ?>	<?php } else { } ?></div>
| 主题由<a href="http://www.itkes.com/" target="_blank"> IT客栈</a> 制作 | 本主题基于<a href="http://www.wordpress.org/" rel="external">WordPress</a>技术构建 <!-- 返回顶部 -->
<div style="display: none;" id="gotop"></div>
<script type='text/javascript'>
	backTop=function (btnId){
		var btn=document.getElementById(btnId);
		var d=document.documentElement;
		var b=document.body;
		window.onscroll=set;
		btn.onclick=function (){
			btn.style.display="none";
			window.onscroll=null;
			this.timer=setInterval(function(){
				d.scrollTop-=Math.ceil((d.scrollTop+b.scrollTop)*0.1);
				b.scrollTop-=Math.ceil((d.scrollTop+b.scrollTop)*0.1);
				if((d.scrollTop+b.scrollTop)==0) clearInterval(btn.timer,window.onscroll=set);
			},10);
		};
		function set(){btn.style.display=(d.scrollTop+b.scrollTop>100)?'block':"none"}
	};
	backTop('gotop');
</script>
<!-- 返回顶部END -->
<?php
if( is_single() ){?>
<script type="text/javascript" charset="utf-8">
$(function(){
$("#btn_page_prev,#btn_page_next").hover(function(){$(this).find("span").show();},function(){$(this).find("span").hide();});
});
</script>

<?php }?>
</div>
<?php wp_footer(); ?>
</body>
</html>