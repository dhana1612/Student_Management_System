package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet
{
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        long rollnumber = Long.parseLong(req.getParameter("srollno"));
        String name = req.getParameter("sname");

        boolean isAuthenticated = StudentDatabase.authenticate(rollnumber);
        
        if (isAuthenticated) 
        {
            out.println("<h2>Welcome " + name + "</h2>");
           
            req.setAttribute("rollnumber", rollnumber);
            req.setAttribute("name", name);
            
            req.getRequestDispatcher("StudentInterface.jsp").forward(req, resp);
        } else 
        {
            resp.sendRedirect("ErrorPage1.jsp");
        }

        
    }
	
}

	
