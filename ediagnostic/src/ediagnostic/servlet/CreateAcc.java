package ediagnostic.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ediagnostic.dbtasks.CrudOperation;

/**
 * Servlet implementation class CreateAcc
 */
@WebServlet("/CreateAcc")
public class CreateAcc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps1;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateAcc() {
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
		String id = request.getParameter("txtpatientid");
		String pass = request.getParameter("pass");

		try {
			cn = CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String login = "insert into logininfo values(?,?,?)";

			ps1 = cn.prepareStatement(login);
			ps1.setString(1, id);
			ps1.setString(2, pass);
			ps1.setString(3, "owner");

			int rw1 = ps1.executeUpdate();

			if (rw1 > 0) {
				 cn.commit();
				System.out.println("Owner Registered");
				response.sendRedirect("/ediagnostic/jsp/admin_home.jsp");
			}
		} catch (SQLException se) {
			System.out.println(se);
		}
	}

}
