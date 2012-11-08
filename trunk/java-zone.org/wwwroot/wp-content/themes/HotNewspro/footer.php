<div class="clear"></div>
<div class="footer_top">
	<div id="menu">
		<?php 
			$catNav = '';
			if (function_exists('wp_nav_menu')) {
				$catNav = wp_nav_menu( array( 'theme_location' => 'footer-menu',  'echo' => false, 'fallback_cb' => '' ) );};
			if ($catNav == '') { ?>
				<ul id="cat-nav" class="nav">
					<?php wp_list_pages('depth=1&sort_column=menu_order&title_li='); ?>
				</ul>
		<?php } else echo($catNav); ?>
	</div>
	<h2 class="blogtitle">
	<a href="<?php bloginfo('home'); ?>/" title="返回<?php bloginfo('name'); ?>首页"><?php bloginfo('name'); ?></a></h2>
	<?php wp_reset_query();if ( is_home()){ ?><div class="link_s"><a href="<?php echo stripslashes(get_option('swt_link_s')); ?>" title="友情链接">随机显示不分先后 更多</a></div><?php } ?>
	<big class="lt"></big>
	<big class="rt"></big>
</div>
<!-- 页脚 -->
<?php wp_reset_query();if (is_single() || is_page() || is_archive() || is_search()) { ?>
<div class="footer_bottom_a">
	Copyright <?php echo comicpress_copyright(); ?> <a href="<?php bloginfo('home'); ?>/" title="<?php bloginfo('name'); ?>"><?php bloginfo('name'); ?></a>&nbsp;&nbsp;保留所有权利.
	<a target="_blank" href="http://www.miibeian.gov.cn" rel="external nofollow">浙ICP备12040790号</a>
	&nbsp;&nbsp;基于<a target="_blank" href="http://wordpress.org/" title="WordPress.org" rel="external nofollow"> WordPress</a> 技术创建
	&nbsp;&nbsp;Theme by <a target="_blank" href="http://zmingcx.com" rel="external nofollow">Robin</a>
	&nbsp;&nbsp;
	<a href="<?php bloginfo('home'); ?>/sitemap_baidu.xml" target="_blank">百度地图</a> 
	<a href="<?php bloginfo('home'); ?>/sitemap.xml" target="_blank">谷歌地图</a>
	<span aligin="center">
		<br>本站为个人站点，部分内容摘自网络，仅供学习交流之用，将不对任何资源负法律责任。<br>
		如有侵犯您的版权，请及时联系我(<a href="mailto:kaliry@126.com">kaliry@126.com</a>)，本人会尽快处理。
	</span>
	&nbsp;&nbsp;<?php echo stripslashes(get_option('swt_track_code')); ?>
	<big class="lb"></big>
	<big class="rb"></big>
</div>
<?php } ?>
<!-- 首页页脚 -->
<?php wp_reset_query();if ( is_home()){ ?>
<div class="link">
	<?php
		if(function_exists('wp_hto_get_links')){
		wp_hot_get_links();
		}else{
		wp_list_bookmarks('title_li=&categorize=1&category=&orderby=rand&limit=38&show_images=');
		}
	?>
	<div class="clear"></div>
</div>
<div class="link_b">
	<big class="lb"></big>
	<big class="rb"></big>
</div>
<!-- end: link -->
<div class="footer_bottom">
	Copyright <?php echo comicpress_copyright(); ?> <a href="<?php bloginfo('home'); ?>/" title="<?php bloginfo('name'); ?>"><?php bloginfo('name'); ?></a>&nbsp;&nbsp;保留所有权利.
	<a target="_blank" href="http://www.miibeian.gov.cn" rel="external nofollow">浙ICP备12040790号</a>
	&nbsp;&nbsp;基于<a target="_blank" href="http://wordpress.org/" title="WordPress.org" rel="external nofollow"> WordPress</a> 技术创建
	&nbsp;&nbsp;Theme by <a target="_blank" href="http://zmingcx.com" rel="external nofollow">Robin</a>
	&nbsp;&nbsp;<?php echo get_num_queries(); ?>次查询
	&nbsp;&nbsp;
	<a href="<?php bloginfo('home'); ?>/sitemap_baidu.xml" target="_blank">百度地图</a> 
	<a href="<?php bloginfo('home'); ?>/sitemap.xml" target="_blank">谷歌地图</a>
	<span aligin="center">
		<br>本站为个人站点，部分内容摘自网络，仅供学习交流之用，将不对任何资源负法律责任。<br>
		如有侵犯您的版权，请及时联系我(<a href="mailto:kaliry@126.com">kaliry@126.com</a>)，本人会尽快处理。
	</span>
	&nbsp;&nbsp;<?php echo stripslashes(get_option('swt_track_code')); ?>
</div>
<?php } ?>
 <div class="clear"></div>
</div>
<?php wp_footer(); ?>
</body></html>
<?php if (get_option('swt_bulletin') == 'Hide') { ?>
<?php { echo ''; } ?>
<?php } else { include(TEMPLATEPATH . '/includes/bulletin.php'); } ?>