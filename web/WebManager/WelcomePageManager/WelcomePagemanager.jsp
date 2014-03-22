<%-- 
    这个页面用于首页内容管理
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../ManagerCss/ManagerCss.css" rel="stylesheet" type="text/css"/>
        <title>首页内容管理</title>
    </head>
    <body class="bodyStyle">
        <iframe name="support" style="display:none" ></iframe><!--用于使表单提交后不跳转，本iframe隐藏-->
        
        
        
        <div class="tableStyle" style="text-align: center;margin-top: 50px">
            <span style="background-color: #252c24;font-size: 30px;">
                    首页内容管理
            </span><br><br><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    置顶链接
            </span><br>
            <div>
                <hr class="line">
                项目1：<input id="itemTop1" type="text" class="inputStyle" style="width: 80px"/>
                项目2：<input id="itemTop2" type="text" class="inputStyle" style="width: 80px"/>
                项目3：<input id="itemTop3" type="text" class="inputStyle" style="width: 80px"/>
                项目4：<input id="itemTop4" type="text" class="inputStyle" style="width: 80px"/>
                项目5：<input id="itemTop5" type="text" class="inputStyle" style="width: 80px"/><br>
                链接1：<input id="itemTopHref1" type="text" class="inputStyle" style="width: 80px"/>
                链接2：<input id="itemTopHref2" type="text" class="inputStyle" style="width: 80px"/>
                链接3：<input id="itemTopHref3" type="text" class="inputStyle" style="width: 80px"/>
                链接4：<input id="itemTopHref4" type="text" class="inputStyle" style="width: 80px"/>
                链接5：<input id="itemTopHref5" type="text" class="inputStyle" style="width: 80px"/>
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    栏目链接
            </span><br>
            <div>
                <hr class="line">
                栏目1：<input id="itemMenu1" type="text" class="inputStyle" style="width: 80px"/>
                栏目2：<input id="itemMenu2" type="text" class="inputStyle" style="width: 80px"/>
                栏目3：<input id="itemMenu3" type="text" class="inputStyle" style="width: 80px"/>
                栏目4：<input id="itemMenu4" type="text" class="inputStyle" style="width: 80px"/>
                栏目5：<input id="itemMenu5" type="text" class="inputStyle" style="width: 80px"/>
                栏目6：<input id="itemMenu6" type="text" class="inputStyle" style="width: 80px"/><br>
                链接1：<input id="itemMenuHref1" type="text" class="inputStyle" style="width: 80px"/>
                链接2：<input id="itemMenuHref2" type="text" class="inputStyle" style="width: 80px"/>
                链接3：<input id="itemMenuHref3" type="text" class="inputStyle" style="width: 80px"/>
                链接4：<input id="itemMenuHref4" type="text" class="inputStyle" style="width: 80px"/>
                链接5：<input id="itemMenuHref5" type="text" class="inputStyle" style="width: 80px"/>
                链接6：<input id="itemMenuHref6" type="text" class="inputStyle" style="width: 80px"/>
               <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    滚动图片
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    主编力荐
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    国学图库
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    国学视频
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题1
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题2
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题3
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题4
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题5
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题6
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题7
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    专题8
            </span><br>
            <div>
                <hr class="line">
                
                <hr class="line">
            </div><br><br>
            
            <span style="background-color: #252c24;font-size: 25px;float:left;margin-left: 15%">
                    底部备注
            </span><br>
            <div>
                <hr class="line">
                备注1：<input id="1" name="remark1" type="text" class="inputStyle" style="width: 80px"/>
                备注2：<input id="2" name="remark2" type="text" class="inputStyle" style="width: 80px"/>
                备注3：<input id="3" name="remark3" type="text" class="inputStyle" style="width: 80px"/>
                备注4：<input id="4" name="remark4" type="text" class="inputStyle" style="width: 80px"/>
                <hr class="line">
            </div><br><br>
        </div>
        <div style="text-align: center">
        <form id="form" method="post" action="changeWelcomePage">
            
        </form>
            <button class="buttonStyle" onclick="formSubmit()">提交</button>
            <button class="buttonStyle" style="margin-left: 200px">取 消</button>
            <br><br><br><br>
        </div>
    </body>
    <script language="JavaScript">
        function formSubmit(){
            var form=document.getElementById("form");
            if(getInfo()){
                form.submit();//使用submit()方法可能导致form的onsubmit功能失效!!!
            }else{
                return;
            }
            
        }
        
        function getInfo(){
            var flag=0;
            var form=document.getElementById("form");
            for(var num=1;num<=4;num++){
                var input=document.getElementById(num);
                var name=input.getAttribute("name");
                
                if(input.value!=""){
                    var inputMap=document.createElement("input");
                    inputMap.setAttribute("name", "map['"+name+"']");
                    inputMap.setAttribute("value",input.value);
                    inputMap.style.display="none";
                    form.appendChild(inputMap);
                    flag=1;
                }
            }
            
            if(flag==1)
                return true;
            else
                return false;
        }
    </script>
</html>
