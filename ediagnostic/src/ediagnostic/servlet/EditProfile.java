package ediagnostic.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ediagnostic.dbtasks.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class EditPatientProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession(false);
	    String uid=(String)hs.getAttribute("userkey");
	    String utype=(String)hs.getAttribute("utype");
		String name=request.getParameter("txtname");
		String email = request.getParameter("txtemail");
		String phone = request.getParameter("txtphone");
		String address = request.getParameter("txtaddress");
		try 
		{
			String str=null;
			cn = CrudOperation.createConnection();
			if(utype.equalsIgnoreCase("patient"))
				str = "update patient set name=?, address=?, phoneno=?, email=? where patientid=?";
			else if(utype.equalsIgnoreCase("worker"))
				str = "update worker set name=?, address=?, phoneno=?, email=? where workerid=?";
			else if(utype.equalsIgnoreCase("owner"))
				str = "update pathology set name=?, address=?, phoneno=?, email=? where pathid=?";
			else if(utype.equalsIgnoreCase("doctor"))
				str = "update doctor set name=?, address=?, phoneno=?, email=? where doctorid=?";
			ps = cn.prepareStatement(str);
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, phone);
			ps.setString(4, email);
			ps.setString(5, uid);
			int r = ps.executeUpdate();// insert/update/delete
			if (r>0) 
			{
				response.sendRedirect("/ediagnostic/jsp/editProfile.jsp");
			}
		} 
		catch (SQLException se) 
		{
			System.out.println(se);
		}
	}

}
