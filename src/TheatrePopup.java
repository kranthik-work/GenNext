

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TheatrePopup
 */
@WebServlet("/TheatrePopup")
public class TheatrePopup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
     
        try {
            out.println("<html><body><p> I am here</p></body></html>");
           String city=request.getParameter("ddlist1");
           String firstname=request.getParameter("firstname");
           request.setAttribute("firstname", firstname);
           String pass;
           System.out.println(firstname);
          if(city.equals("Select City")){
              out.println("Please select a city. Redirecting.....");
               RequestDispatcher rd=request.getRequestDispatcher("/JspPages/BookingIFrameContent.jsp");
           rd.forward(request, response);
          }
          else if(city.equals("chennai")){
               
              request.setAttribute("pass","chennai");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
           else if(city.equals("Delhi")){
              
               request.setAttribute("pass","Delhi");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
           else if(city.equals("Gurgaon")){
               
              request.setAttribute("pass","Gurgaon");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
          else if(city.equals("Hyderabad")){
               
               request.setAttribute("pass","Hyderabad");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
          else if(city.equals("Kolkata")){
              
               request.setAttribute("pass","Kolkata");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
           else{
             
             request.setAttribute("pass","Mumbai");
                RequestDispatcher rd=request.getRequestDispatcher("/JspPages/Booking2.jsp");
           rd.forward(request, response);
           }
          
            /* TODO output your page here. You may use following sample code. 
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Theatre</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Theatre at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        } finally {            
            out.close();
        }
	}

}
