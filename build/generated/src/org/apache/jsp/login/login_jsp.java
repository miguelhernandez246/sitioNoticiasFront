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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../resource/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"../resource/js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/login.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url('../resource/images/fondo3.jpg'); background-repeat: no-repeat; background-size: cover\" >\n");
      out.write("        <div class=\"container px-4 py-5 mx-auto\">\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                <div class=\"d-flex flex-lg-row flex-column-reverse \">\n");
      out.write("                    <div class=\"card card1\">\n");
      out.write("                        <div class=\"row justify-content-center my-auto\">\n");
      out.write("                            <div class=\"col-md-7 col-10 my-3\">\n");
      out.write("                                <div class=\"row justify-content-center px-2 mb-2\"> <img id=\"logo\" src=\"../resource/images/login.png\"> </div>\n");
      out.write("                                <h3 class=\"mb-5 text-center heading\">Bienvenido!</h3>\n");
      out.write("                                <h6 class=\"msg-info\">Por favor ingresa tu usuario y tu contraseña</h6>\n");
      out.write("                                <div class=\"form-group\"> <label class=\"form-control-label text-muted\">Usuario</label> <input type=\"text\" id=\"usuario\" name=\"usuario\" placeholder=\"Usuario\" class=\"form-control\"> </div>\n");
      out.write("                                <div class=\"form-group\"> <label class=\"form-control-label text-muted\">Contraseña</label> <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Contraseña\" class=\"form-control\"> </div>\n");
      out.write("                                <div class=\"row justify-content-center my-3 px-3\"> <button class=\"btn btn-primary\">Ingresar</button> </div>\n");
      out.write("                                <div class=\"row justify-content-center my-2\"> <a href=\"#\"><small class=\"text-muted\">Forgot Password?</small></a> </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"bottom text-center mb-5\">\n");
      out.write("                            <p href=\"#\" class=\"sm-text mx-auto mb-3\">Don't have an account?<button class=\"btn btn-white ml-2\">Create new</button></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
