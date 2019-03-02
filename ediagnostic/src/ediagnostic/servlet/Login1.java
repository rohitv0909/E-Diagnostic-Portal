package ediagnostic.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ediagnostic.dbtasks.CrudOperation;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login1")
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn,cn1;
    private PreparedStatement pslogin,ps;
    private ResultSet rslogin,rs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id=request.getParameter("txtuserid").trim();
		String pass=request.getParameter("txtuserpass");
		cn=CrudOperation.createConnection();
		String strsql="select * from logininfo where userid=? and userpass=?";
		try
		{
			pslogin=cn.prepareStatement(strsql);
			pslogin.setString(1, id);
			pslogin.setString(2, pass);
			rslogin=pslogin.executeQuery();
			if(rslogin.next())
			{
				
				HttpSession hs=request.getSession(); //create new session
				String utype=rslogin.getString("usertype");
				hs.setAttribute("userkey", id);
				hs.setAttribute("utype", utype);
				if(utype.equalsIgnoreCase("admin"))
				{
					response.sendRedirect("/ediagnostic/jsp/admin_home.jsp");
				}
				else if(utype.equalsIgnoreCase("owner"))
				{
					response.sendRedirect("/ediagnostic/jsp/owner_home.jsp");
				}
				else if(utype.equalsIgnoreCase("worker"))
				{
					cn1=CrudOperation.createConnection();
					String str="select * from worker where workerid=?";
					ps=cn1.prepareStatement(str);
					ps.setString(1, id);
					rs=ps.executeQuery();
					if(rs.getString("rights").equalsIgnoreCase("fix"))
						response.sendRedirect("/ediagnostic/jsp/worker_home.jsp");
					else
						response.sendRedirect("/ediagnostic/jsp/worker_home2.jsp");
				}
				else if(utype.equalsIgnoreCase("patient"))
				{
					response.sendRedirect("/ediagnostic/jsp/patient_home.jsp");
				}
				else if(utype.equalsIgnoreCase("doctor"))
				{
					response.sendRedirect("/ediagnostic/jsp/doctor_home.jsp");
				}
			}
			else
			{
				//response.sendRedirect("/ediagnostic/jsp/login.jsp");
				request.setAttribute("msg", "Invalid UserID or Password");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/login.jsp");
				rd.forward(request, response);
			}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		
		
	}

}
