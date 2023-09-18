package com.infnite.wallet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection conn = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		String username=request.getParameter("username");
		String password = request.getParameter("password");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wallet", "root","mysql123@");
			
			PreparedStatement ps = conn.prepareStatement("select * from accounts where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs= ps.executeQuery();
			
			if(rs.next()){
				response.sendRedirect("home.jsp");
			}
			else{
				//PrintWriter out = response.getWriter();
				//out.println("<html><body>Invalid user name or password</boby></html>");
				response.getWriter().print(""
						+ "<html>"
						+ "<body>"
						+ "<center>"
						+ "<h1>Invalid user name or password</h1><br>"
						+ "<h2><a href='login.jsp'>CLICK HERE </a>to login again</h2>"
						+ "</center>"
						+ "</boby>"
						+ "</html>");
				
				//response.sendRedirect("login.jsp");
			}
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