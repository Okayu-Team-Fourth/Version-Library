package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title><s:text name=\"基于SH的应用\"></s:text></title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#CCCCFF\">\n");
      out.write("        <s:form action=\"adminlogin\" method=\"post\">\n");
      out.write("            <br><br><br><br><br><br>\n");
      out.write("            <table border=\"1\" align=\"center\" bgcolor=\"#AABBCCDD\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <s:textfield name=\"adminname\" label=\"用户名字\" size=\"16\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <s:password name=\"adminpwd\" label=\"用户密码\" size=\"16\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <s:password name=\"adminkey\" label=\"密钥\" size=\"16\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <s:submit value=\"登录\"/>\n");
      out.write("                </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </s:form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<html>-->\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>村镇银行储蓄登录系统</title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        * {\n");
      out.write("            box-sizing: border-box;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            font: 16px/20px microsft yahei;\n");
      out.write("        }\n");
      out.write("        .wrap {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 100%;\n");
      out.write("            padding: 10% 0;\n");
      out.write("            position: fixed;\n");
      out.write("            opacity: 0.8;\n");
      out.write("            background: linear-gradient(to bottom right,#000000, #656565);\n");
      out.write("            background: -webkit-linear-gradient(to bottom right,#50a3a2,#53e3a6);\n");
      out.write("        }\n");
      out.write("        .container {\n");
      out.write("            width: 60%;\n");
      out.write("            margin: 0 auto;\n");
      out.write("        }\n");
      out.write("        .container h1 {\n");
      out.write("            text-align: center;\n");
      out.write("            color: #FFFFFF;\n");
      out.write("            font-weight: 500;\n");
      out.write("        }\n");
      out.write("        .container input {\n");
      out.write("            width: 320px;\n");
      out.write("            display: block;\n");
      out.write("            height: 36px;\n");
      out.write("            border: 0;\n");
      out.write("            outline: 0;\n");
      out.write("            padding: 6px 10px;\n");
      out.write("            line-height: 24px;\n");
      out.write("            margin: 32px auto;\n");
      out.write("            -webkit-transition: all 0s ease-in 0.1ms;\n");
      out.write("            -moz-transition: all 0s ease-in 0.1ms;\n");
      out.write("            transition: all 0s ease-in 0.1ms;\n");
      out.write("        }\n");
      out.write("        .container input[type=\"text\"] , .container input[type=\"password\"]  {\n");
      out.write("            background-color: #FFFFFF;\n");
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
      out.write("            color: #e2dfe4;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"wrap\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <h1 style=\"color: white; margin: 0; text-align: center\">管理员</h1>\n");
      out.write("        <form action=\"adminlogin.action\" method=\"post\">\n");
      out.write("            <label><input type=\"text\" name=\"adminname\" placeholder=\"账户名\"/></label>\n");
      out.write("            <label><input type=\"password\" name=\"adminpwd\" placeholder=\"密码\" /></label>\n");
      out.write("            <label><input type=\"password\" name=\"adminkey\" placeholder=\"密钥\"/></label>\n");
      out.write("            <input type=\"submit\" value=\"登录\"/>\n");
      out.write("             <p class=\"change_link\" style=\"text-align: center\">\n");
      out.write("                <span class=\"text\">不是管理员？</span>\n");
      out.write("                <a href=\"login.jsp\" class=\"to_login\">请返回</a>\n");
      out.write("            </p>\n");
      out.write("            ");

//            session.setAttribute("flag",  "username"); 
            
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
