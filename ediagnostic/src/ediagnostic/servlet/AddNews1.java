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
 * Servlet implementation class AddNews
 */
@WebServlet("/AddNews1")
public class AddNews1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
	private PreparedStatement ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNews1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession hs=request.getSession(false);
		String uid=(String)hs.getAttribute("userkey");
		String ttl = request.getParameter("txttitle");
		String info = request.getParameter("txtcontents");
		java.util.Date d = new java.util.Date();
		long l=d.getTime();
		java.sql.Date sd = new java.sql.Date(l);
		try 
		{
			cn = CrudOperation.createConnection();
			String str = "insert into news(title, contents, date, doctorid) values(?,?,?,?)";
			ps = cn.prepareStatement(str);
			ps.setString(1,ttl);
			ps.setString(2,info);
			ps.setDate(3,sd);
			ps.setString(4, uid);
			int r = ps.executeUpdate();// insert/update/delete
			if (r>0) 
			{
				response.sendRedirect("/ediagnostic/jsp/news.jsp");
			}
		} 
		catch (SQLException se) 
		{
			System.out.println(se);
		}
	}

}
