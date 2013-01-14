<?php
/*
Template Name: Link
*/
?>
<?php get_header(); ?>
<div id="roll"><div title="回到顶部" id="roll_top"></div><div title="查看评论" id="ct"></div><div title="转到底部" id="fall"></div></div>
<div id="content">
<div class="main"><?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<script type="text/javascript">
jQuery(document).ready(function($){
$(".flink a").each(function(e){
	$(this).prepend("<img src=http://www.google.com/s2/favicons?domain="+this.href.replace(/^(http:\/\/[^\/]+).*$/, '$1').replace( 'http://', '' )+" style=float:left;padding:5px;>");
}); 
});
</script>
<div class="article">
<div class="left">
<h2 class="page_title" style="font-size: 15px;font-weight: normal;color: #969696;">友情链接</h2>
<div class="flink"><ul>
<?php wp_list_bookmarks('orderby=id&category_orderby=id'); ?></ul>
</div>
<div class="clear"></div>
</div>
</div>

<div class="articles">
<h2 class="page_title" style="font-size: 15px;font-weight: normal;color: #969696;">温情留言板</h2>
<?php comments_template(); ?>
</div>

	<?php endwhile; else: ?>
	<?php endif; ?>
</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>