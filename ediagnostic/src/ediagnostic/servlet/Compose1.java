package ediagnostic.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ediagnostic.dbtasks.CrudOperation;

/**
 * Servlet implementation class Compose
 */
@WebServlet("/Compose1")
public class Compose1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps,ps1;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Compose1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("txtsid");
		String rid = request.getParameter("txtrid");
		String usersubject = request.getParameter("txtsubject");
		String usermsg = request.getParameter("txtmsg");
		java.util.Date d = new java.util.Date();
		//System.out.println(d);
		long l = d.getTime();
		java.sql.Date sd = new java.sql.Date(l);
		try {
			HttpSession hs=request.getSession(false);
			String type=(String)hs.getAttribute("utype");
			cn = CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String str1 = "insert into inbox(senderid, receiverid, subject, message, dateofmsg) values(?,?,?,?,?)";
			String str2 = "insert into sentitem(senderid, receiverid, subject, message, dateofmsg) values(?,?,?,?,?)";
			
			ps = cn.prepareStatement(str1);
			ps.setString(1, sid);
			ps.setString(2, rid);
			ps.setString(3, usersubject);
			ps.setString(4, usermsg);
			ps.setDate(5, sd);
			
			ps1 = cn.prepareStatement(str2);
			ps1.setString(1, sid);
			ps1.setString(2, rid);
			ps1.setDate(5, sd);
			ps1.setString(3, usersubject);
			ps1.setString(4, usermsg);
			
			int r = ps.executeUpdate();// insert/update/delete
			int r1 = ps1.executeUpdate();
			if (r > 0 && r1 > 0) 
			{
				//cn.commit();
				System.out.println("Message Sent");
				//if(type=="admin")
					response.sendRedirect("/ediagnostic/jsp/compose.jsp");
				/*else if(type=="owner")
					response.sendRedirect("/ediagnostic/jsp/owner_home.jsp");
				else if(type=="worker")
					response.sendRedirect("/ediagnostic/jsp/worker_home.jsp");
				else if(type=="patient")
					response.sendRedirect("/ediagnostic/jsp/patient_home.jsp");
				else if(type=="doctor")
					response.sendRedirect("/ediagnostic/jsp/doctor_home.jsp");*/
			}
		} catch (SQLException se) {
			System.out.println(se);
		}
	}

}
