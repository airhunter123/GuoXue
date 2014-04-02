<%-- 
   图片库
--%>

<%@page import="POJO.Article"%>
<%@page import="PageControl.WelcomePage.WelcomeRemark"%>
<%@page import="PageControl.WelcomePage.WelcomeHead"%>
<%@page import="org.springframework.context.support.FileSystemXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/myStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../css/button.css" rel="stylesheet" type="text/css"/>
        <link href="NewsPageType3.css" rel="stylesheet" type="text/css"/>
        <script language="JavaScript" src="../script/welcomePageScript.js">
        </script>
        <title>${article.title}</title>
    </head>
    <%
        String path=application.getRealPath("//");//获取当前项目的物理路径
        ApplicationContext context=new FileSystemXmlApplicationContext(path+"\\WEB-INF\\applicationContext.xml");
        WelcomeHead welcomeHead=(WelcomeHead)context.getBean("WelcomeHead");
        request.setAttribute("welcomeHead", welcomeHead);
        WelcomeRemark welcomeRemark=(WelcomeRemark)context.getBean("WelcomeRemark");
        request.setAttribute("welcomeRemark", welcomeRemark);
    %>
    <body class="style1">
    <div id="all"class="style2">
            <!--网页头部开始-->
    <div id="top" class="style3">
      <span>
        <a href="../Welcome/welcome.jsp" onclick="addHome()" class="textStyle">设为首页</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[0]} >${welcomeHead.itemTop[0]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[1]}>${welcomeHead.itemTop[1]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[2]}>${welcomeHead.itemTop[2]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[3]}>${welcomeHead.itemTop[3]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[4]}>${welcomeHead.itemTop[4]}</a>
        &nbsp; &nbsp; &nbsp;
      </span><br>
      <table id="title" class="style4"><!--标题图片-->
          <tr><td onclick="window.location='../Welcome/welcome.jsp'"></td></tr>
      </table>
      
      <!--站内搜索与时间-->
      <div bgcolor="#1e2621" width="962px" height="30px" style="margin-bottom: 4px;margin-top: 4px;text-align: left">
              <span id="time" class="textStyle" style="margin-right: 380px;margin-left:80px;font-size: 16px"></span>
              <input id="search" type="text" class="inputStyle">
              <button id="searchButton"onclick="search()" class="buttonStyle">${welcomeHead.itemTop[5]}</button>
      </div>   
          
      <table id="bar"  bgcolor="#af5921" cellspacing="2px" cellpadding="0">
        <tr>
          <td>
            <button class="orange">${welcomeHead.itemMenu[0]}</button>  
          </td> 
          <td>
            <button class="orange">${welcomeHead.itemMenu[1]}</button>  
          </td> 
          <td>
            <button class="orange">${welcomeHead.itemMenu[2]}</button>  
          </td> 
          <td>
            <button class="orange">${welcomeHead.itemMenu[3]}</button>  
          </td> 
          <td>
            <button class="orange">${welcomeHead.itemMenu[4]}</button>  
          </td> 
          <td>
            <button class="orange">${welcomeHead.itemMenu[5]}</button>  
          </td> 
          
        </tr>
      </table>
    </div><br>
    
    <!--主内容区 开始-->
    <hr class="line" style="width: 90%;height: 2px"><br>
    <div class="textStyle" style="text-align: center;width:90%;margin: auto;font-family:'微软雅黑'">
        <h1 style="font-size: 20px">${article.title}</h1>
       
              <ul id="slideshow">
		<li>
			<h3>TinySlideshow v1</h3>
			<span>../pic/showerPic/photos/orange-fish.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/orange-fish-thumb.jpg" alt="Orange Fish" /></a>
		</li>
		<li>
			<h3>Sea Turtle</h3>
			<span>../pic/showerPic/photos/sea-turtle.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<img src="../pic/showerPic/thumbnails/sea-turtle-thumb.jpg" alt="Sea Turtle" />
		</li>
		<li>
			<h3>Red Coral</h3>
			<span>../pic/showerPic/photos/red-coral.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/red-coral-thumb.jpg" alt="Red Coral" /></a>
		</li>
		<li>
			<h3>Coral Reef</h3>
			<span>../pic/showerPic/photos/coral-reef.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/coral-reef-thumb.jpg" alt="Coral Reef" /></a>
		</li>
		<li>
			<h3>Blue Fish</h3>
			<span>../pic/showerPic/photos/blue-fish.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<img src="../pic/showerPic/thumbnails/blue-fish-thumb.jpg" alt="Blue Fish" />
		</li>
		<li>
			<h3>TinySlideshow v.2</h3>
			<span>../pic/showerPic/photos/yellow-fish.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/yellow-fish-thumb.jpg" alt="Yellow Fish" /></a>
		</li>
		<li>
			<h3>Squid</h3>
			<span>../pic/showerPic/photos/squid.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/squid-thumb.jpg" alt="Squid" /></a>
		</li>
		<li>
			<h3>Small Fish</h3>
			<span>../pic/showerPic/photos/small-fish.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/small-fish-thumb.jpg" alt="Small Fish" /></a>
		</li>
                <li>
			<h3>Small Fish aaaa</h3>
			<span>../pic/showerPic/photos/small-fish.jpg</span>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut urna. Mauris nulla. Donec nec mauris. Proin nulla dolor, bibendum et, dapibus in, euismod ut, felis.</p>
			<a href="#"><img src="../pic/showerPic/thumbnails/small-fish-thumb.jpg" alt="Small Fish" /></a>
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
            
    </div><br>
    <hr class="line" style="width: 90%;height: 2px"><br>
    <div style="text-align: right;margin-right:10%;color: #edb02b;
         font-family: '微软雅黑';font-size: 10px">
        发布：${article.releasetime}
        &nbsp;&nbsp;&nbsp;&nbsp;编辑：${article.editor}
        &nbsp;&nbsp;&nbsp;&nbsp;来源：${article.origin}<br>
        
    </div><br>
    <!--主内容区 结束-->
    
    <hr class="line"><br>
    <div style="text-align: center">
    <span class="textStyle" style="font-size: 5px;">
         ${welcomeRemark.remark[0]}<br>
         ${welcomeRemark.remark[1]}<br>
         ${welcomeRemark.remark[2]}<br>
         ${welcomeRemark.remark[3]}<br><br>
     </span>
    </div>
    </div>
    </body>
    <script language="JavaScript"> 
        var myTime=showTime();
        //显示时间
        document.getElementById( "time" ).innerHTML=myTime;
    </script>
    
    <script type="text/javascript" src="NewsPageType3.js"></script>
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
</html>
