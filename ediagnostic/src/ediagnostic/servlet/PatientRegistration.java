package ediagnostic.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ediagnostic.dbtasks.CrudOperation;
import java.sql.*;
/**
 * Servlet implementation class PatientRegistration
 */
@WebServlet("/PatientRegistration")
public class PatientRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private Connection cn;
	  private PreparedStatement ps1,ps2;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientRegistration() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getParameter("text/html");
		PrintWriter out=response.getWriter();
		String id=request.getParameter("txtpatientid");
		String pass=request.getParameter("pass");
		String name=request.getParameter("txtname");
		String emailid=request.getParameter("email");
		String phone=request.getParameter("txtphone");
		String address=request.getParameter("txtaddress");
		java.util.Date d=new java.util.Date();
	      long l=d.getTime();
	        java.sql.Date sd=new java.sql.Date(l);
		
	
		System.out.println(id);
		System.out.println(pass);
		System.out.println(name);
		System.out.println(emailid);
		System.out.println(phone);
		System.out.println(address);
		
		
		
		try {
			cn=CrudOperation.createConnection();
			cn.setAutoCommit(false);
		String login="insert into logininfo values(?,?,?)";
		String patient="insert into patient values(?,?,?,?,?,?)";
		
			
			ps1=cn.prepareStatement(login);
			ps1.setString(1,id);
			ps1.setString(2,pass);
			ps1.setString(3,"patient");
			ps2=cn.prepareStatement(patient);
			ps2.setString(1,id);
			ps2.setString(2,name);
			ps2.setString(3,address);
			ps2.setString(4,phone);
			ps2.setString(5,emailid);
			ps2.setDate(6, sd);
			
			int rw1=ps1.executeUpdate();
	        int rw2=ps2.executeUpdate();
	        
	        if(rw1>0&&rw2>0)
	        {
	        	cn.commit();
	        	System.out.println("Patient Registered");
	        	response.sendRedirect("/ediagnostic/jsp/patient_home.jsp");
	        }
		}
		catch (SQLException se) {
			System.out.println(se);
		}
		
	}

}
