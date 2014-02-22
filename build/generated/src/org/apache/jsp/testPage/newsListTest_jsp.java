package org.apache.jsp.testPage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newsListTest_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" >  \r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">  \r\n");
      out.write("<head>  \r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html;charset=gb2312\" />  \r\n");
      out.write("<title>??Tab</title>  \r\n");
      out.write("<style type=\"text/css\">  \r\n");
      out.write("<!--  \r\n");
      out.write("body,div,ul,li{  \r\n");
      out.write(" padding:0;  \r\n");
      out.write(" text-align:center;  \r\n");
      out.write("}  \r\n");
      out.write("body{  \r\n");
      out.write(" font:12px \"??\";  \r\n");
      out.write(" text-align:center;  \r\n");
      out.write("}  \r\n");
      out.write("a:link{  \r\n");
      out.write(" color:#00F;  \r\n");
      out.write(" text-decoration:none;  \r\n");
      out.write("}  \r\n");
      out.write("a:visited {  \r\n");
      out.write(" color: #00F;  \r\n");
      out.write(" text-decoration:none;  \r\n");
      out.write("}  \r\n");
      out.write("a:hover {  \r\n");
      out.write(" color: #c00;  \r\n");
      out.write(" text-decoration:underline;  \r\n");
      out.write("}  \r\n");
      out.write("ul{ list-style:none;}  \r\n");
      out.write("/*???1*/  \r\n");
      out.write("#Tab1{  \r\n");
      out.write("width:460px;  \r\n");
      out.write("margin:0px;  \r\n");
      out.write("padding:0px;  \r\n");
      out.write("margin:0 auto;}  \r\n");
      out.write("/*???2*/  \r\n");
      out.write("#Tab2{  \r\n");
      out.write("width:576px;  \r\n");
      out.write("margin:0px;  \r\n");
      out.write("padding:0px;  \r\n");
      out.write("margin:0 auto;}  \r\n");
      out.write("/*??class*/  \r\n");
      out.write(".Menubox {  \r\n");
      out.write("width:100%;  \r\n");
      out.write("background:url(http://www.hxcgw.com/bbs/upfile/20079299441652.gif);  \r\n");
      out.write("height:28px;  \r\n");
      out.write("line-height:28px;  \r\n");
      out.write("}  \r\n");
      out.write(".Menubox ul{  \r\n");
      out.write("margin:0px;  \r\n");
      out.write("padding:0px;  \r\n");
      out.write("}  \r\n");
      out.write(".Menubox li{  \r\n");
      out.write(" float:left;  \r\n");
      out.write(" display:block;  \r\n");
      out.write(" cursor:pointer;  \r\n");
      out.write(" width:114px;  \r\n");
      out.write(" text-align:center;  \r\n");
      out.write(" color:#949694;  \r\n");
      out.write(" font-weight:bold;  \r\n");
      out.write(" }  \r\n");
      out.write(".Menubox li.hover{  \r\n");
      out.write(" padding:0px;  \r\n");
      out.write(" background:#fff;  \r\n");
      out.write(" width:116px;  \r\n");
      out.write(" border-left:1px solid #A8C29F;  \r\n");
      out.write(" border-top:1px solid #A8C29F;  \r\n");
      out.write(" border-right:1px solid #A8C29F;  \r\n");
      out.write("background:url(http://www.hxcgw.com/bbs/upfile/200792994426548.gif);  \r\n");
      out.write(" color:#739242;  \r\n");
      out.write(" font-weight:bold;  \r\n");
      out.write(" height:27px;  \r\n");
      out.write("line-height:27px;  \r\n");
      out.write("}  \r\n");
      out.write(".Contentbox{  \r\n");
      out.write(" clear:both;  \r\n");
      out.write(" margin-top:0px;  \r\n");
      out.write(" border:1px solid #A8C29F;  \r\n");
      out.write(" border-top:none;  \r\n");
      out.write(" height:181px;  \r\n");
      out.write(" text-align:center;  \r\n");
      out.write(" padding-top:8px;  \r\n");
      out.write("}  \r\n");
      out.write("-->  \r\n");
      out.write("</style>  \r\n");
      out.write("<script>  \r\n");
      out.write("<!--  \r\n");
      out.write("/*????? ????? ??????*/  \r\n");
      out.write("function setTab(name,cursel,n){  \r\n");
      out.write(" for(i=1;i<=n;i++){  \r\n");
      out.write("  var menu=document.getElementById(name+i);  \r\n");
      out.write("  var con=document.getElementById(\"con_\"+name+\"_\"+i);  \r\n");
      out.write("  menu.className=i==cursel?\"hover\":\"\";  \r\n");
      out.write("  con.style.display=i==cursel?\"block\":\"none\";  \r\n");
      out.write(" }  \r\n");
      out.write("}  \r\n");
      out.write("//-->  \r\n");
      out.write("</script>  \r\n");
      out.write("</head>  \r\n");
      out.write("<body>  \r\n");
      out.write("<br><br>  \r\n");
      out.write("<div id=\"Tab1\">  \r\n");
      out.write("<div class=\"Menubox\">  \r\n");
      out.write("<ul>  \r\n");
      out.write("   <li id=\"one1\" onclick=\"setTab('one',1,4)\"  class=\"hover\">??1</li>  \r\n");
      out.write("   <li id=\"one2\" onclick=\"setTab('one',2,4)\" >??2</li>  \r\n");
      out.write("   <li id=\"one3\" onclick=\"setTab('one',3,4)\">??3</li>  \r\n");
      out.write("   <li id=\"one4\" onclick=\"setTab('one',4,4)\">??4</li>  \r\n");
      out.write("</ul>  \r\n");
      out.write("</div>  \r\n");
      out.write(" <div class=\"Contentbox\">  \r\n");
      out.write("   <div id=\"con_one_1\" class=\"hover\">????1</div>  \r\n");
      out.write("   <div id=\"con_one_2\" style=\"display:none\">????2</div>  \r\n");
      out.write("   <div id=\"con_one_3\" style=\"display:none\">????3</div>  \r\n");
      out.write("   <div id=\"con_one_4\" style=\"display:none\">????4</div>  \r\n");
      out.write(" </div>  \r\n");
      out.write("</div>  \r\n");
      out.write("<br>  \r\n");
      out.write("<div id=\"Tab2\">  \r\n");
      out.write("<div class=\"Menubox\">  \r\n");
      out.write("<ul>  \r\n");
      out.write("   <li id=\"two1\" onclick=\"setTab('two',1,4)\"  class=\"hover\">??1</li>  \r\n");
      out.write("   <li id=\"two2\" onclick=\"setTab('two',2,4)\" >??2</li>  \r\n");
      out.write("   <li id=\"two3\" onclick=\"setTab('two',3,4)\">??3</li>  \r\n");
      out.write("   <li id=\"two4\" onclick=\"setTab('two',4,4)\">??4</li>  \r\n");
      out.write("</ul>  \r\n");
      out.write("</div>  \r\n");
      out.write(" <div class=\"Contentbox\">  \r\n");
      out.write("   <div id=\"con_two_1\" >????1</div>  \r\n");
      out.write("   <div id=\"con_two_2\" style=\"display:none\">????2</div>  \r\n");
      out.write("   <div id=\"con_two_3\" style=\"display:none\">????3</div>  \r\n");
      out.write("   <div id=\"con_two_4\" style=\"display:none\">????4</div>  \r\n");
      out.write(" </div>  \r\n");
      out.write("</div>  \r\n");
      out.write("</body>  \r\n");
      out.write("</html>  ");
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
