package org.mini_project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forget
 */
@WebServlet("/forget")
public class forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forget() {
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
		doGet(request, response);
		String email=request.getParameter("email");
		String npass=request.getParameter("npass");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","Ganesh");
			String sql ="update royalenfield set Password=? where Email='"+email+"'";
			
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, npass);
			ps.executeUpdate();
			System.out.println("Password updated");
			request.getRequestDispatcher("sucess.jsp").forward(request, response);
			c.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
