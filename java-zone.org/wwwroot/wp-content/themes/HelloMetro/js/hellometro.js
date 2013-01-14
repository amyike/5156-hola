
// 滚屏
jQuery(document).ready(function(){
jQuery('#roll_top').click(function(){jQuery('html,body').animate({scrollTop: '0px'}, 800);}); 
jQuery('#ct').click(function(){jQuery('html,body').animate({scrollTop:jQuery('#comments').offset().top}, 800);});
jQuery('#fall').click(function(){jQuery('html,body').animate({scrollTop:jQuery('#footer').offset().top}, 800);});
});

//顶部导航下拉菜单
jQuery(document).ready(function(){
jQuery(".topnav ul li").hover(function(){
jQuery(this).children("ul").show();
jQuery(this).addClass("subli");
},function(){
jQuery(this).children("ul").hide();
jQuery(this).removeClass("subli");
});
});

//侧边栏TAB效果
jQuery(document).ready(function(){
jQuery('.tab_menu li').mouseover(function(){
	jQuery(this).addClass("current").siblings().removeClass();
        jQuery(".tab_content > div").eq(jQuery('.tab_menu li').index(this)).fadeIn(650).siblings().hide();;
});
});

jQuery(document).ready(function(){
jQuery('.maintab_menu li').mouseover(function(){
	jQuery(this).addClass("current").siblings().removeClass();
        jQuery(".maintab_content > div").eq(jQuery('.maintab_menu li').index(this)).fadeIn(650).siblings().hide();;
});
});

//图片渐隐
jQuery(function () {
jQuery('.thumbnail img').hover(
function() {jQuery(this).fadeTo("fast", 0.5);},
function() {jQuery(this).fadeTo("fast", 1);
});
});

//新窗口打开
jQuery(document).ready(function(){
	jQuery("a[rel='external'],a[rel='external nofollow']").click(
	function(){window.open(this.href);return false})
});

//顶部微博等图标渐隐
jQuery(document).ready(function(){
			jQuery('.icon1,.icon2,.icon3,.icon4,').wrapInner('<span class="hover"></span>').css('textIndent','0').each(function () {
				jQuery('span.hover').css('opacity', 0).hover(function () {
					jQuery(this).stop().fadeTo(350, 1);
				}, function () {
					jQuery(this).stop().fadeTo(350, 0);
				});
			});
});

//预加载广告
function speed_ads(loader, ad) {
var ad = document.getElementById(ad),
loader = document.getElementById(loader);
if (ad && loader) {
ad.appendChild(loader);
loader.style.display='block';
ad.style.display='block';
}
}
window.onload=function() {
speed_ads('adsense-loader1', 'adsense1');
speed_ads('adsense-loader2', 'adsense2');
speed_ads('adsense-loader3', 'adsense3');
};




jQuery(document).ready(function($) {
        $('.dropdownlink').hover(function() {
            $('submenu tab_box', this).slideDown(300)
        },
        function() {
            $('submenu tab_box', this).slideUp(300)
        });
    });


jQuery(document).ready(function($) {
    if (!isie6()) {
        var rollStart = $('#rollstart'),
        rollSet = $('.sidebar-roll,#sidebar-roll-2');
        rollStart.before('<div id="sidbar_rollbox_1" class="sidebar_rollbox"></div>');
        var offset = rollStart.offset(),
        objWindow = $(window),
        rollBox = rollStart.prev();
		rollSet.clone().prependTo('.sidebar_rollbox');
		rollBox.hide();
        if (objWindow.width() > 960) {
            objWindow.scroll(function() {
				
				if (objWindow.scrollTop() > offset.top) {
                    var de=document.documentElement;
					var db=document.body;
					var viewH=de.clientHeight==0 ?  db.clientHeight : de.clientHeight;
					var anmTop=$(document).height()-$(document).scrollTop()-180-$('#sidbar_rollbox_1').height();
					if (anmTop>0){
						rollBox.show().stop().animate({
							top: 0,
							paddingTop: 15
						},
						400);
					}else{
						rollBox.show().stop().animate({
							top: anmTop,
							paddingTop: 15
						},
						10);
					}
                } else {
                    rollBox.hide().stop().animate({
                        top: 0
                    },
                    400)
                }
            });
			$(window).resize(function() {
				if (objWindow.scrollTop() > offset.top) {
                    var de=document.documentElement;
					var db=document.body;
					var viewH=de.clientHeight==0 ?  db.clientHeight : de.clientHeight;
					var anmTop=$(document).height()-$(document).scrollTop()-180-$('#sidbar_rollbox_1').height();
					if (anmTop>0){
						rollBox.show().stop().animate({
							top: 0,
							paddingTop: 15
						},
						400);
					}else{
						rollBox.show().stop().animate({
							top: anmTop,
							paddingTop: 15
						},
						0);
					}
                } else {
                    rollBox.hide().stop().animate({
                        top: 0
                    },
                    400)
                }
			});
        }
    }
    function isie6() {
        if ($.browser.msie) {
            if ($.browser.version == "6.0") return true;
        }
        return false;
    }
});
