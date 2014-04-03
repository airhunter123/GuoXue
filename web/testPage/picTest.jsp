<%-- 
    ???????
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>JavaScript Slideshow - TinySlideshow</title>

<style>
body {margin:0; padding:5px; font:11px Verdana,Arial; color:#FFFFFF;}
a { color:#FFCC00;}
#slideshow {list-style:none; color:#fff}
#slideshow span {display:none}
#wrapper {width:506px; margin:50px auto; display:none}
#wrapper * {margin:0; padding:0}
#fullsize {position:relative; width:500px; height:300px; padding:2px; border:5px solid #f47a20; border-radius: 6px;background:#000;overflow: hidden }
#information {font-family: '????';position:absolute; bottom:0; width:500px; height:0; background:#000; color:#edb02b; overflow:hidden; z-index:200; opacity:.7; filter:alpha(opacity=70)}
#information h3 {padding:4px 8px 3px; font-size:14px}
#information p {padding:0 8px 8px}
#image {width:500px;}
#image img {position:absolute; z-index:25; width:auto;}
.imgnav {position:absolute; width:25%; height:306px; cursor:pointer; z-index:150}
#imgprev {left:0; background:url(../pic/showerPic/images/left.gif) left center no-repeat}
#imgnext {right:0; background:url(../pic/showerPic/images/right.gif) right center no-repeat}

#thumbnails {margin-top:15px}
#slideleft {float:left; width:20px; height:81px; background:url(../pic/showerPic/images/scroll-left.gif) center center no-repeat; background-color:#222;}
#slideleft:hover {background-color:#f47a20}
#slideright {float:right; width:20px; height:81px; background:#222 url(../pic/showerPic/images/scroll-right.gif) center center no-repeat}
#slideright:hover {background-color:#f47a20}
#slidearea {float:left; position:relative; width:455px; margin-left:5px; height:100px; overflow:hidden;}
#slider {position:absolute; left:0; height:100px;}
#slider img {cursor:pointer; border:3px solid #f47a20;border-radius: 6px; padding:2px;height:75px;}
</style>

</head>
<body>
    <ul id="slideshow">
            <li>
			<h3>TinySlideshow v1</h3>
                        <span>../pic/showerPic/photos/1.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/1.jpg" alt="Orange Fish" /></a>
		</li>
		<li>
			<h3>Sea Turtle</h3>
			<span>../pic/showerPic/photos/2.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<img src="../pic/showerPic/photos/2.jpg" alt="Sea Turtle" />
		</li>
		<li>
			<h3>Red Coral</h3>
			<span>../pic/showerPic/photos/3.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/3.jpg" alt="Red Coral" /></a>
		</li>
		<li>
			<h3>Coral Reef</h3>
			<span>../pic/showerPic/photos/4.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/4.jpg" alt="Coral Reef" /></a>
		</li>
		<li>
			<h3>Blue Fish</h3>
			<span>../pic/showerPic/photos/5.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<img src="../pic/showerPic/photos/5.jpg" alt="Blue Fish" />
		</li>
		<li>
			<h3>TinySlideshow v.2</h3>
			<span>../pic/showerPic/photos/6.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/6.jpg" alt="Yellow Fish" /></a>
		</li>
		<li>
			<h3>Squid</h3>
			<span>../pic/showerPic/photos/7.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/7.jpg" alt="Squid" /></a>
		</li>
		<li>
			<h3>Small Fish</h3>
			<span>../pic/showerPic/photos/8.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/8.jpg" alt="Small Fish" /></a>
		</li>
                <li>
			<h3>Small Fish aaaa</h3>
			<span>../pic/showerPic/photos/9.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/photos/9.jpg" alt="Small Fish" /></a>
		</li>
	</ul>
	<div id="wrapper">
		<div id="fullsize">
			<div id="imgprev" class="imgnav" title="Previous Image"></div>
			<div id="imglink"></div>
			<div id="imgnext" class="imgnav" title="Next Image"></div>
			<div id="image"></div>
			<div id="information">
				<h3></h3>
				<p></p>
			</div>
		</div>
		<div id="thumbnails">
			<div id="slideleft" title="Slide Left"></div>
			<div id="slidearea">
				<div id="slider"></div>
			</div>
			<div id="slideright" title="Slide Right"></div>
		</div>
        <br/>	
        </div>
<script type="text/javascript">
    var TINY={};function $(i){return document.getElementById(i)}function $$(e,p){p=p||document;return p.getElementsByTagName(e)}TINY.slideshow=function(n){this.infoSpeed=this.imgSpeed=this.speed=10;this.thumbOpacity=this.navHover=70;this.navOpacity=25;this.scrollSpeed=5;this.letterbox='#000';this.n=n;this.c=0;this.a=[]};TINY.slideshow.prototype={init:function(s,z,b,f,q){s=$(s);var m=$$('li',s),i=0,w=0;this.l=m.length;this.q=$(q);this.f=$(z);this.r=$(this.info);this.o=parseInt(TINY.style.val(z,'width'));if(this.thumbs){var u=$(this.left),r=$(this.right);u.onmouseover=new Function('TINY.scroll.init("'+this.thumbs+'",-1,'+this.scrollSpeed+')');u.onmouseout=r.onmouseout=new Function('TINY.scroll.cl("'+this.thumbs+'")');r.onmouseover=new Function('TINY.scroll.init("'+this.thumbs+'",1,'+this.scrollSpeed+')');this.p=$(this.thumbs)}for(i;i<this.l;i++){this.a[i]={};var h=m[i],a=this.a[i];a.t=$$('h3',h)[0].innerHTML;a.d=$$('p',h)[0].innerHTML;a.l=$$('a',h)[0]?$$('a',h)[0].href:'';a.p=$$('span',h)[0].innerHTML;if(this.thumbs){var g=$$('img',h)[0];this.p.appendChild(g);w+=parseInt(g.offsetWidth);if(i!=this.l-1){g.style.marginRight=this.spacing+'px';w+=this.spacing}this.p.style.width=w+'px';g.style.opacity=this.thumbOpacity/100;g.style.filter='alpha(opacity='+this.thumbOpacity+')';g.onmouseover=new Function('TINY.alpha.set(this,100,5)');g.onmouseout=new Function('TINY.alpha.set(this,'+this.thumbOpacity+',5)');g.onclick=new Function(this.n+'.pr('+i+',1)')}}if(b&&f){b=$(b);f=$(f);b.style.opacity=f.style.opacity=this.navOpacity/100;b.style.filter=f.style.filter='alpha(opacity='+this.navOpacity+')';b.onmouseover=f.onmouseover=new Function('TINY.alpha.set(this,'+this.navHover+',5)');b.onmouseout=f.onmouseout=new Function('TINY.alpha.set(this,'+this.navOpacity+',5)');b.onclick=new Function(this.n+'.mv(-1,1)');f.onclick=new Function(this.n+'.mv(1,1)')}this.auto?this.is(0,0):this.is(0,1)},mv:function(d,c){var t=this.c+d;this.c=t=t<0?this.l-1:t>this.l-1?0:t;this.pr(t,c)},pr:function(t,c){clearTimeout(this.lt);if(c){clearTimeout(this.at)}this.c=t;this.is(t,c)},is:function(s,c){if(this.info){TINY.height.set(this.r,1,this.infoSpeed/2,-1)}var i=new Image();i.style.opacity=0;i.style.filter='alpha(opacity=0)';this.i=i;i.onload=new Function(this.n+'.le('+s+','+c+')');i.src=this.a[s].p;if(this.thumbs){var a=$$('img',this.p),l=a.length,x=0;for(x;x<l;x++){a[x].style.borderColor=x!=s?'':this.active}}},le:function(s,c){this.f.appendChild(this.i);var w=this.o-parseInt(this.i.offsetWidth);if(w>0){var l=Math.floor(w/2);this.i.style.borderLeft=l+'px solid '+this.letterbox;this.i.style.borderRight=(w-l)+'px solid '+this.letterbox}TINY.alpha.set(this.i,100,this.imgSpeed);var n=new Function(this.n+'.nf('+s+')');this.lt=setTimeout(n,this.imgSpeed*100);if(!c){this.at=setTimeout(new Function(this.n+'.mv(1,0)'),this.speed*1000)}if(this.a[s].l!=''){this.q.onclick=new Function('window.location="'+this.a[s].l+'"');this.q.onmouseover=new Function('this.className="'+this.link+'"');this.q.onmouseout=new Function('this.className=""');this.q.style.cursor='pointer'}else{this.q.onclick=this.q.onmouseover=null;this.q.style.cursor='default'}var m=$$('img',this.f);if(m.length>2){this.f.removeChild(m[0])}},nf:function(s){if(this.info){s=this.a[s];$$('h3',this.r)[0].innerHTML=s.t;$$('p',this.r)[0].innerHTML=s.d;this.r.style.height='auto';var h=parseInt(this.r.offsetHeight);this.r.style.height=0;TINY.height.set(this.r,h,this.infoSpeed,0)}}};TINY.scroll=function(){return{init:function(e,d,s){e=typeof e=='object'?e:$(e);var p=e.style.left||TINY.style.val(e,'left');e.style.left=p;var l=d==1?parseInt(e.offsetWidth)-parseInt(e.parentNode.offsetWidth):0;e.si=setInterval(function(){TINY.scroll.mv(e,l,d,s)},20)},mv:function(e,l,d,s){var c=parseInt(e.style.left);if(c==l){TINY.scroll.cl(e)}else{var i=Math.abs(l+c);i=i<s?i:s;var n=c-i*d;e.style.left=n+'px'}},cl:function(e){e=typeof e=='object'?e:$(e);clearInterval(e.si)}}}();TINY.height=function(){return{set:function(e,h,s,d){e=typeof e=='object'?e:$(e);var oh=e.offsetHeight,ho=e.style.height||TINY.style.val(e,'height');ho=oh-parseInt(ho);var hd=oh-ho>h?-1:1;clearInterval(e.si);e.si=setInterval(function(){TINY.height.tw(e,h,ho,hd,s)},20)},tw:function(e,h,ho,hd,s){var oh=e.offsetHeight-ho;if(oh==h){clearInterval(e.si)}else{if(oh!=h){e.style.height=oh+(Math.ceil(Math.abs(h-oh)/s)*hd)+'px'}}}}}();TINY.alpha=function(){return{set:function(e,a,s){e=typeof e=='object'?e:$(e);var o=e.style.opacity||TINY.style.val(e,'opacity'),d=a>o*100?1:-1;e.style.opacity=o;clearInterval(e.ai);e.ai=setInterval(function(){TINY.alpha.tw(e,a,d,s)},20)},tw:function(e,a,d,s){var o=Math.round(e.style.opacity*100);if(o==a){clearInterval(e.ai)}else{var n=o+Math.ceil(Math.abs(a-o)/s)*d;e.style.opacity=n/100;e.style.filter='alpha(opacity='+n+')'}}}}();TINY.style=function(){return{val:function(e,p){e=typeof e=='object'?e:$(e);return e.currentStyle?e.currentStyle[p]:document.defaultView.getComputedStyle(e,null).getPropertyValue(p)}}}();
</script>
<script type="text/javascript">
	$('slideshow').style.display='none';
	$('wrapper').style.display='block';
	var slideshow=new TINY.slideshow("slideshow");
	window.onload=function(){
		slideshow.auto=true;
		slideshow.speed=5;
		slideshow.link="linkhover";
		slideshow.info="information";
		slideshow.thumbs="slider";
		slideshow.left="slideleft";
		slideshow.right="slideright";
		slideshow.scrollSpeed=4;
		slideshow.spacing=5;
		slideshow.active="#edb02b";
		slideshow.init("slideshow","image","imgprev","imgnext","imglink");
	}
</script>
</body>
</html>