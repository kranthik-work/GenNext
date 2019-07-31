

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection hrconnection;
	public static PreparedStatement sqlstatement;
	public static ResultSet queryresults;
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name,password,email;
		long mobile;
		RequestDispatcher rd;	
		name=request.getParameter("firstname");
		password=request.getParameter("password");
	email=request.getParameter("Emid");
		mobile=Long.parseLong(request.getParameter("mobile"));
		
		try
		{
			new oracle.jdbc.driver.OracleDriver ();
			hrconnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:GenNext", "scott", "tiger");
			System.out.println ("Connected to the database...");
			sqlstatement=hrconnection.prepareStatement("insert into RegisteredUsers(USERNAME,EMAIL_ID,MOBILE,PASSWORD) values (?,?,?,?)");
			sqlstatement.setString(1, name);
			sqlstatement.setString(2, email);
			sqlstatement.setLong(3, mobile);
			sqlstatement.setString(4, password);
			sqlstatement.executeUpdate();
			hrconnection.commit();
			hrconnection.close();
			
			PrintWriter out = response.getWriter();
			out.print("<script> alert(\"Registered\")</script>");
			
			rd = request.getRequestDispatcher("/JspPages/Booking.jsp");
			rd.forward(request, response);
			
			
			
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
