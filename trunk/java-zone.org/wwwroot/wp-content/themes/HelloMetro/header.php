<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
<?php include('includes/seo.php'); ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php
$UA = $_SERVER['HTTP_USER_AGENT'];
if(strpos($UA, 'MSIE 8.0'))
echo '<meta http-equiv="X-UA-Compatible" content="ie=7" />';
?>
<meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />
<meta name="msvalidate.01" content="20F0040B651CAF068D05DECF1B28DBE3" />
<meta name="application-name" content="IT客栈"/> 
<meta name="msapplication-TileColor" content="#0782ed"/> 
<meta name="msapplication-TileImage" content="c26e8c60-7671-44a2-b865-74a7d9dbe1a4.png"/>
<?php if (get_option('swt_alt_stylesheet')==''):?>
<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/style.css" />
<?php endif;?>
<link rel="alternate" type="application/rss+xml" title="<?php bloginfo('name'); ?> RSS Feed" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="alternate" type="application/atom+xml" title="<?php bloginfo('name'); ?> Atom Feed" href="<?php bloginfo('atom_url'); ?>" />
<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
<link rel="shortcut icon" href="http://wwww.itkes.com/favicon.ico" type="image/x-icon" />
<?php wp_enqueue_script('jquery'); ?>
<?php wp_head(); ?>
<?php if ( is_singular() ){ ?>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/comments-ajax.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/realgravatar.js"></script>
<?php } ?>
<script type="text/javascript" src="<?php bloginfo('stylesheet_directory'); ?>/js/hoveraccordion.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/hellometro.js"></script>
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<?php include('includes/lazyload.php'); ?>
</head>

<body>
<div id="page">
<script type="text/javascript">
if(screen.width>1030){document.getElementsByTagName('body')[0].className = "widescreen";}
</script>
<div id="container">
<div id="header">
<div id="logo">
<h1>
<a title="返回 IT客栈 首页" href="http://www.itkes.com">IT客栈</a>
</h1>
</div>
<div id="contact">
        <a href="http://feed.feedsky.com/itkes" rel="bookmark" target="_blank" title="订阅到RSS"><img src="<?php echo get_bloginfo('template_directory').'/images/rss24.png' ?>" alt="订阅到RSS" title="订阅到RSS" /></a>
        <a href="http://www.weibo.com/u/2943468355" rel="bookmark" target="_blank" title="关注新浪微博"><img src="<?php echo get_bloginfo('template_directory').'/images/sina24.png' ?>" alt="关注新浪微博" title="关注新浪微博" /></a>
        <a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=vNXI19nG1N3S-M3Nkt-T0Q" rel="bookmark" target="_blank" title="发邮件给我们"><img src="<?php echo get_bloginfo('template_directory').'/images/mail24.png' ?>" alt="发邮件给我们" title="发邮件给我们" /></a>
        <a href="http://t.qq.com/itkezhancn" rel="bookmark" target="_blank" title="关注腾讯微博"><img src="<?php echo get_bloginfo('template_directory').'/images/tengxun24.png' ?>" alt="关注腾讯微博" title="关注腾讯微博" /></a>
    </div>
</div>
<div id="nav">
<ul class="nav-ul">
<li>
<a id="nav_home" href="http://www.itkes.com">客栈首页</a>
</li>
<li><div class="topnav">
<?php
if(function_exists('wp_nav_menu')) {
    wp_nav_menu(array('theme_location'=>'primary','menu_id'=>'menu','container'=>'false'));
}
?></li>
</ul>
<div class="search">	
<div class="search_site addapted" style="overflow: hidden;">	
			<form id="searchform" method="get" action="<?php bloginfo('home'); ?>">
				<input type="submit" value="" id="searchsubmit" class="button">
				<input type="text" id="s" name="s" value="">
			</form>
		</div></div>
