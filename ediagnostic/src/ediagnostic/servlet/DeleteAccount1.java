package ediagnostic.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ediagnostic.dbtasks.CrudOperation;

import java.sql.*;
/**
 * Servlet implementation class DeleteAccount
 */
@WebServlet("/DeleteAccount1")
public class DeleteAccount1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection cn;
    private PreparedStatement ps;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAccount1() {
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
		String[] userarr=request.getParameterValues("chk");
		try
		{
			cn=CrudOperation.createConnection();
			cn.setAutoCommit(false);
			String strdelete="delete from logininfo where userid=?";
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
			response.sendRedirect("/ediagnostic/jsp/deleteacc.jsp");
		}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
	}

}
