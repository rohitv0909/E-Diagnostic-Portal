/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M10
 * Generated at: 2018-08-01 06:14:06 UTC
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

public final class editProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
      out.write("<title>Edit Profile</title>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"/ediagnostic/bootstrapfiles/bootstrap.min.css\" type=\"text/css\">\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/js/validation.js\"></script><script>\r\n");
      out.write("function main() {\r\n");
      out.write("\tvar name = document.getElementById(\"txtname\").value;\r\n");
      out.write("\tvar email = document.getElementById(\"txtemail\").value;\r\n");
      out.write("\tvar address = document.getElementById(\"txtaddress\").value;\r\n");
      out.write("\tvar phone = document.getElementById(\"txtphone\").value;\r\n");
      out.write("\tvar b = true\r\n");
      out.write("\tif (checkEmpty(name) == false) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgname\").innerHTML = \"Please enter name\"\r\n");
      out.write("\t\tdocument.getElementById(\"txtname\").focus()\r\n");
      out.write("\t\tb = false\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (checkEmpty(name) == true) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgname\").innerHTML = \"\"\r\n");
      out.write("\t}\r\n");
      out.write("\tif (checkEmpty(email) == false) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgemail\").innerHTML = \"Please enter email id\"\r\n");
      out.write("\t\tdocument.getElementById(\"txtemail\").focus()\r\n");
      out.write("\t\tb = false\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (checkEmpty(email) == true) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgemail\").innerHTML = \"\"\r\n");
      out.write("\t}\r\n");
      out.write("\tif (checkEmpty(phone) == false) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgphone\").innerHTML = \"Please enter phone no.\"\r\n");
      out.write("\t\tdocument.getElementById(\"txtphone\").focus()\r\n");
      out.write("\t\tb = false\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (checkEmpty(phone) == true) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgphone\").innerHTML = \"\"\r\n");
      out.write("\t}\r\n");
      out.write("\tif (checkEmpty(address) == false) {\r\n");
      out.write("\t\tdocument.getElementById(\"msgaddress\").innerHTML = \"Please enter your address\"\r\n");
      out.write("\t\tdocument.getElementById(\"txtaddress\").focus()\r\n");
      out.write("\t\tb = false\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (checkEmpty(address) == true) \r\n");
      out.write("\t{\r\n");
      out.write("\t\tdocument.getElementById(\"msgaddress\").innerHTML = \"\"\r\n");
      out.write("\t}\r\n");
      out.write("\treturn b\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
 
	HttpSession hs=request.getSession(false);
    String uid=(String)hs.getAttribute("userkey");
    String utype=(String)hs.getAttribute("utype");
     
      out.write("\r\n");
      out.write("\t<div\r\n");
      out.write("\t\tstyle=\"width: 100%; height: 500px; background-color: #28B0CD; float: left;\">\r\n");
      out.write("\t\t");

		
		String strsql=null;
		if(utype.equalsIgnoreCase("patient"))
			strsql="select * from patient where patientid=?";
		else if(utype.equalsIgnoreCase("doctor"))
			strsql="select * from doctor where doctorid=?";
		else if(utype.equalsIgnoreCase("owner"))
			strsql="select * from pathology where pathid=?";
		else if(utype.equalsIgnoreCase("worker"))
			strsql="select * from worker where workerid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,uid);		
		if(rs.next())
		{
			String name=rs.getString("name");
			String email=rs.getString("email");
			String phone=rs.getString("phoneno");
			String address=rs.getString("address");
		
      out.write("\r\n");
      out.write("\t\t<form action=\"/ediagnostic/EditProfile\" method=\"post\" onsubmit=\"return main()\">\r\n");
      out.write("\t\t<table align=\"center\" style=\"margin-top: 100px;margin-left: 400px;font-size: 20px\">\r\n");
      out.write("\t\t<tr><th>Your Name</th><th><input type=\"text\" name=\"txtname\" id=\"txtname\" value=\"");
      out.print(name);
      out.write("\"></th></tr>\r\n");
      out.write("\t\t<th><th colspan=\"2\" id=\"msgname\" style=\"color: red\"></th></tr>\r\n");
      out.write("\t\t<tr><th>Your Email ID</th><th><input type=\"text\" name=\"txtemail\" id=\"txtemail\" value=\"");
      out.print(email);
      out.write("\"></th></tr>\r\n");
      out.write("\t\t<th><th colspan=\"2\" id=\"msgemail\" style=\"color: red\"></th></tr>\r\n");
      out.write("\t\t<tr><th>Your Phone No.</th><th><input type=\"text\" name=\"txtphone\" id=\"txtphone\" value=\"");
      out.print(phone);
      out.write("\"></th></tr>\r\n");
      out.write("\t\t<th><th colspan=\"2\" id=\"msgphone\" style=\"color: red\"></th></tr>\r\n");
      out.write("\t\t<tr><th>Your Address</th><th><input type=\"text\" name=\"txtaddress\" id=\"txtaddress\" value=\"");
      out.print(address);
      out.write("\"></th></tr>\r\n");
      out.write("\t\t<th><th colspan=\"2\" id=\"msgaddress\" style=\"color: red\"></th></tr>\r\n");
      out.write("\t\t<tr><th colspan=2><button type=\"submit\">Update</button></th></tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t");

		}
		rs.close();
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
