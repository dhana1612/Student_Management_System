package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		long rollnumber =Long.parseLong(req.getParameter("rollnumber"));
		
		User u = new User();
		u.setRoll_No(rollnumber);
		
		int count = TeacherStudentDatabaseConnectivity.delete(rollnumber);
		if(count>0)
		{
			req.setAttribute("message", "Record Deleted successfully");
			req.getRequestDispatcher("Delete.jsp").forward(req, resp);
		}
		else
		{
			req.setAttribute("error", "No record found");
			req.getRequestDispatcher("Delete.jsp").forward(req, resp);
			
		}
		out.close();
		
		
	}
}
