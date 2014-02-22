<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>?????JavaScript?????</title>
<style> 
body,div,ul,li{margin:0;padding:0;}
ul{list-style-type:none;}
body{text-align:center;font:12px/20px Arial;}
#box{position:relative;width:492px;height:172px;background:#af5921;border-radius:5px;border:8px solid #af5921;margin:10px auto;}
#box .list{position:relative;width:490px;height:170px;overflow:hidden;border:1px solid #af5921;}
#box .list li{position:absolute;top:0;left:0;width:490px;height:170px;opacity:0;filter:alpha(opacity=0);}
#box .list li.current{opacity:1;filter:alpha(opacity=100);}


#box .count{position:absolute;right:0;bottom:5px;}
#box .count li{color:#fff;float:left;width:20px;height:20px;cursor:pointer;margin-right:5px;overflow:hidden;background:#F90;opacity:0.7;filter:alpha(opacity=70);border-radius:20px;}
#box .count li.current{color:#fff;opacity:1;filter:alpha(opacity=100);font-weight:700;background:#f60;}
#tmp{width:100px;height:100px;background:red;position:absolute;}

.showText{
position: absolute;
z-index: 1;
left: 0;
bottom:0;
width: 74%;
color: #fff;
background: rgba(0,0,0,.7);
height: 30px;
line-height: 30px; 
overflow: hidden;
color: #edb02b;
}
</style>
<script type="text/javascript"> 
window.onload = function ()
{
	var oBox = document.getElementById("box");
	var aUl = document.getElementsByTagName("ul");
                   var showText=document.getElementById("showText");
                    var showIndex=document.getElementById("showIndex");
	var aImg = aUl[0].getElementsByTagName("li"); //??
	var aNum = aUl[1].getElementsByTagName("li");//??
                   var aText=aUl[2].getElementsByTagName("li");//??
                   showText.innerHTML=aText[0].innerHTML;
	var timer = play = null;
	var i = index = 0;	
	//????
	for (i = 0; i < aNum.length; i++)
	{
                                      
		aNum[i].index = i;
		aNum[i].onmouseover = function ()
		{
			show(this.index);
                                                          
		}
	}
	//?????????
	oBox.onmouseover = function ()
	{
		clearInterval(play)	
	};
	
	//??????????
	oBox.onmouseout = function ()
	{
		autoPlay()
	};	
	
	//??????
	function autoPlay ()
	{
		play = setInterval(function () {
			index++;
			index >= aImg.length && (index = 0);
			show(index);
                                                          
		},2000);	
	}
	autoPlay();//??
	//????, ??????
	function show (a)
	{
		index = a;
		var alpha = 0;
		for (i = 0; i < aNum.length; i++)aNum[i].className = "";
		aNum[index].className = "current";
		clearInterval(timer);	
                                       
                                      
		
		for (i = 0; i < aImg.length; i++)
		{
			aImg[i].style.opacity = 0;
			aImg[i].style.filter = "alpha(opacity=0)";
                                                          //aText[i]
                                                          
		}
		
		timer = setInterval(function () {
			alpha += 2;
			alpha > 100 && (alpha =100);
			aImg[index].style.opacity = alpha / 100;
			aImg[index].style.filter = "alpha(opacity = " + alpha + ")";
                                                          showText.innerHTML=aText[index].innerHTML;
                                                          showIndex.innerHTML=index;
			alpha == 100 && clearInterval(timer)
		},20);
	}
};
</script>
</head>
<body>
<div id="box">
    <ul class="list">
        <li class="current">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
        <li>5</li>
    </ul>
    <ul class="count">
        <li class="current">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
        <li>5</li>
    </ul>
  
  <ul id="text" style="display:none">
    <li><a href="www.hao123.com">a</a></li>
        <li>b</li>
        <li>c</li>
        <li>d</li>
        <li>e</li>
    </ul>
  <span id="showText" class="showText"></span>
  <span id="showIndex"></span>
</div>
</body>
</html>