<%-- 
    这是网站所有纯文档的录入窗口
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="PageControl.WelcomePage.WelcomeNews"%>
<%@page import="org.springframework.context.support.FileSystemXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../ManagerCss/ArticleInput.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>文档录入</title>
    </head>
    <%
    String path=application.getRealPath("//");//获取当前项目的物理路径
    ApplicationContext context=new FileSystemXmlApplicationContext(path+"\\WEB-INF\\applicationContext.xml");
    WelcomeNews welcomeNews=(WelcomeNews)context.getBean("WelcomeNews");
    request.setAttribute("welcomeNews", welcomeNews);
    
    Date date=new Date();
    String time =new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss").format(date).toString();
    request.setAttribute("time",time);
    %>
    
    <body class="bodyStyle">
        
        <s:form onsubmit="return submitCheck()" action="articleInput" method="post" enctype="multipart/form-data">
            <table  cellspacing="0" cellpadding="5" style="margin:auto" class="tableStyle">
                <caption align="top" style="background-color: #252c24;margin-top: 50px;margin-bottom: 50px;font-size: 30px">
                    录入新文档
                </caption>
                <tr>
                    <td>标题：</td>
                    <td><s:textfield id="title" name="article.title" cssClass="inputStyle"></s:textfield>&nbsp;*(星号表示必填)</td>
                </tr>
                <tr>
                    <td>作者：</td>
                    <td><s:textfield id="author" name="article.author" cssClass="inputStyle"></s:textfield>&nbsp;*</td>
                </tr>
                <tr title="请直接填写图片名，多个图片以“#”分隔，最多填入三张图片！">
                    <td>图片：</td>
                    <td><s:textfield name="article.img" cssClass="inputStyle"></s:textfield></td>
                </tr>
                <tr>
                    <td>时间：</td>
                    <td><input name="article.releasetime" readonly="true" Class="inputStyle" value=${time}></td>
                </tr>
                <tr>
                    <td>编辑：</td>
                    <td><s:textfield id="editor" name="article.editor" cssClass="inputStyle"></s:textfield>&nbsp;*</td>
                </tr>
                <tr>
                    <td>出处：</td>
                    <td><s:textfield name="article.origin" cssClass="inputStyle"></s:textfield></td>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td><s:textfield name="article.comment" cssClass="inputStyle"></s:textfield></td>
                </tr>
                <tr>
                    <td>分类：</td>
                    <td>
                        <select name="article.gategory" class="selectStyle">
                            <option value="0" selected="ture">无专题</option>
                            <option value="1">${welcomeNews.topic[0]}</option>
                            <option value="2">${welcomeNews.topic[1]}</option>
                            <option value="3">${welcomeNews.topic[2]}</option>
                            <option value="4">${welcomeNews.topic[3]}</option>
                            <option value="5">${welcomeNews.topic[4]}</option>
                            <option value="6">${welcomeNews.topic[5]}</option>
                            <option value="7">${welcomeNews.topic[6]}</option>
                            <option value="8">${welcomeNews.topic[7]}</option>
                        </select>
                    </td>
                </tr>
                <tr title="每种样式对应不同的排版方案，样式0表示无图片，样式1表示包含一张图片，以此类推！">
                    <td>格式：</td>
                    <td>
                        <select name="article.format" class="selectStyle">
                            <option value="0" selected="true">样式0</option>
                            <option value="1">样式1</option>
                            <option value="2">样式2</option>
                            <option value="3">样式3</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td valign="top"><span>简介：</span></td><!--valign控制文字位置-->
                    <td><s:textarea name="article.introduction" cssClass="inputArea1"></s:textarea></td>
                </tr>
                <tr>
                    <td valign="top">正文：</td>
                    <td valign="top"><s:textarea id="context" name="article.context" cssClass="inputArea2"></s:textarea>&nbsp;*</td>
                </tr>
                
                <caption align="bottom" style="background-color: #252c24;margin-top: 20px;">
                    <s:submit value="提 交" cssClass="buttonStyle"></s:submit>&nbsp;&nbsp;&nbsp;
                    <button class="buttonStyle">取 消</button>
                </caption>
            </table>
        </s:form>
    </body>
    <script language="JavaScript">
        function submitCheck(){
            var title=document.getElementById("title");
            var author=document.getElementById("author");
            var context=document.getElementById("context");
            var editor=document.getElementById("editor");
            var message="";
            if(title.value==""){
                message=message+"标题为空！";
            }
            if(author.value==""){
                message=message+"作者为空！";
            }
            if(editor.value==""){
                message=message+"编辑为空！";
            }
            if(context.value==""){
                message=message+"正文为空！";
            }
            if(message==""){
                return true;
            }else{
                alert(message);
                return false;
            }
            
        }
     </script>
</html>
