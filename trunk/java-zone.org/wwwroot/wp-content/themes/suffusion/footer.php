<?php
/**
 * Footer template, invoked when get_footer() is called
 *
 * @package Suffusion
 * @subpackage Templates
 */

global $suf_footer_layout_style;

// Invoke hook - this creates the bottom widget area, the right sidebars etc.
suffusion_before_end_container();
?>
	</div><!-- /container -->

<?php
suffusion_after_end_container();
if ($suf_footer_layout_style == 'in-align') {
	suffusion_page_footer();
}
?>
</div><!--/wrapper -->
<?php
if ($suf_footer_layout_style != 'in-align') {
	suffusion_page_footer();
}
suffusion_document_footer();
wp_footer(); ?>

<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=3&amp;mini=1&amp;pos=left&amp;uid=277630" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
</script>
<!-- Baidu Button END -->

</body>
</html>