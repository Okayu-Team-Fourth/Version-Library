package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t\t.container {\n");
      out.write("\t\t\tborder:2px solid #FFFFF;\n");
      out.write("\t\t\tbackground: rgba(0,0,0,0.2);\n");
      out.write("\t\t\tborder-radius:25px;\n");
      out.write("            width: 40%;\n");
      out.write("            margin: 0 auto;\n");
      out.write("\t\t\tpadding: 100px;\n");
      out.write("        }\n");
      out.write("        .container input {\n");
      out.write("            width: 320px;\n");
      out.write("            display: block;\n");
      out.write("            height: 36px;\n");
      out.write("            border: 0;\n");
      out.write("            outline: 0;\n");
      out.write("            padding: 6px 10px;\n");
      out.write("            line-height: 24px;\n");
      out.write("            margin: 20px auto;\n");
      out.write("            -webkit-transition: all 0s ease-in 0.1ms;\n");
      out.write("            -moz-transition: all 0s ease-in 0.1ms;\n");
      out.write("            transition: all 0s ease-in 0.1ms;\n");
      out.write("        }\n");
      out.write("        .container input[type=\"text\"] , .container input[type=\"password\"]  {\n");
      out.write("            background-color:#D8F6F9;\n");
      out.write("\n");
      out.write("            font-size: 16px;\n");
      out.write("            color: #50a3a2;\n");
      out.write("        }\n");
      out.write("        .container input[type='submit'] {\n");
      out.write("            font-size: 16px;\n");
      out.write("            letter-spacing: 2px;\n");
      out.write("            color: #666666;\n");
      out.write("            background-color: #FFFFFF;\n");
      out.write("        }\n");
      out.write("        .container input:focus {\n");
      out.write("\t\t\tbackground: #ABC8FF;\n");
      out.write("            width: 400px;\n");
      out.write("        }\n");
      out.write("        .container input[type='submit']:hover {\n");
      out.write("            cursor: pointer;\n");
      out.write("            width: 400px;\n");
      out.write("        }\n");
      out.write("        .to_login{\n");
      out.write("            color: #a7c4c9;\n");
      out.write("        }\n");
      out.write("        .text{\n");
      out.write("            color: blcak;\n");
      out.write("\t\t\t\n");
      out.write("        }\n");
      out.write("\t\t.a_1{\n");
      out.write("\t\t\tcursor: pointer;\n");
      out.write("\t\t\tcolor: black;/*鼠标碰触颜色*/\n");
      out.write("\t\t\tbackground-color: #959090;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\ta:active{\n");
      out.write("\t\t\t\tcolor:rgba(0,28,147,1.00);/*点击时的颜色*/\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\ta{\n");
      out.write("\t\t\ttext-decoration: none;\n");
      out.write("\t\t\tcolor: #040404;\t\n");
      out.write("\t\t}\n");
      out.write("\t\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body background=\"images/bg.png\">\n");
      out.write("<script language=\"javascript\">     \n");
      out.write("         //防止页面后退\n");
      out.write("        history.pushState(null, null, document.URL);\n");
      out.write("        window.addEventListener('popstate', function () {\n");
      out.write("            history.pushState(null, null, document.URL);\n");
      out.write("        });    \n");
      out.write("</script>\n");
      out.write("\t<div>\n");
      out.write("\t\t<img src=\"images/logo1.0.png\" style=\"width: 500px;height: 150px;margin-top: 0px\">\n");
      out.write("\t</div>\n");
      out.write("    <div  class=\"container\">\n");
      out.write("        <form class=\"form_1\" action=\"login.action\">\n");
      out.write("            <input type=\"text\" name=\"userName\" placeholder=\"银行卡号\"/><br>\n");
      out.write("            <input type=\"password\" name=\"password\" placeholder=\"密码\" /><br>\n");
      out.write("            <input type=\"submit\" value=\"登陆\"/>\n");
      out.write("            <p class=\"change_link\" style=\"text-align: center\"> <span class=\"text\">管理员?</span> \n");
      out.write("                <a class=\"a_1\" href=\"adminlogin.jsp\"><strong> 点击登录</strong></a> </p>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
