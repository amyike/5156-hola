<?php
/*
Template Name: Guestbook
*/
?>
<?php get_header(); ?>
<div id="roll"><div title="回到顶部" id="roll_top"></div><div title="查看评论" id="ct"></div><div title="转到底部" id="fall"></div></div>
<div id="content">
<div class="main"><?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<div class="left">
<div class="article">

<h2 class="page_title" style="font-size: 15px;font-weight: normal;color: #969696;">尽情吐槽吧</h2>
<div class="clear"></div>
<p class="articles_all">非常欢迎大家灌水和吐槽，有什么不愉快的说出来让大家愉快一下吧！欢迎大家积极踊跃的留言和交流</p><p>有什么想法，问题，意见和建议都可以说出来，希望能为大家打造一个自由轻松的交流环境！</p>

<?php if (get_option('swt_type') == 'Display') { ?>
<div class="v_comment"><ul>
<?php
$counts = $wpdb->get_results("SELECT COUNT(comment_ID) AS cnt, comment_author, comment_author_url, comment_author_email FROM (SELECT * FROM $wpdb->comments LEFT OUTER JOIN $wpdb->posts ON ($wpdb->posts.ID=$wpdb->comments.comment_post_ID) WHERE comment_date > date_sub( NOW(), INTERVAL 3 MONTH ) AND user_id='0' AND comment_author_email != '' AND post_password='' AND comment_approved='1' AND comment_type='') AS tempcmt GROUP BY comment_author_email ORDER BY cnt DESC LIMIT 56");
foreach ($counts as $count) {
$a = get_bloginfo('wpurl') . '/avatar/' . md5(strtolower($count->comment_author_email)) . '.jpg';
$c_url = $count->comment_author_url;
$mostactive .= '<li class="mostactive">' . '<a href="'. $c_url . '" title="' . $count->comment_author . ' (留下'. $count->cnt . '个脚印)" target="_blank" rel="external nofollow"><img src="' . $a . '" alt="' . $count->comment_author . ' (留下'. $count->cnt . '个脚印)" class="avatar" /></a></li>';
}
echo $mostactive;
?></ul>
</div>
    <?php { echo ''; } ?>
			<?php } else { include(TEMPLATEPATH . '/gbook2.php'); } ?>
<div class="clear"></div>
</div></div>

<div class="articles">
<h2 class="page_title" style="font-size: 15px;font-weight: normal;color: #969696;">温情留言板</h2>
<?php comments_template(); ?>
</div>

	<?php endwhile; else: ?>
	<?php endif; ?>
</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>