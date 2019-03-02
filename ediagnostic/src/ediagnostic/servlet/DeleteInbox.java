package ediagnostic.servlet;

import java.io.IOException;
import ediagnostic.dbtasks.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class DeleteInbox
 */
@WebServlet("/DeleteInbox")
public class DeleteInbox extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
    private PreparedStatement ps; 
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteInbox() {
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
		String[] userarr=request.getParameterValues("chk");
		try
		{
			cn=CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String strdelete="delete from inbox where msgid=?";
			ps=cn.prepareStatement(strdelete);
		for(int i=0;i<userarr.length;i++)
		{
			ps.setString(1, userarr[i]);
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
			response.sendRedirect("/ediagnostic/jsp/inbox.jsp");
		}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}

	}

}
