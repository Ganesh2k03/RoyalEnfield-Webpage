package org.mini_project;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String pass=request.getParameter("pass");
		
		String mail_id=null;
		String password=null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","Ganesh");
			String sql = "select * from royalenfield where Email='"+email+"' and Password='"+pass+"'";
			
			PreparedStatement ps = c.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				mail_id=rs.getString("Email");
				password=rs.getString("Password");
			}
			
			PrintWriter p = response.getWriter();
			if(email.equals(mail_id) && pass.equals(password)) {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else {
				p.println("Invalid User");
			}
			c.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
