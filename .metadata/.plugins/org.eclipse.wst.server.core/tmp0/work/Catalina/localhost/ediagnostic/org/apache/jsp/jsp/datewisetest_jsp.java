/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M10
 * Generated at: 2018-08-04 17:20:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import ediagnostic.dbtasks.*;

public final class datewisetest_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/html/owner_menu.html", Long.valueOf(1533402920536L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("ediagnostic.dbtasks");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Datewise tests</title>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"/ediagnostic/bootstrapfiles/bootstrap.min.css\" type=\"text/css\">\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/js/validation.js\"></script>\r\n");
      out.write("<script src=\"/ecollege/bootstrapfiles/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("td\r\n");
      out.write("{\r\n");
      out.write("text-align: center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div\r\n");
      out.write("\t\tstyle=\"width: 100%; height: 80px; background-color: #6882d1; float: left\">\r\n");
      out.write("\t\t<h1 style=\"text-align: center;\">Datewise Test Details</h1>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"width: 20%; height: 700px; float: left\">\r\n");
      out.write("\t\t");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Pathology admin Menu</title>\r\n");
      out.write("<style>\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div\r\n");
      out.write("\t\tstyle=\"width: 100%; height: 100%; background-color: yellow; float: left\">\r\n");
      out.write("\t\t<ul style=\"list-style-type: none;\">\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic//jsp/regpatho.jsp\">Pathology Registration</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic//jsp/worker_registration.jsp\">Create worker account</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/doctor_registration.jsp\">Create doctor account</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/compose.jsp\">Compose</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/inbox.jsp\">Inbox</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/sentitems.jsp\">Sent Items</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/viewpathology.jsp\">View Pathology Details</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/editProfile.jsp\">Update Pathology Profile</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/viewdocacc.jsp\">View Doctor accounts</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/viewworkacc.jsp\">View worker accounts</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/datewisetest.jsp\">View Datewise Test Appointments</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/jsp/testwisereport.jsp\">View Testwise Appointments</a></li><br>\r\n");
      out.write("\t\t\t<li><a href=\"/ediagnostic/Logoff\">Logout</a></li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"width: 80%; height: 700px; float: left\">\r\n");
      out.write("\t\t");

			HttpSession hs = request.getSession(false);
			String uid = (String) hs.getAttribute("userkey");
			String strsql = "select * from test_apt order by date DESC";
			ResultSet rs = CrudOperation.fetchData(strsql);
		
      out.write("\r\n");
      out.write("\t\t<table>\r\n");
      out.write("\t\t\t<tr><th>Appointment ID</th><th>Patient ID</th><th>Test ID</th><th>Date</th></tr>\r\n");
      out.write("\t\t\t");

				while (rs.next()) 
				{
					String wid = rs.getString("workerid");
					String str = "select * from worker where workerid=?";
					ResultSet rs1 = CrudOperation.fetchData(str,wid);
					if(rs1.next())
					{
					String pd = rs1.getString("pathid");
					if(pd.equalsIgnoreCase(uid))
					{
			
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("aptid"));
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("patientid"));
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("testid"));
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("date"));
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
}} 
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");

				}
			
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t<div id=\"div1\"\r\n");
      out.write("\t\t\tstyle=\"width: 100%; height: 600px; background-color: aqua; overflow: scroll; display: none;\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
