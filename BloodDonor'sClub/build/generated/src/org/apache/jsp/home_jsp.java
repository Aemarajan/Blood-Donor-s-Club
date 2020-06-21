package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            .footer{\n");
      out.write("                position: absolute;\n");
      out.write("                left: 0;\n");
      out.write("                bottom: 0;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width initial-scale=1.0\">\n");
      out.write("        <!-- Bootstrap css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- External css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("        <!-- Bootstrap js -->\n");
      out.write("        <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- fontawesome script -->\n");
      out.write("        <script src=\"js/all.js\"></script>\n");
      out.write("        <!-- External js -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("        <!-- Shortcut icon -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/blood.png\">\n");
      out.write("        <!-- JQuery -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.validate.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-expand-md navbar-dark bg-dark\">\n");
      out.write("            <a href=\"");
  if (session != null) {
                            if (session.getAttribute("name") != null) {
                    
      out.write(" \n");
      out.write("                    home.jsp\n");
      out.write("                    ");
 
                            } else {
                    
      out.write("\n");
      out.write("                    index.jsp\n");
      out.write("                    ");

                            }
                        }
                    
      out.write("\"                             \n");
      out.write("                    class=\"navbar-brand\"><i class=\"fas fa-bold h3\" style=\"margin-bottom: -1px; margin-right: 2px;\"></i>lood Doner's Club</a>\n");
      out.write("\t\t<button class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#navbarMenu\">\n");
      out.write("\t\t\t<span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t\t</button>\n");
      out.write("\t\t<div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n");
      out.write("\t\t\t<ul class=\"navbar-nav ml-auto\">\n");
      out.write("                                    ");

                                	if (session != null) {
                                            if (session.getAttribute("name") != null) {
                                                String name = (String) session.getAttribute("name");
                                    
      out.write("\n");
      out.write("                                    <li class=\"nav-item ml-3\"><a href=\"home.jsp\" class=\"nav-link\">Home</a></li> \n");
      out.write("                                    <li class=\"nav-item dropdown ml-3\">\n");
      out.write("                                        <a class=\"nav-link dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\">Notification</a>\n");
      out.write("                                        <div class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"#\">Notify 1</a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"#\">Notify 2</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item ml-3\"><a href=\"search.jsp\" class=\"nav-link\">Search</a></li>\n");
      out.write("                                    <li class=\"nav-item ml-3\"><a href=\"request.jsp\" class=\"nav-link\">Request</a></li>\n");
      out.write("                                    <li class=\"nav-item dropdown ml-3\">\n");
      out.write("                                        <a class=\"nav-link dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\">");
      out.print(name);
      out.write("</a>\n");
      out.write("                                        <div class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"profile.jsp\">Profile</a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"SignOut\" method=\"post\">Sign Out</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    ");
 
                                            } else {
                                    
      out.write("\n");
      out.write("                                    <li class=\"nav-item ml-3\"><a href=\"login.jsp\" class=\"nav-link\">Login</a></li>\n");
      out.write("                                    <li class=\"nav-item ml-3\"><a href=\"register.jsp\" class=\"nav-link\">Register</a></li>\n");
      out.write("                                    ");

                                            }
                                        }
                                    
      out.write("                             \n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t</nav>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("        <div class=\"container-fluid w-75\">\n");
      out.write("            <div class=\"d-flex justify-content-center bg-light\">\n");
      out.write("                <div class=\"post\">\n");
      out.write("                    <div class=\"post-h\">\n");
      out.write("                        <img src=\"./images/blood11.jpg\" alt=\"\">\n");
      out.write("                        <span class=\"date\">13 Aug 2018</span>\n");
      out.write("                        <span class=\"label\">First post</span>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width initial-scale=1.0\">\n");
      out.write("    <!-- Bootstrap css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- External css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("    <!-- Bootstrap js -->\n");
      out.write("    <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <!-- fontawesome script -->\n");
      out.write("    <script src=\"js/all.js\"></script>\n");
      out.write("    <!-- External js -->\n");
      out.write("    <script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("    <!-- Shortcut icon -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/blood.png\">\n");
      out.write("    <!-- JQuery -->\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery-3.4.1.min.js\"></script>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<footer class=\"bg-dark py-2 text-center text-light\">\n");
      out.write("\t\t<a href=\"#\" class=\"text-light\">Terms and Conditions</a>  |  <a href=\"#\" class=\"text-light\">Use of Services</a><br>\n");
      out.write("\t\t<p class=\"h6\">Copyrights &copy; Reserved 2019</p>\n");
      out.write("\t</footer>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
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
