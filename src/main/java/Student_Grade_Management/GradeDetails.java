package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/GradeDetails")
public class GradeDetails extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{

		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		long rollnumber =Long.parseLong(req.getParameter("rollnumber"));
		
		
		User u = new User();
		u.setRoll_No(rollnumber);
		
		String grade = StudentDatabase.save(u);
		
		
		// Set the grade value as an attribute in the request object
        req.setAttribute("grade", grade);

        // Forward the request to the JSP page where the grade will be displayed
        req.getRequestDispatcher("/display_grade.jsp").forward(req, resp);
		
	}
	

}
