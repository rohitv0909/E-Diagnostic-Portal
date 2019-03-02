package ediagnostic.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ediagnostic.dbtasks.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class RegPatho
 */
@WebServlet("/RegPatho")
public class RegPatho extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	  private PreparedStatement ps2;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegPatho() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getParameter("text/html");
		//PrintWriter out=response.getWriter();
		String id=request.getParameter("txtpatientid");
		String name=request.getParameter("txtname");
		String address=request.getParameter("txtadd");
		String emailid=request.getParameter("txtmail");
		String phone=request.getParameter("txtphone");
		String city=request.getParameter("cmbcity");
		String speciality=request.getParameter("txtspcl");
		String description=request.getParameter("txtdesc");
		
		try {
			cn=CrudOperation.createConnection();
			cn.setAutoCommit(false);
		
			String pathology="insert into pathology values(?,?,?,?,?,?,?,?)";
		
			ps2=cn.prepareStatement(pathology);
			ps2.setString(1,id);
			ps2.setString(2,name);
			ps2.setString(3,address);
			ps2.setString(5,emailid);
			ps2.setString(4,phone);
			ps2.setString(6,city);
			ps2.setString(7,speciality);
			ps2.setString(8,description);
			
			int rw2=ps2.executeUpdate();
	        
	        if(rw2>0)
	        {
	        	cn.commit();
	        	System.out.println("Pathology details registered successfully");
	        	response.sendRedirect("/ediagnostic/jsp/owner_home.jsp");
	        }
		}
		catch (SQLException se) {
			System.out.println(se);
		}
	}

}
