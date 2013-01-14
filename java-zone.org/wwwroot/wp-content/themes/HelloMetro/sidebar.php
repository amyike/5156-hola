<div id="sidebar">
<div class="sidebar-roll">
<div class="sidebar-img2">
<a href="http://www.itkes.com/?feed=rss2" rel="bookmark" target="_blank" title="订阅到RSS"><img width="40" height="40" src="<?php echo get_bloginfo('template_directory').'/images/rss.png' ?>" alt="订阅到RSS" title="订阅到RSS" /></a>
<a href="http://www.xianguo.com/subscribe.php?url=http://feed.feedsky.com/itkes" rel="bookmark" target="_blank" title="订阅到鲜果"><img width="40" height="40" src="<?php echo get_bloginfo('template_directory').'/images/XianGuo.png' ?>" alt="订阅到鲜果" title="订阅到鲜果" /></a>
<a href="http://mail.qq.com/cgi-bin/feed?u=http://feed.feedsky.com/itkes" rel="bookmark" target="_blank" title="订阅到QQ邮箱"><img width="40" height="40" src="<?php echo get_bloginfo('template_directory').'/images/QMail.png' ?>" alt="订阅到QQ邮箱" title="订阅到QQ邮箱" /></a>
<a href="http://fusion.google.com/add?feedurl=http://feed.feedsky.com/itkes" rel="bookmark" target="_blank" title="订阅到Google Reader"><img width="40" height="40" src="<?php echo get_bloginfo('template_directory').'/images/Google.png' ?>" alt="订阅到Google Reader" title="订阅到Google Reader" /></a>
<a href="http://feed.feedsky.com/itkes" rel="bookmark" target="_blank" title="订阅更多..."><img width="40" height="40" src="<?php echo get_bloginfo('template_directory').'/images/Add.png' ?>" alt="订阅更多..." title="订阅更多..." /></a></div>
</div>

<!--小工具上-->
<div class="sidebarWidget">
        <?php if(is_dynamic_sidebar()) dynamic_sidebar('小工具上');?>
    </div>

<!--TAB选项卡-->
<li class="widget tab_box" id="tab_box_posts">
<ul class="tab_menu">
<li class="current">热门围观</li>
<li>最新文章</li>
<li>最新评论</li></ul>
<div class="tab_content">
<div class>
<ul class="tab_post_links">
<?php simple_get_most_viewed(); ?>
</ul>
</div>
<div class="hide">
<ul class="tab_post_links"><?php $myposts = get_posts('numberposts=10&offset=0');foreach($myposts as $post) :?>
<li><a href="<?php the_permalink(); ?>" rel="bookmark" target="_blank" title="详细阅读 <?php the_title_attribute(); ?>"><?php echo cut_str($post->post_title,36); ?></a></li><?php endforeach; ?>
</ul>
</div>

<div class="hide">
<div class="r_comment">
<ul>
		<?php
			global $wpdb;
			$sql = "SELECT DISTINCT ID, post_title, post_password, comment_ID, comment_post_ID, comment_author, comment_date_gmt, comment_approved, comment_type,comment_author_url,comment_author_email, SUBSTRING(comment_content,1,16) AS com_excerpt FROM $wpdb->comments LEFT OUTER JOIN $wpdb->posts ON ($wpdb->comments.comment_post_ID = $wpdb->posts.ID) WHERE comment_approved = '1' AND comment_type = '' AND post_password = '' AND user_id='0' ORDER BY comment_date_gmt DESC LIMIT 10";
			$comments = $wpdb->get_results($sql);
			$output = $pre_HTML;
                        
			foreach ($comments as $comment) {
if($comment->comment_author == "")
{$comment->comment_author="匿名";}
$output .= "\n<li>".get_avatar(get_comment_author_email(), 50).strip_tags($comment->comment_author).":<br />" . " <a href=\"" . get_permalink($comment->ID) ."#comment-" . $comment->comment_ID . "\" title=\"查看 " .$comment->post_title . "\">" . strip_tags($comment->com_excerpt)."</a></li>";}
			$output .= $post_HTML;
			$output = convert_smilies($output);
			echo $output;
		?> 
</ul></div>
</div>
</li>

<!--小工具中-->
 <div class="sidebarWidget">
        <?php if(is_dynamic_sidebar()) dynamic_sidebar('小工具中');?>
    </div>


<!--侧边栏广告-->

<?php if (get_option('swt_ada') == 'Display') { ?>
<div class="sidebarWidget"><h3>大家赞助</h3><div><?php echo stripslashes(get_option('swt_adacode')); ?></div></div><?php { echo ''; } ?><?php } else { } ?>

<!--读者和留言-->

<li class="widget tab_box">
<ul class="tab_menu">
<li class="current">发现精彩</li>
<li>标签云集</li>
<li>更多精彩</li></ul>
<div class="tab_content">
<div class>
<ul class="tab_post_links"><?php $myposts = get_posts('numberposts=7&orderby=rand');foreach($myposts as $post) :?>
<li><a href="<?php the_permalink(); ?>" rel="bookmark" target="_blank" title="详细阅读 <?php the_title_attribute(); ?>"><?php echo cut_str($post->post_title,36); ?></a></li><?php endforeach; ?>
</ul>
</div>

<div class="hide" style="margin-bottom:5px"><div class="tags">
<ul>
	<?php wp_tag_cloud('smallest=12&largest=18&unit=px&number=50&orderby=count&order=RAND');?>		
</ul></div><div style="clear:both"></div>
</div>

<div class="hide">
<ul class="tab_post_links">
<li><a href="http://www.itkes.com?random" target="_blank" title="点我随机推荐一篇文章">点我试试手气</a></li>
<li><a href="http://list.qq.com/cgi-bin/qf_invite?id=c89e640f045018e6a93ec9627b6fc7f20d49b0a0113c35a9" target="_blank" title="通过QQ订阅本站">订阅到QQ邮箱</a></li>
<li><a href="http://www.itkes.com/?feed=rss2" target="_blank" title="通过RSS订阅本站">通过RSS订阅</a></li>
<li><a href="http://www.itkes.com/?page_id=80" target="_blank" title="去留言板吐槽一番吧">温情留言板</a></li>
</ul><div style="clear:both"></div>
</div>
</li>

<!--小工具下-->
 <div class="sidebarWidget">
        <?php if(is_dynamic_sidebar()) dynamic_sidebar('小工具下');?>
    </div>

<!--侧边栏博客统计-->
<?php if (get_option('swt_blogtj') == 'Display') { ?>
<div class="sidebarWidget"><?php include('includes/r_statistics.php'); ?></div>
<?php { echo ''; } ?><?php } else { } ?>

<div id="rollstart"></div>

</div>
</div>