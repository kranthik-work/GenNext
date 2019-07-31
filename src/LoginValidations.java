

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/GenNext/WEB-INF/classes/LoginValidations")

public class LoginValidations extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection hrconnection;public static Statement sqlstatement;
	public static ResultSet queryresults;
       
    
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name,password,nmatch="null",pmatch="null";
		RequestDispatcher rd;	
		name=request.getParameter("firstname");
		password=request.getParameter("password");
		PrintWriter out = response.getWriter();
		try
		{
			new oracle.jdbc.driver.OracleDriver ();
			hrconnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:GenNext", "scott", "tiger");
			System.out.println ("Connected to the database...");
			
			sqlstatement=hrconnection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE | ResultSet.FETCH_REVERSE, ResultSet.CONCUR_UPDATABLE);
			String str="select  * from registeredusers";
			System.out.println(str);
			queryresults = sqlstatement.executeQuery(str);
			
			while (queryresults.next())
			{
				if(name.equals(queryresults.getString("USERNAME")))
				{
					pmatch=queryresults.getString("PASSWORD");
					break;
				}
				
			}
			if(password.equals(pmatch))
			{
				HttpSession hs =request.getSession();
				hs.setAttribute("LoggedIn",name);
				System.out.println(pmatch);
				rd = request.getRequestDispatcher("/JspPages/Booking.jsp");
				rd.forward(request, response);
			}
			else
			{
				System.out.println(nmatch);
				System.out.println(pmatch);
				
				out.print("<script> alert(\"Please enter valid details\")</script>");
				
				rd = request.getRequestDispatcher("/JspPages/Division.jsp");
				rd.forward(request, response);
				
			}

			
			hrconnection.commit();
			hrconnection.close();
		}
	catch (SQLException e) {System.out.println(e);	}
	}
}
