package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Update")
public class Update extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
	  long rnumber = Long.parseLong(req.getParameter("rollnumber"));
		
		 List<User> list=StudentDatabase.getUpdate(rnumber);
		 
		 if (list.isEmpty()) 
		 	{
			 	req.setAttribute("message", "No records found");
				req.getRequestDispatcher("UpdateMark.jsp").forward(req, resp);
		 	} 
		 else {
		 
		 for (User e : list) {
		        long rollNo = e.getRoll_No();
		        String name = e.getName();
		        String dept = e.getDept();
		        int sub1Mark = e.getSub1_Mark();
		        int sub2Mark = e.getSub2_Mark();
		        int sub3Mark = e.getSub3_Mark();
		        
		        // Set attributes in the request object
		        req.setAttribute("rollNo", rollNo);
		        req.setAttribute("name", name);
		        req.setAttribute("dept", dept);
		        req.setAttribute("sub1Mark", sub1Mark);
		        req.setAttribute("sub2Mark", sub2Mark);
		        req.setAttribute("sub3Mark", sub3Mark);
		    }
		    
		    // Forward the request to the JSP page
		    req.getRequestDispatcher("Update.jsp").forward(req, resp);	
		 }
	}
}
