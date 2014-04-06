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
        <link href="../ManagerCss/ManagerCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>文档录入</title>
        <script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
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
        
        <form id="form" action="articleInput" method="post" enctype="multipart/form-data">
            <table  id="maintable" cellspacing="0" cellpadding="5" style="margin:auto" class="tableStyle">
                <caption align="top" style="background-color: #252c24;margin-top: 50px;margin-bottom: 50px;font-size: 30px">
                    录入新文档
                </caption>
                <tr>
                    <td>标题：</td>
                    <td><s:textfield id="title" name="article.title" cssClass="inputStyle"></s:textfield></td>
                </tr>
                <tr>
                    <td>作者：</td>
                    <td><s:textfield id="author" name="article.author" cssClass="inputStyle"></s:textfield></td>
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
                    <td><s:textfield id="editor" name="article.editor" cssClass="inputStyle"></s:textfield></td>
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
                <tr title="根据需要选择相应的样式">
                    <td>格式：</td>
                    <td>
                        <select id="select" name="article.format" class="selectStyle" onchange="replace()">
                            <option value="0" selected="true">样式0</option>
                            <option value="1">样式1</option>
                            <option value="2">样式2(视频页面)</option>
                            <option value="3">样式3(图片页面)</option>
                        </select>
                    </td>
                </tr>
                <tr id="workarea1">
                    <td valign="top"><span>简介：</span></td><!--valign控制文字位置-->
                    <td><textarea name="article.introduction"></textarea></td>
                    <script type="text/javascript">CKEDITOR.replace('article.introduction');</script>
                </tr>
                <tr id="workarea2">
                    <td valign="top">正文：</td>
                    <td valign="top"><textarea name="article.context"></textarea></td>
                    <script type="text/javascript">CKEDITOR.replace('article.context');</script>
                </tr>
                <caption align="bottom" style="background-color: #252c24;margin-top: 20px;">
                    
                </caption>
            </table>
        </form><br><br>
        <button class="buttonStyle" style="margin-left: 480px" onclick="formSubmit()">提交</button>
        <button class="buttonStyle" style="margin-left: 150px" onclick="test()">取 消</button>
    </body>
    <script language="JavaScript">
        function replace(){
            var select=document.getElementById("select");
            var parent=document.getElementById("workarea1").parentNode;//获取编辑器父组件
            if(select.value=="2"){
                var tr1=document.getElementById("workarea1");//获取编辑器组件
                var tr2=document.getElementById("workarea2");//获取老文本域
                
                parent.removeChild(tr1);//移除老组件，替换新组件
                parent.removeChild(tr2);
                
                tr1=document.createElement("tr");//创建工作区
                tr1.setAttribute("id","workarea1");
                tr2=document.createElement("tr");
                tr2.setAttribute("id","workarea2");
                tr1.innerHTML="<td valign='top'><span>简介：</span></td><td><textarea name='article.introduction'></textarea></td>";
                
                tr2.innerHTML="<td valign='top'>视频：</td>"
                var td=document.createElement("td");
                
                var input=document.createElement("input");//创建新文本框
                input.setAttribute("id","contextInput");
                input.setAttribute("name", "article.context");
                input.setAttribute("class", "inputStyle");
                input.setAttribute("title","请在本区域输入视频代码");
                input.style.width="575px";
                td.appendChild(input);//安装新组件
                tr2.appendChild(td);
                
                parent.appendChild(tr1);//还原组件
                parent.appendChild(tr2);
                CKEDITOR.replace('article.introduction');//重塑第一工作区
                
            }else if(select.value=="3"){
                var tr1=document.getElementById("workarea1");//获取编辑器组件
                var tr2=document.getElementById("workarea2");//获取老文本域
                
                parent.removeChild(tr1);//移除老组件，替换新组件
                parent.removeChild(tr2);
                
                tr1=document.createElement("tr");//创建工作区
                tr1.setAttribute("id","workarea1");
                tr2=document.createElement("tr");
                tr2.setAttribute("id","workarea2");
                
                tr1.innerHTML=
            "<td valign='top'><span>图片：</span></td><td>\n\
             <div id='picDiv' style='font-size:18px;border:3px solid #edb02b;width:575px;margin-top:10px'><br>\n\
             \n\
             \n\
             <button onclick='return addPic()' class='buttonStyle' style='width: 50px;margin-left:10px;'>+</button>\n\
             <button onclick='return removePic()' class='buttonStyle' style='width: 50px;'>-</button><br><br>\n\
             \n\
             &nbsp;&nbsp;文件夹名：<input class='inputStyle' style='width:170px'><br><br>\n\
             \n\
             <div style='font-size:15px;border:3px solid #f47a20;width:500px;margin-left:10px;margin-bottom:20px;'>\n\
               <br>&nbsp;&nbsp;图名：<input class='inputStyle' style='width:200px'><br>\n\
               <br>&nbsp;&nbsp;标题：<input class='inputStyle' style='width:200px'><br>\n\
               <br>&nbsp;&nbsp;解说：<input class='inputStyle' style='width:400px;'><br><br>\n\
             </div>\n\
             \n\
             </div></td>";
                
                parent.appendChild(tr1);
                parent.appendChild(tr2);
            }
            else{
                var tr1=document.getElementById("workarea1");//获取编辑器组件
                var tr2=document.getElementById("workarea2");//获取老文本域
                
                parent.removeChild(tr1);//移除老组件，替换新组件
                parent.removeChild(tr2);
                
                tr1=document.createElement("tr");//创建工作区
                tr1.setAttribute("id","workarea1");
                tr2=document.createElement("tr");
                tr2.setAttribute("id","workarea2");
                
                tr1.innerHTML="<td valign='top'><span>简介：</span></td><td><textarea name='article.introduction'></textarea></td>"
                tr2.innerHTML="<td valign='top'>正文：</td><td valign='top'><textarea name='article.context'></textarea></td>"
                parent.appendChild(tr1);
                parent.appendChild(tr2);
                
                CKEDITOR.replace('article.introduction');
                CKEDITOR.replace('article.context');
            }
        }
        function addPic(){//添加一个图片输入区
            var div=document.createElement("div");
            div.setAttribute("style","font-size:15px;border:3px solid #f47a20;\n\
                             width:500px;margin-left:10px;margin-bottom:20px;");
            div.innerHTML=
          "<br>&nbsp;&nbsp;图名：<input class='inputStyle' style='width:200px'><br><br>\n\
          &nbsp;&nbsp;标题：<input class='inputStyle' style='width:200px'><br><br>\n\
          &nbsp;&nbsp;解说：<input class='inputStyle' style='width:400px;'><br><br>";
          document.getElementById("picDiv").appendChild(div);
            
            return false;//限制表单内按钮提交
        }
        function removePic(){
            var parent=document.getElementById("picDiv");
            var num=parent.childNodes.length;
            if(num>=15){//经实验，发现picDiv未按“+”的情况下共有14个子节点！！
                var child=parent.childNodes[num-1];
                parent.removeChild(child);//移除最后一个节点
            }
            
            return false;//限制表单内按钮提交
        }
        function formSubmit(){
            var form=document.getElementById("form");
            form.submit();//使用submit()方法可能导致form的onsubmit功能失效!!!
        }
     </script>
</html>
