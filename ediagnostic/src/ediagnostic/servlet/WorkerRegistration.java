package ediagnostic.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class PatientRegistration
 */
@WebServlet("/WorkerRegistration")
public class WorkerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps1, ps2;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WorkerRegistration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getParameter("text/html");
		// PrintWriter out=response.getWriter();
		String id = request.getParameter("txtworkerid");
		String pass = request.getParameter("txtpass");
		String name = request.getParameter("txtname");
		String emailid = request.getParameter("txtmail");
		String phone = request.getParameter("txtphone");
		String address = request.getParameter("txtaddress");
		String city = request.getParameter("cmbcity");
		String r = request.getParameter("rights");
		java.util.Date d = new java.util.Date();
		java.sql.Date sd = new java.sql.Date(d.getTime());
		
		//System.out.println(id+pass+name+emailid+phone+address+city);
		
		try {
			HttpSession hs = request.getSession(false);
			String uid = (String) hs.getAttribute("userkey");
			cn = CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String login = "insert into logininfo values(?,?,?)";
			String patient = "insert into worker(workerid, pathid, name, address, phoneno, email, city, rights) values(?,?,?,?,?,?,?,?)";

			ps1 = cn.prepareStatement(login);
			ps1.setString(1, id);
			ps1.setString(2, pass);
			ps1.setString(3, "worker");

			ps2 = cn.prepareStatement(patient);
			ps2.setString(1, id);
			ps2.setString(2, uid);
			ps2.setString(3, name);
			ps2.setString(4, address);
			ps2.setString(5, phone);
			ps2.setString(6, emailid);
			ps2.setString(7, city);
			ps2.setString(8, r);

			int rw1 = ps1.executeUpdate();
			int rw2 = ps2.executeUpdate();

			if (rw1 > 0 && rw2 > 0) {
				cn.commit();
				System.out.println("Worker Registered");
				response.sendRedirect("/ediagnostic/jsp/owner_home.jsp");
			}
		} catch (SQLException se) {
			System.out.println(se);
		}

	}

}
