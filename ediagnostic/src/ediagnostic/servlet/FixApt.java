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
 * Servlet implementation class FixApt
 */
@WebServlet("/FixApt")
public class FixApt extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static PreparedStatement ps;
    private static Connection cn;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FixApt() {
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
		// TODO Auto-generated method stub
		HttpSession hs = request.getSession(false);
		String wid = (String) hs.getAttribute("userkey");
		String[] userarr=request.getParameterValues("chk");
		try
		{
			cn=CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String strdelete="update test_apt set status=?,workerid=? where aptid=?";
			ps=cn.prepareStatement(strdelete);
		for(int i=0;i<userarr.length;i++)
		{
			ps.setString(1, "Confirmed");
			ps.setString(2, wid);
			ps.setInt(3, Integer.parseInt(userarr[i]));
			ps.addBatch();
		}
		int[] rows=ps.executeBatch();
		int flag=0;
		for(int i=0;i<rows.length;i++)
		{
			if(rows[i]<0)
			{
				flag=1;
				break;
			}
		}
		if(flag==0)
		{
			cn.commit();
			response.sendRedirect("/ediagnostic/jsp/worker_home.jsp");
		}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
	}

}
