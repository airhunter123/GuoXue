<%-- 
    这是用来测试spring自动注入属性的
--%>

<%@page import="PageControl.SpringTest"%>

<%@page import="org.springframework.context.support.FileSystemXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
   <%
   String path=application.getRealPath("//");//获取当前项目的物理路径
    ApplicationContext context=new FileSystemXmlApplicationContext(path+"\\WEB-INF\\applicationContext.xml");
   SpringTest w=(SpringTest)context.getBean("test");
   request.setAttribute("w", w);
   %>
    <button>${w.title}</button>
    <span><%=application.getRealPath("//")%></span>
  </body>
</html>
