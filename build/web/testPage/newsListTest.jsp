<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head>  
<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />  
<title>??Tab</title>  
<style type="text/css">  
<!--  

/*???1*/  
#Tab1{  
width:460px;  
margin:0px;  
padding:0px;  
margin:0 auto;}  
/*???2*/  
#Tab2{  
width:576px;  
margin:0px;  
padding:0px;  
margin:0 auto;}  
/*??class*/  
.Menubox {  
width:100%;  
height:28px;  
line-height:28px;  
}  
.Menubox ul{  
margin:0px;  
padding:0px;  
}  
.Menubox li{  
 float:left;  
 display:block;  
 cursor:pointer;  
 color: #fef4e9;  
    border: 3px solid #ffffff;  
    color:#edb02b;
    width: 25%;
    height: 30px;
    font-family: "????";
    font-size: 15px;
    line-height: 242%;
 }  
.Menubox li.hover{  
 padding:0px; 
 border:3px solid #f47a20;  
 border-radius: 10px 10px 0px 0px;
 background-color:#f47a20; 
 color: #ffffff;
 font-family: "????";
 font-size: 18px;
 line-height: 242%;
}  
.Contentbox{  
 clear:both;  
 margin-top:0px;  
 border:3px solid #f47a20;  
 border-radius: 0px 0px 5px 5px;
 height:181px;  
 text-align:center;  
 padding-top:8px;  
}  
-->  
</style>  
<script>  
<!--  
/*????? ????? ??????*/  
function setTab(name,cursel,n){  
 for(i=1;i<=n;i++){  
  var menu=document.getElementById(name+i);  
  var con=document.getElementById("con_"+name+"_"+i);  
  menu.className=i==cursel?"hover":"";  
  con.style.display=i==cursel?"block":"none";  
 }  
}  
//-->  
</script>  
</head>  
<body>  
<br><br>  
  
<br>  
<div id="Tab2">  
<div class="Menubox">  
<ul>  
   <li id="two1" onmouseover="setTab('two',1,4)"  class="hover">1111</li>  
   <li id="two2" onmouseover="setTab('two',2,4)" >2222</li>  
   <li id="two3" onmouseover="setTab('two',3,4)">3333</li>  
   <li id="two4" onmouseover="setTab('two',4,4)">4444</li>  
</ul>  
</div>  
 <div class="Contentbox">  
   <div id="con_two_1" >5555</div>  
   <div id="con_two_2" style="display:none">6666</div>  
   <div id="con_two_3" style="display:none">7777</div>  
   <div id="con_two_4" style="display:none">8888</div>  
 </div>  
</div>  
</body>  
</html>  