<?php if ( is_home() ) { ?>
<div id="metro">
            <div class="left">
                <?php query_posts(array('posts_per_page' => 1,'post__in' => get_option('sticky_posts'),'caller_get_posts' => 1));
                        if (have_posts()) :
                           while (have_posts()) : the_post();?>
			                <a class="headLink" target="_blank" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" rel="bookmark">
                                <?php $thumb_img = has_post_thumbnail() ? get_the_post_thumbnail( $post->ID, array(400,220), array('alt' => trim(strip_tags( $post->post_title )),'title'=> trim(strip_tags( $post->post_title ))) ) : get_post_img( 400, 220, 1);?>   
                                <?php echo $thumb_img;?> 
                                 <p class="headTitle">
                                   <span>本站推荐</span><?php the_title(); ?></p>
                            </a>
                    <?php endwhile; ?>
                        <?php else: ?>
                            <?php query_posts(array('orderby' => 'rand','ignore_sticky_posts'=>1,'showposts' => 1));
                            if (have_posts()) :
                            while (have_posts()) : the_post();?>
			                <a class="headLink" target="_blank" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" rel="bookmark">
                                <?php $thumb_img = has_post_thumbnail() ? get_the_post_thumbnail( $post->ID, array(400,220), array('alt' => trim(strip_tags( $post->post_title )),'title'=> trim(strip_tags( $post->post_title ))) ) : get_post_img( 400, 220, 1);?>   
                                <?php echo $thumb_img;?> 
                                 <p class="headTitle">
                                   <span>随机推荐</span><?php the_title(); ?></p>
                            </a>
                            <?php endwhile;endif; ?>
                    <?php endif; ?>
                    <?php wp_reset_query(); ?>
                
            </div>
           <div class="center">
                <ul class="metroItem">
                     <li class="item"> 
                        <a class="headLink" title="软件应用" href="http://www.itkes.com/category/%e8%bd%af%e4%bb%b6%e5%ba%94%e7%94%a8" target="_blank">
                        <img width="110px" height="110px" alt="left" src="<?php echo get_bloginfo('template_directory').'/images/Metro/App.png'?>" /></a>
                    </li>
                    <?php $count = 1; ?>
                    <?php query_posts(array('orderby' => 'rand', 'ignore_sticky_posts'=>1, 'showposts' => 3));
                        if (have_posts()) :
                           while (have_posts()) : the_post();?>
			                <li class="item"><a target="_blank" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" rel="bookmark">
                                <?php $thumb_img = has_post_thumbnail() ? get_the_post_thumbnail( $post->ID, array(110,110), array('alt' => trim(strip_tags( $post->post_title )),'title'=> trim(strip_tags( $post->post_title ))) ) : get_post_img( 110, 110, 2);?>   
                                <?php echo $thumb_img;?> 
                            </a></li>
                        <?php if(($count == 1)) : ?>
                             <li class="item"> 
                        <a class="headLink" title="趣闻轶事" href="http://www.itkes.com/category/%e8%b6%a3%e9%97%bb%e8%bd%b6%e4%ba%8b" target="_blank">
                        <img width="110px" height="110px" alt="left" src="<?php echo get_bloginfo('template_directory').'/images/Metro/News.png'?>" /></a>
                        </li>
                        <?php endif; ?>
                         <?php if(($count == 2)) : ?>
                              <li class="item"> 
                        <a class="headLink" title="试试运气" href="http://www.itkes.com?random" target="_blank">
                        <img width="110px" height="110px" alt="left" src="<?php echo get_bloginfo('template_directory').'/images/Metro/Search.png'?>" /></a>
                    </li>
                        <?php endif; ?>
                    <?php $count++; ?>
                    <?php endwhile;endif; ?>
                    <?php wp_reset_query(); ?>
                  </ul>
            </div>
            <div class="right">
                <div class="up">
                     <?php query_posts(array('orderby' => 'comment_count', 'showposts' => 1,'w'=>date('W')));
                        if (have_posts()) :
                           while (have_posts()) : the_post();?>
			                <a class="headLink" target="_blank" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" rel="bookmark">
                                <?php $thumb_img = has_post_thumbnail() ? get_the_post_thumbnail( $post->ID, array(236,200), array('alt' => trim(strip_tags( $post->post_title )),'title'=> trim(strip_tags( $post->post_title ))) ) : get_post_img( 236, 200, 1);?>   
                                <?php echo $thumb_img;?> 
                                 <p class="headTitle">
                                   <span>本周热门</span><?php the_title(); ?></p>
                            </a>
                    <?php endwhile; ?>
                        <?php else: ?>
                            <div class="update">本周暂无更新</div>
                    <?php endif; ?>
                    <?php wp_reset_query(); ?>
                </div>
                <div class="down">
                     <?php query_posts(array('orderby' => 'comment_count', 'showposts' => 1,'monthnum'=>date('m')));
                        if (have_posts()) :
                           while (have_posts()) : the_post();?>
			                <a class="headLink" target="_blank" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" rel="bookmark">
                                <?php $thumb_img = has_post_thumbnail() ? get_the_post_thumbnail( $post->ID, array(236,200), array('alt' => trim(strip_tags( $post->post_title )),'title'=> trim(strip_tags( $post->post_title ))) ) : get_post_img( 236, 200, 1);?>   
                                <?php echo $thumb_img;?> 
                                 <p class="headTitle">
                                   <span>本月热门</span><?php the_title(); ?></p>
                            </a>
                    <?php endwhile; ?>
                        <?php else: ?>
                            <div class="update">本月暂无更新</div>
                    <?php endif; ?>
                    <?php wp_reset_query(); ?>
                </div>
            </div>
        </div>
<?php } ?>
<div class="clear"></div>
<div id="map"><div class="position">
当前位置：<a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?></a>
 > <?php
if( is_single() ){
$categorys = get_the_category();
$category = $categorys[0];
echo is_wp_error( $category_parents = get_category_parents($category->term_id,true,' >') ) ? '' : $category_parents;echo' 查看文章';
} elseif ( is_page() ){
the_title();
} elseif ( is_category() ){
single_cat_title();
} elseif ( is_tag() ){
single_tag_title();
} elseif ( is_day() ){
the_time('Y年Fj日');
} elseif ( is_month() ){
the_time('Y年F');
} elseif ( is_year() ){
the_time('Y年');
} elseif ( is_search() ){
echo $s.' 的搜索结果';
}
else
{}
?>
</div>
<div class="baiduad">
</div>
</div>
</div>