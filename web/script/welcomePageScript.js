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

//日历相关 开始
 var months = new Array("一","二","三","四","五","六","七","八","九","十","十一","十二");
 var daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31,30, 31, 30, 31);
 var days = new Array("日","一","二","三","四","五","六");
 var classTemp;
 var today=new getToday();
 var year=today.year;
 var month=today.month;
 var newCal; 
 function getDays(month, year) {
  if (1 == month) return ((0 == year % 4)  &&  (0 != (year % 100))) ||(0 == year % 400) ? 29 : 28;
  else return daysInMonth[month];
 }
 function getToday() {
  this.now = new Date();
  this.year = this.now.getFullYear();
  this.month = this.now.getMonth();
  this.day = this.now.getDate();
 }
 function Calendar() {
  newCal = new Date(year,month,1);
  today = new getToday();   
  var day = -1;
  var startDay = newCal.getDay();
  var endDay=getDays(newCal.getMonth(), newCal.getFullYear());
  var daily = 0;
  if ((today.year == newCal.getFullYear())  && (today.month == newCal.getMonth()))
  {
   day = today.day;
  }
  var caltable = document.all.caltable.tBodies.calendar;
  var intDaysInMonth =getDays(newCal.getMonth(), newCal.getFullYear());
  for (var intWeek = 0; intWeek < caltable.rows.length;intWeek++)
   for (var intDay = 0;intDay < caltable.rows[intWeek].cells.length;intDay++)
   {
    var cell = caltable.rows[intWeek].cells[intDay];
    var montemp=(newCal.getMonth()+1)<10?("0"+(newCal.getMonth()+1)):(newCal.getMonth()+1);         
    if ((intDay == startDay)  &&  (0 == daily)){ daily = 1;}
    var daytemp=daily<10?("0"+daily):(daily);
    var d="<"+newCal.getFullYear()+"-"+montemp+"-"+daytemp+">";
    if(day==daily) cell.className="DayNow";
    else if(intDay==6) cell.className = "DaySat";
    else if (intDay==0) cell.className ="DaySun";
    else cell.className="Day";
    if ((daily > 0)  &&  (daily <= intDaysInMonth))
    {
     cell.innerText = daily;
     daily++;
    } else
    {
     cell.className="CalendarTD";
     cell.innerText = "";
    }
  }
  document.all.year.value=year;
  document.all.month.value=month+1;
 }
 function subMonth()
 {
  if ((month-1)<0)
  {
   month=11;
   year=year-1;
  } else
  {
   month=month-1;
  }
  Calendar();
 }
 function addMonth()
 {
  if((month+1)>11)
  {
   month=0;
   year=year+1;
  } else
  {
   month=month+1;
  }
  Calendar();
 }
 function setDate() 
 {
  if (document.all.month.value<1||document.all.month.value>12)
  {
   alert("月的有效数字是1-12！");
   return;
  }
  year=Math.ceil(document.all.year.value);
  month=Math.ceil(document.all.month.value-1);
  Calendar();
 }
//日历相关 结束