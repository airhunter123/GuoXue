package org.apache.jsp.testPage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import PageControl.WelcomePage.WelcomeTopNews;
import PageControl.WelcomePage.WelcomePointPic;
import PageControl.WelcomePage.WelcomeHead;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.context.ApplicationContext;

public final class springWelcomePageTest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <link href=\"../css/myStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <link href=\"../css/button.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <link href=\"../css/pointPic.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <link href=\"../css/topNews.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <script language=\"JavaScript\" src=\"../script/welcomePageScript.js\">\r\n");
      out.write("    </script>\r\n");
      out.write("    <title>中国少年国学网</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  ");

   String path=application.getRealPath("//");//获取当前项目的物理路径
    ApplicationContext context=new FileSystemXmlApplicationContext(path+"\\WEB-INF\\applicationContext.xml");
    
   WelcomeHead welcomeHead=(WelcomeHead)context.getBean("WelcomeHead");
   request.setAttribute("welcomeHead", welcomeHead);
   
   WelcomePointPic welcomePointPic=(WelcomePointPic)context.getBean("WelcomePointPic");
   request.setAttribute("welcomePointPic", welcomePointPic);
   
  WelcomeTopNews welcomeTopNews=(WelcomeTopNews)context.getBean("WelcomeTopNews");
  request.setAttribute("welcomeTopNews", welcomeTopNews);
   
      out.write("\r\n");
      out.write("  <body class=\"style1\">\r\n");
      out.write("    <div id=\"all\"class=\"style2\">\r\n");
      out.write("      \r\n");
      out.write("      <!--网页头部开始-->\r\n");
      out.write("    <div id=\"top\" class=\"style3\">\r\n");
      out.write("      <span>\r\n");
      out.write("        <a href=\"welcome.jsp\" onclick=\"addHome()\" class=\"textStyle\">设为首页</a>\r\n");
      out.write("        <a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTopHref[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("        <a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTopHref[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("        <a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTopHref[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("        <a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTopHref[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("        <a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTopHref[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("        &nbsp; &nbsp; &nbsp;\r\n");
      out.write("      </span><br>\r\n");
      out.write("      <table id=\"title\" class=\"style4\"><!--标题-->\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      \r\n");
      out.write("      <!--站内搜索与时间-->\r\n");
      out.write("      <div bgcolor=\"#1e2621\" width=\"962px\" height=\"30px\" style=\"margin-bottom: 4px;margin-top: 4px;text-align: left\">\r\n");
      out.write("              <span id=\"time\" class=\"textStyle\" style=\"margin-right: 380px;margin-left:80px;font-size: 16px\"></span>\r\n");
      out.write("              <input id=\"search\" type=\"text\" class=\"inputStyle\">\r\n");
      out.write("              <button id=\"searchButton\"onclick=\"search()\" class=\"buttonStyle\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemTop[5]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>\r\n");
      out.write("      </div>   \r\n");
      out.write("          \r\n");
      out.write("      <table id=\"bar\"  bgcolor=\"#af5921\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          <td>\r\n");
      out.write("            <button class=\"orange\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeHead.itemMenu[5]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</button>  \r\n");
      out.write("          </td> \r\n");
      out.write("          \r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("    </div><br>\r\n");
      out.write("      <!--网页头部结束-->\r\n");
      out.write("      \r\n");
      out.write("      <!--首页主内容区开始-->\r\n");
      out.write("      <div>\r\n");
      out.write("        \r\n");
      out.write("        <table bgcolor=\"#1e2621\" width=\"962px\"><!--焦点图与推荐信息-->\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("             <div id=\"box\"><!--焦点图-->\r\n");
      out.write("                <ul class=\"list\">\r\n");
      out.write("                  <li class=\"current\"><img src=\"../pic/pointPic/1.jpg\"/></li>\r\n");
      out.write("                  <li><img src=\"../pic/pointPic/2.jpg\"/></li>\r\n");
      out.write("                  <li><img src=\"../pic/pointPic/3.jpg\"/></li>\r\n");
      out.write("                  <li><img src=\"../pic/pointPic/4.jpg\"/></li>\r\n");
      out.write("                  <li><img src=\"../pic/pointPic/5.jpg\"/></li>\r\n");
      out.write("               </ul>\r\n");
      out.write("              <ul class=\"count\">\r\n");
      out.write("                  <li class=\"current\">1</li>\r\n");
      out.write("                  <li>2</li>\r\n");
      out.write("                  <li>3</li>\r\n");
      out.write("                  <li>4</li>\r\n");
      out.write("                  <li>5</li>\r\n");
      out.write("              </ul>\r\n");
      out.write("              <ul id=\"text\" style=\"display:none\">\r\n");
      out.write("                <li><a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointTextHref[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointText[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    <li><a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointTextHref[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointText[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    <li><a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointTextHref[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointText[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    <li><a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointTextHref[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointText[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    <li><a class=\"textStyle\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointTextHref[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomePointPic.pointText[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("                <span id=\"showText\" class=\"showText\"></span>\r\n");
      out.write("                 <span id=\"showIndex\"></span>\r\n");
      out.write("              </div>\r\n");
      out.write("            </td>\r\n");
      out.write("            \r\n");
      out.write("            <td><!--推荐新闻-->\r\n");
      out.write("                <div class=\"box2\" id=\"movie_rank\">\r\n");
      out.write("                  <h2>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsTitle[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("<span><a href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsTitle[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsTitle[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></span></h2>\r\n");
      out.write("                    <div class=\"inner\">\r\n");
      out.write("                    <ul class=\"rank_list\">\r\n");
      out.write("                      <li class=\"top3\"><em>1</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li class=\"top3\"><em>2</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[1]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li class=\"top3\"><em>3</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\"href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("  >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[2]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>4</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[3]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>5</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[4]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>6</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[5]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[5]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>7</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[6]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[6]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>8</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[7]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[7]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                      <li><em>9</em>&nbsp;&nbsp;&nbsp;<a style=\"color: #edb02b\" href=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.newsHref[8]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${welcomeTopNews.news[8]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </td>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        \r\n");
      out.write("      </div>\r\n");
      out.write("     <!--首页主内容区结束--> \r\n");
      out.write("    </div>\r\n");
      out.write("  </body>\r\n");
      out.write("  <script language=\"JavaScript\"> \r\n");
      out.write("    var myTime=showTime();\r\n");
      out.write("    //显示时间\r\n");
      out.write("   document.getElementById( \"time\" ).innerHTML=myTime; \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("  </script>\r\n");
      out.write("</html>\r\n");
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
