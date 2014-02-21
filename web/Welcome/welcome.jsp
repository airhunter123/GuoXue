<%-- 
    网站首页   你好啊
--%>
<%@page import="PageControl.WelcomePage.WelcomeRemark"%>
<%@page import="PageControl.WelcomePage.WelcomeNews"%>
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
    <link href="../css/news.css" rel="stylesheet" type="text/css"/>
    <link href="../css/video&pic.css" rel="stylesheet" type="text/css"/>
    <link href="../css/calendar.css" rel="stylesheet" type="text/css"/>
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
   
   WelcomeNews welcomeNews=(WelcomeNews)context.getBean("WelcomeNews");
   request.setAttribute("welcomeNews", welcomeNews);
   
   WelcomeRemark welcomeRemark=(WelcomeRemark)context.getBean("WelcomeRemark");
   request.setAttribute("welcomeRemark", welcomeRemark);
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
        
          <!--焦点图与推荐信息开始-->
        <table bgcolor="#1e2621" width="962px">
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
        </table><br>
        <!--焦点图与推荐信息结束-->
        
        <!--日历与视频、图库开始-->
        <table>
            <tr><td>
        <!--日历开始-->
        <table border="0" cellpadding="0" cellspacing="1" class="Calendar" id="caltable" style="margin-right: 30px;margin-left: 30px">
        <thead>
         <tr align="center" valign="middle" style="height: 30px"> 
            <td colspan="7" class="Title">
                <a href="javaScript:subMonth();" title="上一月" Class="DayButton">3</a> <input name="year" type="text" size="4" maxlength="4" onkeydown="if (event.keyCode==13){setDate()}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"  onpaste="this.value=this.value.replace(/[^0-9]/g,'')"> 年 <input name="month" type="text" size="1" maxlength="2" onkeydown="if (event.keyCode==13){setDate()}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"  onpaste="this.value=this.value.replace(/[^0-9]/g,'')"> 月 <a href="JavaScript:addMonth();" title="下一月" Class="DayButton">4</a>
            </td>
         </tr>
         <tr align="center" valign="middle"> 
            <Script language="JavaScript">  
            document.write("<TD class=DaySunTitle id=diary >" + days[0] + "</TD>"); 
            for (var intLoop = 1; intLoop < days.length-1;intLoop++) 
            document.write("<TD class=DayTitle id=diary>" + days[intLoop] + "</TD>"); 
            document.write("<TD class=DaySatTitle id=diary>" + days[intLoop] + "</TD>"); 
            </Script>
        </tr> 
       </thead>
       <tbody border=1 cellspacing="0" cellpadding="0" ID="calendar" ALIGN=CENTER >
        <Script LANGUAGE="JavaScript">
        for(var intWeeks = 0; intWeeks < 6; intWeeks++)
        {
            document.write("<TR style='cursor:hand'>");
            for (var intDays = 0; intDays < days.length;intDays++) document.write("<TD class='CalendarTD'></TD>");
            document.write("</TR>");
        } 
        </Script>
       </tbody>
      </table></td>
        <!--日历结束-->
        <!--视频、图库开始-->
        <td>
        <table cellspacing="0" cellpadding="0" style="margin:auto;"><!--这两个属性用于控制列间距-->
          <tr>
            <td >
                <div class="VideoContentbox">
                  <div id="con_video_1" >
                    <table style="width: 100%;margin-top: 5%">
                      <tr>
                        <td>
                          <a class="textStyle" href="#">
                            <img src="../pic/video&pic/1.jpg" style="width:70%;height: 140px;border-color: #f47a20"/><br>
                          图1</a><br>
                        </td>  
                        <td style="width: 50%;text-align: center;">
                          <ul>
                            <li><a class="textStyle" href="#">内容1<br>概述...</a></li>
                            <li><a class="textStyle" href="#">内容2<br>概述...</a></li>
                          </ul><br>
                           <a class="textStyle" href="#">更多></a>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_video_2" style="display:none">
                    <table style="width: 100%;margin-top: 5%">
                      <tr>
                        <td>
                          <a class="textStyle" href="#">
                            <img src="../pic/video&pic/2.jpg" style="width:70%;height: 140px;border-color: #f47a20"/><br>
                          图2</a><br>
                        </td>  
                        <td style="width: 50%;text-align: center;">
                          <ul>
                            <li><a class="textStyle" href="#">内容3<br>概述...</a></li>
                            <li><a class="textStyle" href="#">内容4<br>概述...</a></li>
                          </ul><br>
                           <a class="textStyle" href="#">更多></a>
                        </td>
                      </tr>
                    </table>
                  </div>  
             </div>              
            </td>
            <td>
               <div class="VideoMenubox">  
                    <ul>  
                    <li id="video1" onmouseover="setTab('video',1,2)"  class="hover"><br>国学图库</li><br>  
                    <li id="video2" onmouseover="setTab('video',2,2)" ><br>国学视频</li>  
                    </ul>  
                </div>               
            </td>
          </tr>
        </table>
        
        <!--视频图库结束-->
        </td></tr></table><br>
        <!--日历与视频、图库结束-->
        
        <hr class="line"><br>
        
        <!--主题新闻开始-->
        <table style="background-color:#1e2621;margin:auto;width: 98%">
          <tr>
            <td>
              <div id="Tab1">  
                 <div class="Menubox">  
                    <ul>  
                    <li id="one1" onmouseover="setTab('one',1,4)"  class="hover">${welcomeNews.topic[0]}</li>  
                    <li id="one2" onmouseover="setTab('one',2,4)" >${welcomeNews.topic[1]}</li>  
                    <li id="one3" onmouseover="setTab('one',3,4)">${welcomeNews.topic[2]}</li>  
                    <li id="one4" onmouseover="setTab('one',4,4)">${welcomeNews.topic[3]}</li>  
                    </ul>  
                </div>  
            <div class="Contentbox">  
                  <div id="con_one_1" >
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[0]}>${welcomeNews.content[0]}<br>${welcomeNews.contentAbstract[0]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[1]}>${welcomeNews.content[1]}<br>${welcomeNews.contentAbstract[1]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[2]}>${welcomeNews.content[2]}<br>${welcomeNews.contentAbstract[2]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[3]}>${welcomeNews.content[3]}<br>${welcomeNews.contentAbstract[3]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[0]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[0]}>
                            <img src="../pic/newsPic/table1/1.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[0]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_one_2" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[4]}>${welcomeNews.content[4]}<br>${welcomeNews.contentAbstract[4]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[5]}>${welcomeNews.content[5]}<br>${welcomeNews.contentAbstract[5]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[6]}>${welcomeNews.content[6]}<br>${welcomeNews.contentAbstract[6]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[7]}>${welcomeNews.content[7]}<br>${welcomeNews.contentAbstract[7]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[1]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[1]}>
                            <img src="../pic/newsPic/table1/2.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[1]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_one_3" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[8]}>${welcomeNews.content[8]}<br>${welcomeNews.contentAbstract[8]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[9]}>${welcomeNews.content[9]}<br>${welcomeNews.contentAbstract[9]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[10]}>${welcomeNews.content[10]}<br>${welcomeNews.contentAbstract[10]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[11]}>${welcomeNews.content[11]}<br>${welcomeNews.contentAbstract[11]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[2]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[2]}>
                            <img src="../pic/newsPic/table1/3.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[2]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_one_4" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[12]}>${welcomeNews.content[12]}<br>${welcomeNews.contentAbstract[12]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[13]}>${welcomeNews.content[13]}<br>${welcomeNews.contentAbstract[13]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[14]}>${welcomeNews.content[14]}<br>${welcomeNews.contentAbstract[14]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[15]}>${welcomeNews.content[15]}<br>${welcomeNews.contentAbstract[15]}</a></li>
                          </ul><br>
                          <a class="textStyle" href=${welcomeNews.moreHref[3]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[3]}>
                            <img src="../pic/newsPic/table1/4.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[3]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
            </div>  
            </div> 
            </td>
          </tr>
        </table><br>
        <hr class="line"><br>
         <table style="background-color:#1e2621;margin:auto;width: 98%">
          <tr>
            <td>
              <div id="Tab2">  
                 <div class="Menubox">  
                    <ul>  
                    <li id="two1" onmouseover="setTab('two',1,4)"  class="hover">${welcomeNews.topic[4]}</li>  
                    <li id="two2" onmouseover="setTab('two',2,4)" >${welcomeNews.topic[5]}</li>  
                    <li id="two3" onmouseover="setTab('two',3,4)">${welcomeNews.topic[6]}</li>  
                    <li id="two4" onmouseover="setTab('two',4,4)">${welcomeNews.topic[7]}</li>  
                    </ul>  
                </div>  
            <div class="Contentbox">  
                  <div id="con_two_1" >
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[16]}>${welcomeNews.content[16]}<br>${welcomeNews.contentAbstract[16]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[17]}>${welcomeNews.content[17]}<br>${welcomeNews.contentAbstract[17]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[18]}>${welcomeNews.content[18]}<br>${welcomeNews.contentAbstract[18]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[19]}>${welcomeNews.content[19]}<br>${welcomeNews.contentAbstract[19]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[4]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[4]}>
                            <img src="../pic/newsPic/table2/1.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[4]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_two_2" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[20]}>${welcomeNews.content[20]}<br>${welcomeNews.contentAbstract[20]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[21]}>${welcomeNews.content[21]}<br>${welcomeNews.contentAbstract[21]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[22]}>${welcomeNews.content[22]}<br>${welcomeNews.contentAbstract[22]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[23]}>${welcomeNews.content[23]}<br>${welcomeNews.contentAbstract[23]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[5]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[5]}>
                            <img src="../pic/newsPic/table2/2.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[5]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_two_3" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[24]}>${welcomeNews.content[24]}<br>${welcomeNews.contentAbstract[24]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[25]}>${welcomeNews.content[25]}<br>${welcomeNews.contentAbstract[25]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[26]}>${welcomeNews.content[26]}<br>${welcomeNews.contentAbstract[26]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[27]}>${welcomeNews.content[27]}<br>${welcomeNews.contentAbstract[27]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[6]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[6]}>
                            <img src="../pic/newsPic/table2/3.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[6]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_two_4" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[28]}>${welcomeNews.content[28]}<br>${welcomeNews.contentAbstract[28]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[29]}>${welcomeNews.content[29]}<br>${welcomeNews.contentAbstract[29]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[30]}>${welcomeNews.content[30]}<br>${welcomeNews.contentAbstract[30]}</a></li>
                            <li><a class="textStyle" href=${welcomeNews.contentHref[31]}>${welcomeNews.content[31]}<br>${welcomeNews.contentAbstract[31]}</a></li>
                          </ul><br>
                           <a class="textStyle" href=${welcomeNews.moreHref[7]}>${welcomeNews.topic[8]}</a>
                        </td>
                        <td>
                          <a class="textStyle" href=${welcomeNews.picHref[7]}>
                            <img src="../pic/newsPic/table2/4.jpg" style="width:50%;height: 130px;border-color: #f47a20"/><br>
                          ${welcomeNews.picTitle[7]}</a><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
            </div>  
            </div> 
            </td>
          </tr>
        </table><br>
      </div>
      <hr class="line"><br>
     <!--首页主内容区结束-->
     <span class="textStyle" style="font-size: 5px">
         ${welcomeRemark.remark[0]}<br>
         ${welcomeRemark.remark[1]}<br>
         ${welcomeRemark.remark[2]}<br>
         ${welcomeRemark.remark[3]}<br><br>
     </span>
    </div>
  </body>
  <script language="JavaScript"> 
    var myTime=showTime();
    //显示时间
   document.getElementById( "time" ).innerHTML=myTime; 
   
   //变化新闻栏选项卡
   function setTab(name,cursel,n){  
      for(i=1;i<=n;i++){  
      var menu=document.getElementById(name+i);  
      var con=document.getElementById("con_"+name+"_"+i);  
      menu.className=i==cursel?"hover":"";  
      con.style.display=i==cursel?"block":"none";  
    } } 
    //生成日历
   Calendar();
  </script>
</html>
