package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.AccountDAO;

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/login.css\">\n");
      out.write("        <link rel=\"icon\" href=\"images/logo.png\" type=\"images/icon type\"> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrapper fadeInDown\">\n");
      out.write("            <div id=\"formContent\">             \n");
      out.write("                <h2 class=\"active\"> Login </h2>\n");
      out.write("                <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loginError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${RegistrationSuccess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                <!-- Icon -->\n");
      out.write("                <div class=\"fadeIn first\">\n");
      out.write("                    <img src=\"images/logo.png\" id=\"icon\" alt=\"Web Icon\" />\n");
      out.write("                </div>               \n");
      out.write("                <form action=\"login\" method=\"POST\">\n");
      out.write("                    <input type=\"text\" id=\"login\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cookie['name'].getValue()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"fadeIn second\" name=\"accountName\" placeholder=\"Username\" required=\"\">\n");
      out.write("                    <input type=\"password\" id=\"password\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cookie['pass'].getValue()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"fadeIn fifth\" name=\"accountPass\" placeholder=\"Password\" required=\"\">\n");
      out.write("                    <div class=\"fadeIn fourth\">\n");
      out.write("                        <input id=\"check\" type=\"checkbox\" name=\"remember\" class=\"check\">\n");
      out.write("                        <label for=\"check\"><span class=\"icon\"></span>Remember me</label>\n");
      out.write("                    </div>\n");
      out.write("                    <input type=\"submit\" name=\"submit\" class=\"fadeIn fifth\" value=\"login\">\n");
      out.write("                </form>\n");
      out.write("                or <a href=\"register.jsp\" style=\"color: #000000;\">Registration</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
