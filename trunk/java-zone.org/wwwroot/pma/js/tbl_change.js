function nullify(a,d,b,c){d=document.forms.insertForm;if(typeof d.elements["funcs"+c+"["+b+"]"]!="undefined")d.elements["funcs"+c+"["+b+"]"].selectedIndex=-1;if(a==1)d.elements["fields"+c+"["+b+"]"][1].selectedIndex=-1;else if(a==2){a=d.elements["fields"+c+"["+b+"]"];if(a.checked)a.checked=false;else{b=a.length;for(c=0;c<b;c++)a[c].checked=false}}else if(a==3)d.elements["fields"+c+"["+b+"][]"].selectedIndex=-1;else if(a==4)d.elements["fields"+c+"["+b+"]"].selectedIndex=-1;else d.elements["fields"+
c+"["+b+"]"].value="";return true}function daysInFebruary(a){return a%4==0&&(a%100!=0||a%400==0)?29:28}function fractionReplace(a){a=parseInt(a);return a>=1&&a<=9?"0"+a:"00"}
function isDate(a,d){a=a.replace(/[.|*|^|+|//|@]/g,"-");for(var b=a.split("-"),c=0;c<b.length;c++)if(b[c].length==1)b[c]=fractionReplace(b[c]);a=b.join("-");b=2;dtexp=RegExp(/^([0-9]{4})-(((01|03|05|07|08|10|12)-((0[0-9])|([1-2][0-9])|(3[0-1])))|((02|04|06|09|11)-((0[0-9])|([1-2][0-9])|30)))$/);if(a.length==8){dtexp=RegExp(/^([0-9]{2})-(((01|03|05|07|08|10|12)-((0[0-9])|([1-2][0-9])|(3[0-1])))|((02|04|06|09|11)-((0[0-9])|([1-2][0-9])|30)))$/);b=0}if(dtexp.test(a)){c=parseInt(a.substring(b+3,b+5));
var e=parseInt(a.substring(b+6,b+8)),g=parseInt(a.substring(0,b+2));if(c==2&&e>daysInFebruary(g))return false;if(a.substring(0,b+2).length==2)g=a.substring(0,b+2).length==2?parseInt("20"+a.substring(0,b+2)):parseInt("19"+a.substring(0,b+2));if(d==true){if(g<1978)return false;if(g>2038||g>2037&&e>19&&c>=1||g>2037&&c>1)return false}}else return false;return true}
function isTime(a){a=a.split(":");for(var d=0;d<a.length;d++)if(a[d].length==1)a[d]=fractionReplace(a[d]);a=a.join(":");tmexp=RegExp(/^(([0-1][0-9])|(2[0-3])):((0[0-9])|([1-5][0-9])):((0[0-9])|([1-5][0-9]))$/);if(!tmexp.test(a))return false;return true}
function verificationsAfterFieldChange(a,d,b){var c=window.event||arguments.callee.caller.arguments[0],e=c.target||c.srcElement;$("input[name='fields_null[multi_edit]["+d+"]["+a+"]']").attr({checked:false});$("input[name='insert_ignore_"+d+"']").attr({checked:false});c=$("input[name='fields[multi_edit]["+d+"]["+a+"]']");if(c.data("comes_from")=="datepicker"){c.data("comes_from","");return true}if(e.name.substring(0,6)=="fields"){if(b=="datetime"||b=="time"||b=="date"||b=="timestamp"){c.removeClass("invalid_value");
e=c.val();if(b=="date"){if(!isDate(e)){c.addClass("invalid_value");return false}}else if(b=="time"){if(!isTime(e)){c.addClass("invalid_value");return false}}else if(b=="datetime"||b=="timestamp"){tmstmp=false;if(e=="CURRENT_TIMESTAMP")return true;if(b=="timestamp")tmstmp=true;if(e=="0000-00-00 00:00:00")return true;var g=e.indexOf(" ");if(g==-1){c.addClass("invalid_value");return false}else if(!(isDate(e.substring(0,g),tmstmp)&&isTime(e.substring(g+1)))){c.addClass("invalid_value");return false}}}if(b.substring(0,
3)=="int"){c.removeClass("invalid_value");if(isNaN(c.val())){c.addClass("invalid_value");return false}}}}
$(document).ready(function(){$(".open_gis_editor").live("click",function(a){a.preventDefault();var d=$(this);a=d.parent("td").children("input[type='text']").val();var b=d.parents("tr").children("td:first").find("input[type='hidden']").val(),c=d.parents("tr").find("span.column_type").text();d=d.parent("td").children("input[type='text']").attr("name");var e=$("input[name='token']").val();openGISEditor();gisEditorLoaded?loadGISEditor(a,b,c,d,e):loadJSAndGISEditor(a,b,c,d,e)});$("input[name='gis_data[save]']").live("click",
function(){var a=$("form#gis_data_editor_form").find("input[name='input_name']").val();$("input[name='"+a+"']").parents("tr").find(".checkbox_null").attr("checked",false)});$(".foreign_values_anchor").show();$(".checkbox_null").bind("click",function(){nullify($(this).siblings(".nullify_code").val(),$(this).closest("tr").find("input:hidden").first().val(),$(this).siblings(".hashed_field").val(),$(this).siblings(".multi_edit").val())});$("#insertFormDEACTIVATED").live("submit",function(a){var d=$(this);
a.preventDefault();PMA_ajaxShowMessage();PMA_prepareForAjaxRequest(d);$.post(d.attr("action"),d.serialize(),function(b){if(typeof b.success!="undefined")if(b.success==true){PMA_ajaxShowMessage(b.message);$("#floating_menubar").next("div").remove().end().after(b.sql_query);b=$("#floating_menubar").next("div").find(".notice");b.text()==""&&b.remove();b=d.find("select[name='submit_type']").val();if("insert"==b||"insertignore"==b)d.find("input:reset").trigger("click")}else PMA_ajaxShowMessage(PMA_messages.strErrorProcessingRequest+
" : "+b.error,false);else{$("#insertForm").remove();$("#floating_menubar").after('<div id="sqlqueryresults"></div>');$("#sqlqueryresults").html(b)}})});$("#insert_rows").live("change",function(a){a.preventDefault();a=$(".insertRowTable").length;var d=$("#insert_rows").val();$(".datefield,.datetimefield").each(function(){$(this).datepicker("destroy")});if(a<d){for(;a<d;){var b=0;$("#insertForm").find(".insertRowTable:last").clone().insertBefore("#actions_panel").find("input[name*=multi_edit],select[name*=multi_edit],textarea[name*=multi_edit]").each(function(){var f=
$(this),i=f.attr("name"),j=i.split(/\[\d+\]/);i=i.match(/\[\d+\]/)[0];b=parseInt(i.match(/\d+/)[0])+1;i=j[0]+"["+b+"]"+j[1];j=j[1].match(/\[(.+)\]/)[1];f.attr("name",i);if(f.is(".textfield")){f.closest("tr").find("span.column_type").html()!="enum"&&f.attr("value",f.closest("tr").find("span.default_value").html());f.unbind("change").attr("onchange",null).data("hashed_field",j).data("new_row_index",b).bind("change",function(){var h=$(this);verificationsAfterFieldChange(h.data("hashed_field"),h.data("new_row_index"),
h.closest("tr").find("span.column_type").html())})}f.is(".checkbox_null")&&f.unbind("click").data("hashed_field",j).data("new_row_index",b).bind("click",function(){var h=$(this);nullify(h.siblings(".nullify_code").val(),f.closest("tr").find("input:hidden").first().val(),h.data("hashed_field"),"[multi_edit]["+h.data("new_row_index")+"]")})}).end().find(".foreign_values_anchor").each(function(){$anchor=$(this);var f="rownumber="+b;f=$anchor.attr("href").replace(/rownumber=\d+/,f);$anchor.attr("href",
f)});if(a==1)$('<input id="insert_ignore_1" type="checkbox" name="insert_ignore_1" checked="checked" />').insertBefore(".insertRowTable:last").after('<label for="insert_ignore_1">'+PMA_messages.strIgnore+"</label>");else{var c=$("#insertForm").children("input:checkbox:last"),e=$(c).attr("name"),g=parseInt(e.match(/\d+/));e=e.replace(/\d+/,g+1);$(c).clone().attr({id:e,name:e,checked:true}).add("label[for^=insert_ignore]:last").clone().attr("for",e).before("<br />").insertBefore(".insertRowTable:last")}a++}var k=
0;$(".textfield").each(function(){k++;$(this).attr("tabindex",k);$(this).attr("id","field_"+k+"_3")});$(".control_at_footer").each(function(){k++;$(this).attr("tabindex",k)});$(".datefield,.datetimefield").each(function(){PMA_addDatepicker($(this))})}else if(a>d)for(;a>d;){$("input[id^=insert_ignore]:last").nextUntil("fieldset").andSelf().remove();a--}})},"top.frame_content");
