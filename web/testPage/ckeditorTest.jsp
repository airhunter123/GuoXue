<%-- 
    Document   : ckeditorTest
    Created on : 2014-3-10, 10:59:16
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <textarea rows="30" cols="50" name="editor01">请输入.</textarea>
        <script type="text/javascript">CKEDITOR.replace('editor01');</script>
    </body>
</html>
