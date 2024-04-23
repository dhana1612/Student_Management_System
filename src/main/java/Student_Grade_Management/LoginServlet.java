package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String n =req.getParameter("name");
		String p =req.getParameter("password");
		
		boolean isAuthenticated = TeacherDao.authenticate(n,p);

        
        if (isAuthenticated) 
        {
           
            resp.sendRedirect("TeacherInterface.jsp");
        } 
        else 
        {
        	req.setAttribute("message", "Invalid Username or Password");
			req.getRequestDispatcher("teacher_login.jsp").forward(req, resp);
        }
		
		
	}

}
