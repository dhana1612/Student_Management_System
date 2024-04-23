package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Update2")
public class Update2 extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		long rollnumber=Long.parseLong(req.getParameter("rollnumber"));
		String name =req.getParameter("name");
		String dept =req.getParameter("dept");
		int s1=Integer.parseInt(req.getParameter("s1"));
		int s2=Integer.parseInt(req.getParameter("s2"));
		int s3=Integer.parseInt(req.getParameter("s3"));
		
		int total =s1+s2+s3;
		
		int avg = total/3;
		
		String grade ;
		
		if (avg >= 90) {
	        grade = "A";
	    } else if (avg >= 80) {
	        grade = "B";
	    } else if (avg >= 70) {
	        grade = "C";
	    } else if (avg >= 60) {
	        grade = "D";
	    } else {
	        grade = "F";
	    }
		
		
		
		User u = new User();
		u.setRoll_No(rollnumber);
		u.setName(name);
		u.setDept(dept);
		u.setSub1_Mark(s1);
		u.setSub2_Mark(s2);
		u.setSub3_Mark(s3);
		u.setTotal(total);
		u.setGrade(grade);
		
		int count = StudentDatabase.update(u);
		
		if(count>0)
		{
			req.setAttribute("message", "Record Updated successfully");
			req.getRequestDispatcher("Update.jsp").forward(req, resp);
			
		}
		out.close();
		
	}
}
