<%-- 
    网站首页
--%>
<%@page import="PageControl.WelcomePage.WelcomeTopNews"%>
<%@page import="PageControl.WelcomePage.WelcomePointPic"%>
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
    <link href="../css/pointPic.css" rel="stylesheet" type="text/css"/>
    <link href="../css/topNews.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="../script/welcomePageScript.js">
    </script>
    <title>中国少年国学网</title>
  </head>
  <%
   String path=application.getRealPath("//");//获取当前项目的物理路径
    ApplicationContext context=new FileSystemXmlApplicationContext(path+"\\WEB-INF\\applicationContext.xml");
    
   WelcomeHead welcomeHead=(WelcomeHead)context.getBean("WelcomeHead");
   request.setAttribute("welcomeHead", welcomeHead);
   
   WelcomePointPic welcomePointPic=(WelcomePointPic)context.getBean("WelcomePointPic");
   request.setAttribute("welcomePointPic", welcomePointPic);
   
  WelcomeTopNews welcomeTopNews=(WelcomeTopNews)context.getBean("WelcomeTopNews");
  request.setAttribute("welcomeTopNews", welcomeTopNews);
   %>
  <body class="style1">
    <div id="all"class="style2">
      
      <!--网页头部开始-->
    <div id="top" class="style3">
      <span>
        <a href="welcome.jsp" onclick="addHome()" class="textStyle">设为首页</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[0]} >${welcomeHead.itemTop[0]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[1]}>${welcomeHead.itemTop[1]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[2]}>${welcomeHead.itemTop[2]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[3]}>${welcomeHead.itemTop[3]}</a>
        <a class="textStyle" href=${welcomeHead.itemTopHref[4]}>${welcomeHead.itemTop[4]}</a>
        &nbsp; &nbsp; &nbsp;
      </span><br>
      <table id="title" class="style4"><!--标题-->
        <tr>
          <td></td>
        </tr>
      </table>
      
      <!--站内搜索与时间-->
      <div bgcolor="#1e2621" width="962px" height="30px" style="margin-bottom: 4px;margin-top: 4px;text-align: left">
              <span id="time" class="textStyle" style="margin-right: 380px;margin-left:80px;font-size: 16px"></span>
              <input id="search" type="text" class="inputStyle">
              <button id="searchButton"onclick="search()" class="buttonStyle">${welcomeHead.itemTop[5]}</button>
      </div>   
          
      <table id="bar"  bgcolor="#af5921">
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
      <!--网页头部结束-->
      
      <!--首页主内容区开始-->
      <div>
        
        <table bgcolor="#1e2621" width="962px"><!--焦点图与推荐信息-->
          <tr>
            <td>
             <div id="box"><!--焦点图-->
                <ul class="list">
                  <li class="current"><img src="../pic/pointPic/1.jpg"/></li>
                  <li><img src="../pic/pointPic/2.jpg"/></li>
                  <li><img src="../pic/pointPic/3.jpg"/></li>
                  <li><img src="../pic/pointPic/4.jpg"/></li>
                  <li><img src="../pic/pointPic/5.jpg"/></li>
               </ul>
              <ul class="count">
                  <li class="current">1</li>
                  <li>2</li>
                  <li>3</li>
                  <li>4</li>
                  <li>5</li>
              </ul>
              <ul id="text" style="display:none">
                <li><a class="textStyle" href=${welcomePointPic.pointTextHref[0]}>${welcomePointPic.pointText[0]}</a></li>
                    <li><a class="textStyle" href=${welcomePointPic.pointTextHref[1]}>${welcomePointPic.pointText[1]}</a></li>
                    <li><a class="textStyle" href=${welcomePointPic.pointTextHref[2]}>${welcomePointPic.pointText[2]}</a></li>
                    <li><a class="textStyle" href=${welcomePointPic.pointTextHref[3]}>${welcomePointPic.pointText[3]}</a></li>
                    <li><a class="textStyle" href=${welcomePointPic.pointTextHref[4]}>${welcomePointPic.pointText[4]}</a></li>
              </ul>
                <span id="showText" class="showText"></span>
                 <span id="showIndex"></span>
              </div>
            </td>
            
            <td><!--推荐新闻-->
                <div class="box2" id="movie_rank">
                  <h2>${welcomeTopNews.newsTitle[0]}<span><a href=${welcomeTopNews.newsTitle[2]}>${welcomeTopNews.newsTitle[1]}</a></span></h2>
                    <div class="inner">
                    <ul class="rank_list">
                      <li class="top3"><em>1</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[0]}>${welcomeTopNews.news[0]}</a></li>
                      <li class="top3"><em>2</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[1]}>${welcomeTopNews.news[1]}</a></li>
                      <li class="top3"><em>3</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b"href=${welcomeTopNews.newsHref[2]}  >${welcomeTopNews.news[2]}</a></li>
                      <li><em>4</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[3]} >${welcomeTopNews.news[3]}</a></li>
                      <li><em>5</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[4]}>${welcomeTopNews.news[4]}</a></li>
                      <li><em>6</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[5]} >${welcomeTopNews.news[5]}</a></li>
                      <li><em>7</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[6]}>${welcomeTopNews.news[6]}</a></li>
                      <li><em>8</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[7]}>${welcomeTopNews.news[7]}</a></li>
                      <li><em>9</em>&nbsp;&nbsp;&nbsp;<a style="color: #edb02b" href=${welcomeTopNews.newsHref[8]}>${welcomeTopNews.news[8]}</a></li>
                    </ul>
                    </div>
                </div>
            </td>
            
            
          </tr>
        </table>
        
      </div>
     <!--首页主内容区结束--> 
    </div>
  </body>
  <script language="JavaScript"> 
    var myTime=showTime();
    //显示时间
   document.getElementById( "time" ).innerHTML=myTime; 
   
   
  </script>
</html>
