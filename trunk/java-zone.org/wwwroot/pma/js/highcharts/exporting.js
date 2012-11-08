/*
 Highcharts JS v2.1.4 (2011-03-02)
 Exporting module

 (c) 2010 Torstein H?nsi

 License: www.highcharts.com/license

 Please Note: This file has been adjusted for use in phpMyAdmin, 
 to allow chart exporting without the batik library
*/
(function(){var k=Highcharts,y=k.Chart,C=k.addEvent,p=k.createElement,z=k.discardElement,u=k.css,w=k.merge,s=k.each,q=k.extend,D=Math.max,r=document,E=window,A="ontouchstart"in r.documentElement,B=k.setOptions({lang:{downloadPNG:"Download PNG image",downloadJPEG:"Download JPEG image",downloadPDF:"Download PDF document",downloadSVG:"Download SVG vector image",exportButtonTitle:"Export to raster or vector image",printButton:"Print the chart"}});B.navigation={menuStyle:{border:"1px solid #A0A0A0",background:"#FFFFFF"},
menuItemStyle:{padding:"0 5px",background:"none",color:"#303030",fontSize:A?"14px":"11px"},menuItemHoverStyle:{background:"#4572A5",color:"#FFFFFF"},buttonOptions:{align:"right",backgroundColor:{linearGradient:[0,0,0,20],stops:[[0.4,"#F7F7F7"],[0.6,"#E3E3E3"]]},borderColor:"#B0B0B0",borderRadius:3,borderWidth:1,height:20,hoverBorderColor:"#909090",hoverSymbolFill:"#81A7CF",hoverSymbolStroke:"#4572A5",symbolFill:"#E0E0E0",symbolStroke:"#A0A0A0",symbolX:11.5,symbolY:10.5,verticalAlign:"top",width:24,
y:10}};B.exporting={type:"image/png",url:"file_echo.php",width:800,buttons:{exportButton:{symbol:"exportIcon",x:-10,symbolFill:"#A8BF77",hoverSymbolFill:"#768F3E",_titleKey:"exportButtonTitle",menuName:"export",menuItems:[{textKey:"downloadPNG",onclick:function(){this.exportChart()}},{textKey:"downloadSVG",onclick:function(){this.exportChart({type:"image/svg+xml"})}},{textKey:"printButton",onclick:function(){this.print()}}]}}};q(y.prototype,{getSVG:function(a){var d=this,c,f,b,h,e,g,j=w(d.options,
a);if(!r.createElementNS)r.createElementNS=function(l,i){var n=r.createElement(i);n.getBBox=function(){return d.renderer.Element.prototype.getBBox.apply({element:n})};return n};c=p("div",null,{position:"absolute",top:"-9999em",width:d.chartWidth+"px",height:d.chartHeight+"px"},r.body);q(j.chart,{renderTo:c,forExport:true});j.exporting.enabled=false;j.chart.plotBackgroundImage=null;j.series=[];s(d.series,function(l){b=l.options;b.animation=false;b.showCheckbox=false;if(b&&b.marker&&/^url\(/.test(b.marker.symbol))b.marker.symbol=
"circle";b.data=[];s(l.data,function(i){h=i.config;e={x:i.x,y:i.y,name:i.name};typeof h=="object"&&i.config&&h.constructor!=Array&&q(e,h);b.data.push(e);(g=i.config&&i.config.marker)&&/^url\(/.test(g.symbol)&&delete g.symbol});j.series.push(b)});a=new Highcharts.Chart(j);f=a.container.innerHTML;j=null;a.destroy();z(c);f=f.replace(/zIndex="[^"]+"/g,"").replace(/isShadow="[^"]+"/g,"").replace(/symbolName="[^"]+"/g,"").replace(/jQuery[0-9]+="[^"]+"/g,"").replace(/isTracker="[^"]+"/g,"").replace(/url\([^#]+#/g,
"url(#").replace(/id=([^" >]+)/g,'id="$1"').replace(/class=([^" ]+)/g,'class="$1"').replace(/ transform /g," ").replace(/:(path|rect)/g,"$1").replace(/style="([^"]+)"/g,function(l){return l.toLowerCase()});f=f.replace(/(url\(#highcharts-[0-9]+)&quot;/g,"$1").replace(/&quot;/g,"'");if(f.match(/ xmlns="/g).length==2)f=f.replace(/xmlns="[^"]+"/,"");return f},exportChart:function(a,d){var c,f=this,b=p("canvas");$("body").append(b);$(b).css("position","absolute");$(b).css("left","-10000px");var h=function(e){a=
w(f.options.exporting,a);c=p("form",{method:"post",action:a.url},{display:"none"},r.body);s(["filename","type","width","image","token"],function(g){p("input",{type:"hidden",name:g,value:{filename:a.filename||"chart",type:a.type,width:a.width,image:e,token:pma_token}[g]},null,c)});c.submit();z(c)};if(a&&a.type=="image/svg+xml")h(f.getSVG(d));else{typeof FlashCanvas!="undefined"&&FlashCanvas.initElement(b);canvg(b,f.getSVG(d),{ignoreAnimation:true,ignoreMouse:true,renderCallback:function(){setTimeout(function(){h(b.toDataURL())},
100)}})}},print:function(){var a=this,d=a.container,c=[],f=d.parentNode,b=r.body,h=b.childNodes;if(!a.isPrinting){a.isPrinting=true;s(h,function(e,g){if(e.nodeType==1){c[g]=e.style.display;e.style.display="none"}});b.appendChild(d);E.print();setTimeout(function(){f.appendChild(d);s(h,function(e,g){if(e.nodeType==1)e.style.display=c[g]});a.isPrinting=false},1E3)}},contextMenu:function(a,d,c,f,b,h){var e=this,g=e.options.navigation,j=g.menuItemStyle,l=e.chartWidth,i=e.chartHeight,n="cache-"+a,m=e[n],
o=D(b,h),t,x;if(!m){e[n]=m=p("div",{className:"highcharts-"+a},{position:"absolute",zIndex:1E3,padding:o+"px"},e.container);t=p("div",null,q({MozBoxShadow:"3px 3px 10px #888",WebkitBoxShadow:"3px 3px 10px #888",boxShadow:"3px 3px 10px #888"},g.menuStyle),m);x=function(){u(m,{display:"none"})};C(m,"mouseleave",x);s(d,function(v){if(v)p("div",{onmouseover:function(){u(this,g.menuItemHoverStyle)},onmouseout:function(){u(this,j)},innerHTML:v.text||k.getOptions().lang[v.textKey]},q({cursor:"pointer"},
j),t)[A?"ontouchstart":"onclick"]=function(){x();v.onclick.apply(e,arguments)}});e.exportMenuWidth=m.offsetWidth;e.exportMenuHeight=m.offsetHeight}a={display:"block"};if(c+e.exportMenuWidth>l)a.right=l-c-b-o+"px";else a.left=c-o+"px";if(f+h+e.exportMenuHeight>i)a.bottom=i-f-o+"px";else a.top=f+h-o+"px";u(m,a)},addButton:function(a){function d(){i.attr(o);l.attr(m)}var c=this,f=c.renderer,b=w(c.options.navigation.buttonOptions,a),h=b.onclick,e=b.menuItems,g=b.width,j=b.height,l,i,n;a=b.borderWidth;
var m={stroke:b.borderColor},o={stroke:b.symbolStroke,fill:b.symbolFill};if(b.enabled!==false){l=f.rect(0,0,g,j,b.borderRadius,a).align(b,true).attr(q({fill:b.backgroundColor,"stroke-width":a,zIndex:19},m)).add();n=f.rect(0,0,g,j,0).align(b).attr({fill:"rgba(255, 255, 255, 0.001)",title:k.getOptions().lang[b._titleKey],zIndex:21}).css({cursor:"pointer"}).on("mouseover",function(){i.attr({stroke:b.hoverSymbolStroke,fill:b.hoverSymbolFill});l.attr({stroke:b.hoverBorderColor})}).on("mouseout",d).on("click",
d).add();if(e)h=function(){d();var t=n.getBBox();c.contextMenu(b.menuName,e,t.x,t.y,g,j)};n.on("click",function(){h.apply(c,arguments)});i=f.symbol(b.symbol,b.symbolX,b.symbolY,(b.symbolSize||12)/2).align(b,true).attr(q(o,{"stroke-width":b.symbolStrokeWidth||1,zIndex:20})).add()}}});k.Renderer.prototype.symbols.exportIcon=function(a,d,c){return["M",a-c,d+c,"L",a+c,d+c,a+c,d+c*0.5,a-c,d+c*0.5,"Z","M",a,d+c*0.5,"L",a-c*0.5,d-c/3,a-c/6,d-c/3,a-c/6,d-c,a+c/6,d-c,a+c/6,d-c/3,a+c*0.5,d-c/3,"Z"]};y.prototype.callbacks.push(function(a){var d,
c=a.options.exporting,f=c.buttons;if(c.enabled!==false){for(d in f)a.addButton(f[d]);for(d in a.options.buttons)a.addButton(a.options.buttons[d])}})})();
