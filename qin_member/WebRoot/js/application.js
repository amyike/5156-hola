// JavaScript Document
$(document).ready(function(){
   //点击输入框文字消失离开又出现
$("textarea") .each (function(){
$(this).val($(this).attr("focucmsg"));
$(this).focus(function(){
if($(this).val() == $(this).attr("focucmsg"))
{
$(this).val('');
$(this).val('').css("color","#000");
}
});
$(this).blur(function(){
if(!$(this).val()){
$(this).val($(this).attr("focucmsg"));
$(this).val($(this).attr("focucmsg")).css("color","#909090");
}
});
});

$(".apply_text1").focus(function(){
 $(this).addClass("apply_text1on");
});
$(".apply_text1").blur(function(){
 $(this).removeClass("apply_text1on");
});

$(".apply_text2").focus(function(){
 $(this).addClass("apply_text2on");
});
$(".apply_text2").blur(function(){
 $(this).removeClass("apply_text2on");
});

$(".apply_btn").mouseover(function(){
 $(this).addClass("apply_bon");
});
$(".apply_btn").mouseout(function(){
 $(this).removeClass("apply_bon");
});

});