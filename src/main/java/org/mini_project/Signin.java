package org.mini_project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signin
 */
@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signin() {
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String mail=request.getParameter("mail");
		String phno=request.getParameter("phno");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String npass=request.getParameter("npass");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","Ganesh");
			
			String sql="insert into royalenfield(First_Name,Last_Name,Email,Phone_Number,Date_Of_Birth,Gender,Password)values(?,?,?,?,?,?,?)";
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, mail);
			ps.setLong(4, Long.parseLong(phno));
			ps.setString(5, dob);
			ps.setString(6, gender);
			ps.setString(7, npass);
			
			ps.executeUpdate();
			request.getRequestDispatcher("Login.jsp").forward(request,response);
			System.out.println("User Updated");
			c.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
