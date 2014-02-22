<%-- 
    Document   : video nad pic
    Created on : 2014-2-20, 17:02:22
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <style>
.ViedoMenubox {  
width:101.5%;  
height:28px;  
line-height:28px;  
}  
.VideoMenubox ul{  
margin:0px;  
padding:0px;  
}  
.VideoMenubox li{  
 float:left;  
 display:block;  
 cursor:pointer;  
 color: #fef4e9;  
 border: 3px solid #252c24;  
 background-color: #252c24;
 border-radius: 0px 10px 10px 0px;
 writing-mode: lr-tb;
 letter-spacing: 100px;
 color:#edb02b;
 width: 30px;
 height: 110px;
 font-family: "微软雅黑";
 font-size: 18px;
 line-height: 1;
 
 }  
.VideoMenubox li.hover{  
 padding:0px; 
 border:3px solid #f47a20;  
 border-radius: 0px 10px 10px 0px;
 background-color:#f47a20; 
 color: #ffffff;
 font-family: "微软雅黑";
}  
.VideoContentbox{  
 margin-top:0px;  
 border:3px solid #f47a20;  
 border-radius: 5px 0px 0px 5px;
 height:218px;
 width: 218px;
 text-align:center;  
 padding-top:8px;
}  
        </style>
        <table cellspacing="0" cellpadding="0"><!--这两个属性用于控制列间距-->
          <tr>
            <td >
                <div class="VideoContentbox">
                  <div id="con_video_1" >
                    <table style="width: 100%;margin-top: 1%;">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                              <li style="list-style-type: none">abc</li>
                              <li style="list-style-type: none">def</li>
                              <li style="list-style-type: none">ghi</li>
                          </ul><br>
                        </td>
                      </tr>
                    </table>
                  </div>  
                  <div id="con_video_2" style="display:none">
                    <table style="width: 100%;margin-top: 1%">
                      <tr>
                        <td style="width: 50%;text-align: center">
                          <ul>
                              <li style="list-style-type: none">123</li>
                              <li style="list-style-type: none">456</li>
                              <li style="list-style-type: none">789</li>
                          </ul><br>
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
    </body>
    <script language="JavaScript"> 
    
   //变化新闻栏选项卡
   function setTab(name,cursel,n){  
      for(i=1;i<=n;i++){  
      var menu=document.getElementById(name+i);  
      var con=document.getElementById("con_"+name+"_"+i);  
      menu.className=i==cursel?"hover":"";  
      con.style.display=i==cursel?"block":"none";  
    } } 
   
  </script>
</html>
