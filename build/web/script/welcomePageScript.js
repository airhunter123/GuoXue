//设置为主页
function addHome() {
document.body.style.behavior='url(#default#homepage)';
document.body.setHomePage('http://localhost:8090/GuoXue/Welcome/welcome.jsp');
}

//检索
function search(){
     alert("ok");
}
   
//获取时间
function showTime(){
 var date=new Date();
 var year,month,day,hour,minute,time;
 year=date.getFullYear();
 month=(date.getMonth()+1).toString();
 if(month.length==1){
   month="0"+month;
 }
 day=date.getDate().toString();
 if(day.length==1){
   day="0"+month;
 }
 hour=date.getHours().toString();
 if(hour.length==1){
   hour="0"+hour;
 }
 minute=date.getMinutes().toString();
 if(minute.length==1){
   minute=0+minute;
 }
 time="现在是"+year+"年"+month+"月"+day+"日"+hour+"时"+minute+"分";
 return time;
}
window.onload = function ()
{
  var oBox = document.getElementById("box");
  var aUl = document.getElementsByTagName("ul");
  var showText=document.getElementById("showText");
  var showIndex=document.getElementById("showIndex");
  var aImg = aUl[0].getElementsByTagName("li"); //图片
  var aNum = aUl[1].getElementsByTagName("li");//数字
  var aText=aUl[2].getElementsByTagName("li");//文本
  showText.innerHTML=aText[0].innerHTML;
  var timer = play = null;
  var i = index = 0;	
  //切换按钮
      for (i = 0; i < aNum.length; i++)
      {
                                      
        aNum[i].index = i;
        aNum[i].onmouseover = function ()
        {
            show(this.index);
                                                          
        }
      }
      //鼠标划过关闭定时器
        oBox.onmouseover = function ()
      {
        clearInterval(play)	
      };
	
      //鼠标离开启动自动播放
        oBox.onmouseout = function ()
        {
            autoPlay()
         };	
	
      //自动播放函数
        function autoPlay ()
        {
            play = setInterval(function () {
            index++;
            index >= aImg.length && (index = 0);
            show(index);
            },2000);	
          }
        autoPlay();//应用
        //图片切换, 淡入淡出效果
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