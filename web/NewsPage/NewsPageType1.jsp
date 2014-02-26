<%-- 
    这是本站最基本的一个新闻页面
--%>

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
        <script language="JavaScript" src="../script/welcomePageScript.js">
        </script>
        <title>新闻</title>
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
      <table id="title" class="style4"><!--标题-->
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
    <div class="textStyle" style="text-align: center;width:80%;
         height: 2000px;margin: auto;word-wrap:break-word ;">
        <!--word-wrap:break-word控制文本超过控件长度就自动换行-->
        <h1>标题</h1>
        <h2>作者</h2>
        <p>
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaaa
            aaaaaaaaaaaaaaaaaaaaaaa
        </p>
        <p>bbbbbbbbbbbbbb</p>
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
</html>
