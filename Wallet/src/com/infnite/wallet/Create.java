package com.infnite.wallet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Create
 */
public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Create() {
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
		String fname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String pass = request.getParameter("cpassword");
		int mno = Integer.parseInt(request.getParameter("mobile"));
		int accid = Integer.parseInt(request.getParameter("accno"));
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet", "root","mysql123@");
			
			PreparedStatement st = con.prepareStatement("INSERT INTO employee VALUES(?,?,?,?,?)");
			
		}
		catch(SQLException e){
			System.out.println(e);
		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
				System.out.println("Connection closed");
			} 
			catch (Exception e) {
				System.out.println(e);
			}
		}
	}

}
