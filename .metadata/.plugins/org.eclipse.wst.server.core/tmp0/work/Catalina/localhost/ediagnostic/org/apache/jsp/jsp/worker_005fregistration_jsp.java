/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M10
 * Generated at: 2018-08-05 10:54:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class worker_005fregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("javax.servlet");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Patient Registration</title>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"/ediagnostic/bootstrapfiles/bootstrap.min.css\" type=\"text/css\">\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"/ediagnostic/js/validation.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("/* $(document).ready(function()\r\n");
      out.write("  \t\t\r\n");
      out.write("  \t\t{\r\n");
      out.write("      $(\"#txtworkerid\").blur(\r\n");
      out.write("      \t\tfunction(){\r\n");
      out.write("      \t\t\tvar ui=this.value;\r\n");
      out.write("      \t\t\talert(ui)\r\n");
      out.write("       \r\n");
      out.write("      \t\t\t $.get(\"/ediagnostic/jsp/idcheck.jsp\",\r\n");
      out.write("      \t\t\t        {\r\n");
      out.write("      \t\t\t          recid:ui\r\n");
      out.write("      \t\t\t        },\r\n");
      out.write("      \t\t\t        function(data,status){\r\n");
      out.write("      \t\t\t        \t//if(data==\"\")\r\n");
      out.write("      \t\t\t          //  alert(\"Data: \" + data + \"\\nStatus: \" + status);\r\n");
      out.write("      \t\t\t             $(\"#div1\").html(data);\r\n");
      out.write("      \t\t\t             $(\"#div1\").show();\r\n");
      out.write("      \t\t\t             //$(\"#div1\").hide(5000);\r\n");
      out.write("      \t\t\t             \r\n");
      out.write("      \t\t\t        });\r\n");
      out.write("      \t\t\t\r\n");
      out.write("      \t\t\t\r\n");
      out.write("      \t\t\t\r\n");
      out.write("      });\r\n");
      out.write("  }); */\r\n");
      out.write("\r\n");
      out.write("\tfunction main() {\r\n");
      out.write("\t\tvar ui = document.getElementById(\"txtworkerid\").value;\r\n");
      out.write("\t\tvar upass = document.getElementById(\"txtpass\").value;\r\n");
      out.write("\t\tvar uname = document.getElementById(\"txtname\").value;\r\n");
      out.write("\t\tvar uemail = document.getElementById(\"txtmail\").value;\r\n");
      out.write("\t\tvar uphone = document.getElementById(\"txtphone\").value;\r\n");
      out.write("\t\tvar address = document.getElementById(\"txtaddress\").value;\r\n");
      out.write("\t\tvar ddl = document.getElementById(\"cmbcity\");\r\n");
      out.write("\t\tvar course = ddl.options[ddl.selectedIndex].value;\r\n");
      out.write("\t\tvar b = true\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif (checkEmpty(ui) == false) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgid\").innerHTML = \"worker ID required\"\r\n");
      out.write("\t\t\tdocument.getElementById(\"txtworkerid\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(ui)==true) \r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgid\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (checkEmpty(upass) == false) {\r\n");
      out.write("\t\t\t//alert(\"userpass needed\")\r\n");
      out.write("\t\t\t    document.getElementById(\"msgpass\").innerHTML = \"Password required\"\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"txtpass\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(upass) == true) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgpass\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (checkEmpty(uname) == false) {\r\n");
      out.write("\t\t\t//alert(\"userpass needed\")\r\n");
      out.write("\t\t\t    document.getElementById(\"msgname\").innerHTML = \"name required\"\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"txtname\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(uname) == true) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgname\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif (checkEmpty(uemail) == false) {\r\n");
      out.write("\t\t\t//alert(\"userpass needed\")\r\n");
      out.write("\t\t\t    document.getElementById(\"msgmail\").innerHTML = \"email Id required\"\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"txtmail\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(uemail) == true) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgmail\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif (checkEmpty(uphone) == false) {\r\n");
      out.write("\t\t\t//alert(\"userpass needed\")\r\n");
      out.write("\t\t\t    document.getElementById(\"msgphone\").innerHTML = \"phone no. required\"\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"txtphone\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(uphone) == true) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgphone\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif (checkEmpty(address) == false) {\r\n");
      out.write("\t\t\t//alert(\"userpass needed\")\r\n");
      out.write("\t\t\t    document.getElementById(\"msgaddress\").innerHTML = \"address is required\"\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"txtaddress\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if (checkEmpty(address) == true) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgaddress\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t \r\n");
      out.write("\t\tif (course == \"default\") {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgcity\").innerHTML = \"Please select a city\"\r\n");
      out.write("\t\t\tdocument.getElementById(\"cmbcity\").focus()\r\n");
      out.write("\t\t\tb = false\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\telse {\r\n");
      out.write("\t\t\tdocument.getElementById(\"msgcity\").innerHTML = \"\"\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn b\r\n");
      out.write("\t\t//alert(ui)\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div\r\n");
      out.write("\t\tstyle=\"width: 100%; height: 80px; background-color: #6882d1; float: left\">\r\n");
      out.write("\t\t<h1 style=\"text-align: center;\">Worker Registration Window</h1>\r\n");
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
      out.write("\r\n");
      out.write("\t\t<form action=\"/ediagnostic/WorkerRegistration\" method=\"post\" onsubmit=\"return main()\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<table align=\"center\"\r\n");
      out.write("\t\t\t\tstyle=\"margin-top: 50px; margin-left: 80px; height: 420px;\">\r\n");
      out.write("\t\t\t\t");
 HttpSession hs = request.getSession(false);
				String uid = (String) hs.getAttribute("userkey"); 
      out.write("\r\n");
      out.write("\t\t\t\t<tr style=\"width: 300px\">\r\n");
      out.write("\t\t\t\t\t<th>Pathology Id</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"text\" id=\"txtpathid\" name=\"txtpathid\"\r\n");
      out.write("\t\t\t\t\t\tvalue=");
      out.print(uid);
      out.write(" readonly=\"readonly\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr style=\"width: 300px\">\r\n");
      out.write("\t\t\t\t\t<th>Worker Id</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"text\" id=\"txtworkerid\" name=\"txtworkerid\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"enter worker id\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgid\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>Password</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"password\" id=\"txtpass\" name=\"txtpass\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"enter password\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgpass\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>Name</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"text\" id=\"txtname\" name=\"txtname\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"enter name\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgname\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>Email</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"email\" id=\"txtmail\" name=\"txtmail\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"enter email\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr\">\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgmail\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>Phone No.</th>\r\n");
      out.write("\t\t\t\t\t<th><input type=\"number\" id=\"txtphone\" name=\"txtphone\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"enter phone no.\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgphone\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>Address</th>\r\n");
      out.write("\t\t\t\t\t<th><textarea id=\"txtaddress\" name=\"txtaddress\" placeholder=\"enter address\"></textarea></th>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgaddress\" style=\"color: red;font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th>City</th>\r\n");
      out.write("\t\t\t\t\t<th><select id=\"cmbcity\" name=\"cmbcity\">\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"default\">Select city:</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"Lucknow\">Lucknow</option>\r\n");
      out.write("\t\t\t\t\t</select></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgcity\" style=\"color: red; font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><input type=\"radio\" name=\"rights\" id=\"rights\" value=\"nofix\" checked>Can't Fix Appointments<br></td>\r\n");
      out.write("  \t\t\t\t<td><input type=\"radio\" name=\"rights\" id=\"rights\" value=\"fix\">Can Fix Appointments<br></td>\r\n");
      out.write("  \t\t\t\t</tr>\r\n");
      out.write("  \t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"2\" id=\"msgright\" style=\"color: red; font-size: small;\"></th>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("  \t\t\t\t\r\n");
      out.write("  \t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"center\"><button type=\"submit\">Submit</button></td>\r\n");
      out.write("\t\t\t\t\t\t<td align=\"center\"><button type=\"reset\">Reset</button></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
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
