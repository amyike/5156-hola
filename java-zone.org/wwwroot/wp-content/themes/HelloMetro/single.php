<?php get_header(); ?>
<span id="btn_page_prev"><?php previous_post_link( '%link', '<span id="fanye">‹</span>' ); ?></span>   
<span id="btn_page_next"><?php next_post_link( '%link', '<span id="fanye">›</span>' ); ?></span>
<div id="content">
<div class="main">

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<div class="left">
<div class="post_date">
<span class="date_ym"><?php the_time('Y') ?>.<?php echo date('m',get_the_time('U'));?></span>
<span class="date_d"><?php the_time('d') ?></span>
</div>
<div class="articles">
<div class="post-title-single">
<h2><?php the_title(); ?></h2></div>
<div class="infosingle">
<div id="singleinfo">
<span class="info-user-icon">
来源：<?php $custom_fields = get_post_custom_keys($post_id);  
if (!in_array ('copyright', $custom_fields)) : ?>
本站原创 
<?php else: ?>  
<?php $custom = get_post_custom($post_id);
$custom_url=$custom['copyrighturl'] ;  
$custom_value = $custom['copyright']; ?>  
<a target="_blank" href="<?php echo $custom_url[0] ?>" ><?php echo $custom_value[0] ?></a>
<?php endif; ?> 
</span>
<span class="info-category-icon"><?php the_category(', ') ?></span>
<span class="info-view-icon">超过<?php if(function_exists(the_views)) { the_views();}?>围观</span>
<span class="info-comment-icon"><?php comments_popup_link ('0条评论','1条评论','%条评论'); ?></span></div>
<div id="baidushare" class="bdshare_b" style="line-height: 12px;"><img src="http://bdimg.share.baidu.com/static/images/type-button-1.jpg?cdnversion=20120831" />
		<a class="shareCount"></a>
	</div>
<script type="text/javascript" id="bdshare_js" data="type=button&amp;uid=6108031" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
    document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
</script>
</div>

        <div class="context">
        <?php if (get_option('swt_adb') == 'Display') { ?><div style="float:right;border:1px #ccc solid;padding:2px;overflow:hidden;margin:12px 0 1px 2px;"><?php echo stripslashes(get_option('swt_adbcode')); ?></div><?php { echo ''; } ?><?php } else { } ?><?php the_content('Read more...'); ?>

 <?php single_fenye();?>
 <?php echo feed_copyright();?>

<div class="feed-tip">
        <div>上篇文章：<?php if (get_previous_post()) { previous_post_link('%link','%title');} else { echo "没有了，已经是最后文章";} ?></div>
        <div>下篇文章：<?php if (get_next_post()) { next_post_link('%link','%title');} else { echo "木有了，已经是最新文章";} ?></div>
        </div>

</div>
        <?php if (get_option('swt_adc') == 'Display') { ?><p style="text-align:center;"><?php echo stripslashes(get_option('swt_adccode')); ?></p><?php { echo ''; } ?><?php } else { } ?>
</div>
</div>

<div class="articles">
<div id="wumiiLikeRecBtnDiv" class="wumii"></div>
</div>

<div class="articles">
<div class="post-author"><div class="avatar"><?php echo get_avatar( get_the_author_email(), '70' ); ?></div>
<div class="post-author-desc">
<a class="post-author-name" target="_blank" title="去看看他/她的专栏" href="#"><span><?php  echo the_author_meta( 'nickname' ); ?></span></a><br>
<div class="post-author-description"><?php  echo the_author_meta( 'description' ); ?></div>
<div class="post-author-links"><a rel="nofollow" target="_blank" href="#">查看Ta的专栏</a><?php if (get_the_author_meta('weibo_sina')!=""){ ?><?php echo "<a href='" . get_the_author_meta('weibo_sina') . "' target='_blank'> | 新浪微博</a>"; ?><?php } ?><?php if (get_the_author_meta('weibo_tx')!=""){ ?><?php echo "<a href='" . get_the_author_meta('weibo_tx') . "' target='_blank'> | 腾讯微博</a>"; ?><?php } ?><?php if (get_the_author_meta('renren')!=""){ ?><?php echo "<a href='" . get_the_author_meta('renren') . "' target='_blank'> | 人人</a>"; ?><?php } ?></div>
<div class="clear" style="clear both"></div>
<div class="post-author-title">关于本文小编</div>
</div>
</div>
</div>

<div class="articles">
<div class="post-author">
    <div class="post-author-title">本站其他资源</div>
<ul class="maintab_menu">
<li>相关文章</li>
<li>为您推荐</li>
<li class="current">各种观点</li></ul>
<div class="maintab_content">
<div class="mainhide">
<div id="wumiiDisplayDiv" class="wumiidisplay">
</div>
 </div>
 <div class="mainhide">
<?php include('includes/related.php'); ?>
 </div>
 <div class="">
<?php comments_template(); ?>
</div>
</div>
    </div>
</div>

	<?php endwhile; else: ?>
	<?php endif; ?>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>