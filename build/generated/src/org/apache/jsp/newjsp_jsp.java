package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>?????JavaScript?????</title>\r\n");
      out.write("<style> \r\n");
      out.write("body,div,ul,li{margin:0;padding:0;}\r\n");
      out.write("ul{list-style-type:none;}\r\n");
      out.write("body{text-align:center;font:12px/20px Arial;}\r\n");
      out.write("#box{position:relative;width:492px;height:172px;background:#af5921;border-radius:5px;border:8px solid #af5921;margin:10px auto;}\r\n");
      out.write("#box .list{position:relative;width:490px;height:170px;overflow:hidden;border:1px solid #af5921;}\r\n");
      out.write("#box .list li{position:absolute;top:0;left:0;width:490px;height:170px;opacity:0;filter:alpha(opacity=0);}\r\n");
      out.write("#box .list li.current{opacity:1;filter:alpha(opacity=100);}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("#box .count{position:absolute;right:0;bottom:5px;}\r\n");
      out.write("#box .count li{color:#fff;float:left;width:20px;height:20px;cursor:pointer;margin-right:5px;overflow:hidden;background:#F90;opacity:0.7;filter:alpha(opacity=70);border-radius:20px;}\r\n");
      out.write("#box .count li.current{color:#fff;opacity:1;filter:alpha(opacity=100);font-weight:700;background:#f60;}\r\n");
      out.write("#tmp{width:100px;height:100px;background:red;position:absolute;}\r\n");
      out.write("\r\n");
      out.write(".showText{\r\n");
      out.write("position: absolute;\r\n");
      out.write("z-index: 1;\r\n");
      out.write("left: 0;\r\n");
      out.write("bottom:0;\r\n");
      out.write("width: 74%;\r\n");
      out.write("color: #fff;\r\n");
      out.write("background: rgba(0,0,0,.7);\r\n");
      out.write("height: 30px;\r\n");
      out.write("line-height: 30px; \r\n");
      out.write("overflow: hidden;\r\n");
      out.write("color: #edb02b;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\"> \r\n");
      out.write("window.onload = function ()\r\n");
      out.write("{\r\n");
      out.write("\tvar oBox = document.getElementById(\"box\");\r\n");
      out.write("\tvar aUl = document.getElementsByTagName(\"ul\");\r\n");
      out.write("                   var showText=document.getElementById(\"showText\");\r\n");
      out.write("                    var showIndex=document.getElementById(\"showIndex\");\r\n");
      out.write("\tvar aImg = aUl[0].getElementsByTagName(\"li\"); //??\r\n");
      out.write("\tvar aNum = aUl[1].getElementsByTagName(\"li\");//??\r\n");
      out.write("                   var aText=aUl[2].getElementsByTagName(\"li\");//??\r\n");
      out.write("                   showText.innerHTML=aText[0].innerHTML;\r\n");
      out.write("\tvar timer = play = null;\r\n");
      out.write("\tvar i = index = 0;\t\r\n");
      out.write("\t//????\r\n");
      out.write("\tfor (i = 0; i < aNum.length; i++)\r\n");
      out.write("\t{\r\n");
      out.write("                                      \r\n");
      out.write("\t\taNum[i].index = i;\r\n");
      out.write("\t\taNum[i].onmouseover = function ()\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tshow(this.index);\r\n");
      out.write("                                                          \r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\t//?????????\r\n");
      out.write("\toBox.onmouseover = function ()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tclearInterval(play)\t\r\n");
      out.write("\t};\r\n");
      out.write("\t\r\n");
      out.write("\t//??????????\r\n");
      out.write("\toBox.onmouseout = function ()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tautoPlay()\r\n");
      out.write("\t};\t\r\n");
      out.write("\t\r\n");
      out.write("\t//??????\r\n");
      out.write("\tfunction autoPlay ()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tplay = setInterval(function () {\r\n");
      out.write("\t\t\tindex++;\r\n");
      out.write("\t\t\tindex >= aImg.length && (index = 0);\r\n");
      out.write("\t\t\tshow(index);\r\n");
      out.write("                                                          \r\n");
      out.write("\t\t},2000);\t\r\n");
      out.write("\t}\r\n");
      out.write("\tautoPlay();//??\r\n");
      out.write("\t//????, ??????\r\n");
      out.write("\tfunction show (a)\r\n");
      out.write("\t{\r\n");
      out.write("\t\tindex = a;\r\n");
      out.write("\t\tvar alpha = 0;\r\n");
      out.write("\t\tfor (i = 0; i < aNum.length; i++)aNum[i].className = \"\";\r\n");
      out.write("\t\taNum[index].className = \"current\";\r\n");
      out.write("\t\tclearInterval(timer);\t\r\n");
      out.write("                                       \r\n");
      out.write("                                      \r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfor (i = 0; i < aImg.length; i++)\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\taImg[i].style.opacity = 0;\r\n");
      out.write("\t\t\taImg[i].style.filter = \"alpha(opacity=0)\";\r\n");
      out.write("                                                          //aText[i]\r\n");
      out.write("                                                          \r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\ttimer = setInterval(function () {\r\n");
      out.write("\t\t\talpha += 2;\r\n");
      out.write("\t\t\talpha > 100 && (alpha =100);\r\n");
      out.write("\t\t\taImg[index].style.opacity = alpha / 100;\r\n");
      out.write("\t\t\taImg[index].style.filter = \"alpha(opacity = \" + alpha + \")\";\r\n");
      out.write("                                                          showText.innerHTML=aText[index].innerHTML;\r\n");
      out.write("                                                          showIndex.innerHTML=index;\r\n");
      out.write("\t\t\talpha == 100 && clearInterval(timer)\r\n");
      out.write("\t\t},20);\r\n");
      out.write("\t}\r\n");
      out.write("};\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"box\">\r\n");
      out.write("    <ul class=\"list\">\r\n");
      out.write("        <li class=\"current\">1</li>\r\n");
      out.write("        <li>2</li>\r\n");
      out.write("        <li>3</li>\r\n");
      out.write("        <li>4</li>\r\n");
      out.write("        <li>5</li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <ul class=\"count\">\r\n");
      out.write("        <li class=\"current\">1</li>\r\n");
      out.write("        <li>2</li>\r\n");
      out.write("        <li>3</li>\r\n");
      out.write("        <li>4</li>\r\n");
      out.write("        <li>5</li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  \r\n");
      out.write("  <ul id=\"text\" style=\"display:none\">\r\n");
      out.write("    <li><a href=\"www.hao123.com\">a</a></li>\r\n");
      out.write("        <li>b</li>\r\n");
      out.write("        <li>c</li>\r\n");
      out.write("        <li>d</li>\r\n");
      out.write("        <li>e</li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  <span id=\"showText\" class=\"showText\"></span>\r\n");
      out.write("  <span id=\"showIndex\"></span>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
