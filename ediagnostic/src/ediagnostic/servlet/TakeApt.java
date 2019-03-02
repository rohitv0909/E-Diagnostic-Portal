package ediagnostic.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ediagnostic.dbtasks.CrudOperation;

/**
 * Servlet implementation class TakeApt
 */
@WebServlet("/TakeApt")
public class TakeApt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeApt() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String test = request.getParameter("cmbtest");
		String rid = request.getParameter("txtrid");
		String remarks = request.getParameter("txtrem");
		java.util.Date date=null;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("txtdate"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		try {
			HttpSession hs=request.getSession(false);
			String uid=(String)hs.getAttribute("userkey");
			cn = CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String str = "insert into test_apt(patientid, testid, date, remarks, status) values(?,?,?,?,?)";
			ps = cn.prepareStatement(str);
			ps.setString(1, uid);
			ps.setString(2, test);
			ps.setDate(3, new java.sql.Date(date.getTime())); 
			ps.setString(4, remarks);
			ps.setString(5, "pending");
			
			int r = ps.executeUpdate();// insert/update/delete
			if (r > 0) 
			{
				cn.commit();
				System.out.println("Message Sent");
				response.sendRedirect("/ediagnostic/jsp/patient_home.jsp");
			}
		} catch (SQLException se) {
			System.out.println(se);
		}
	}
	

}
