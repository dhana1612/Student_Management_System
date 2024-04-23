package Student_Grade_Management;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DisplayStudentDetailsServlet")
public class DisplayStudentDetailsServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		
		 List<User> list=TeacherStudentDatabaseConnectivity.getUsers();
		
		
		out.println("<!DOCTYPE html>"
				+ "<html lang=\"en\">"
				+ "<head>"
				+ "    <meta charset=\"UTF-8\">"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
				+ "    <title>Document</title>"
				+ "    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">"
				+ "    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>"
				+ "    <link href=\"https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&display=swap\" rel=\"stylesheet\">"
				+ "    <link href=\"https://fonts.googleapis.com/css2?family=Anta&family=Dancing+Script:wght@400..700&family=Honk:MORF@25&family=Madimi+One&family=Merienda:wght@800&family=Roboto+Slab:wght@100..900&family=Workbench&display=swap\" rel=\"stylesheet\">"
				+ " <style>"
				+ "        *{"
				+ "            margin: 0;"
				+ "            padding: 0;"
				+ "            box-sizing: border-box;"
				+ "            color: rgb(255, 88, 88);"
				+ "        }"
				+ "        body{"
				+ "            width: 100%;"
				+ "            height: 100vh;"
				+ "            background-color: rgb(0, 0, 0);"
				+ "        }"
				+ "        h2{"
				+ "            display: flex;"
				+ "            font-family: \"Merienda\", cursive;"
				+ "            font-optical-sizing: auto;"
				+ "            font-weight: 400px;"
				+ "            font-size: 44px;"
				+ "            justify-content: center;"
				+ "            margin-top: 40px;"
				+ "        }"
				+ "        .box{\r\n"
				+ "            display: flex;"
				+ "            flex-direction: column;"
				+ "            flex-wrap: wrap;"
				+ "            margin-left: 78px;"
				+ "            margin-right: 130px;"
				+ "            width: fit-content;"
				+ "            margin-top: 60px;"
				+ "            border: 2px solid white;"
				+ "            height: auto; "
				+ "            background: rgba( 255, 255, 255, 0.05 );"
				+ "            box-shadow: 0px 10px 22px 0px rgb(250, 250, 255);"
				+ "            backdrop-filter: blur( 1.5px );"
				+ "            -webkit-backdrop-filter: blur( 1.5px );"
				+ "            border-radius: 12px;"
				+ "            border: 1px solid rgba( 255, 255, 255, 0.18 );"
				+ "        }"
				+ "        .box .box1{\r\n"
				+ "            width: auto;\r\n"
				+ "            height: auto;\r\n"
				+ "            border: 2px solid transparent;\r\n"
				+ "            font-family: \"Merienda\", cursive;\r\n"
				+ "            font-optical-sizing: auto;\r\n"
				+ "            font-weight: 400px;\r\n"
				+ "            font-size: 24px;\r\n"
				+ "            padding: 20px;\r\n"
				+ "            border-top-left-radius: 12px;\r\n"
				+ "            border-top-right-radius:12px;\r\n"
				+ "            background: rgba(166, 166, 166, 0.15);\r\n"
				+ "            backdrop-filter: blur( 2.5px );\r\n"
				+ "            -webkit-backdrop-filter: blur( 2.5px );\r\n"
				+ "            border: 1px solid rgba( 255, 255, 255, 0.18 );\r\n"
				+ "        }\r\n"
				+ "        .container{\r\n"
				+ "            display: flex;\r\n"
				+ "            flex-wrap: wrap;\r\n"
				+ "            justify-content: center;\r\n"
				+ "            margin: 30px;\r\n"
				+ "            background: rgba(0, 0, 0, 0.218);\r\n"
				+ "            backdrop-filter: blur( 2.5px );\r\n"
				+ "            -webkit-backdrop-filter: blur( 2.5px );\r\n"
				+ "            border-radius: 10px;\r\n"
				+ "            border: 1px solid rgba( 255, 255, 255, 0.18 );\r\n"

				+ "        }\r\n"
				+ "        .container table,tr,th,td{\r\n"
				+ "           border: 2px solid transparent;\r\n"
				+ "           border-collapse: collapse;\r\n"
				+ "           font-size: 22px;\r\n"
				+ "           color: rgb(64, 225, 110);\r\n"
				+ "           padding: 15px;\r\n"
			
				+ "        }\r\n"
				+ "				.container table,th{"
				+ "				color:orangered;"
				+ "				}"
				+ "        .container table tr:nth-child(odd){\r\n"
				+ "            background: rgba(101, 100, 100, 0.55);\r\n"
				+ "            backdrop-filter: blur( 4.5px );\r\n"
				+ "            -webkit-backdrop-filter: blur( 4.5px );\r\n"
				+ "            border-radius: 10px;\r\n"
				+ "            border: 1px solid rgba( 255, 255, 255, 0.18 );\r\n"
				+ "        }\r\n"
				+ "        .btn{\r\n"
				+ "            width: 130px;\r\n"
				+ "            height: 40px;\r\n"
				+ "            border: none;\r\n"
				+ "            text-indent: 0%;\r\n"
				+ "            color: white;\r\n"
				+ "            font-size: 16px;\r\n"
				+ "            margin-left: 1080px;\r\n"
				+ "            margin-top: 40px;\r\n"
				+ "            background-color: teal;\r\n"
				+ "            border-radius: 30px;\r\n"
				+ "            cursor: pointer;\r\n"
				+ "margin-bottom:30px;"
				+ "        }\r\n"
				+ "    </style>"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "    <h2>Student Detail's</h2>\r\n"
				+ "    <div class=\"box\">\r\n"
				+ "        <div class=\"box1\">\r\n"
				+ "            Student Database\r\n"
				+ "        </div>\r\n"
				+ "        <div class=\"container\">\r\n"
				+ "            <table>\r\n"
				+ "                    <tr>\r\n"
				+ "                        <th>Roll_No</th>\r\n"
				+ "                        <th>Student_Name</th>\r\n"
				+ "                        <th>Department</th>\r\n"
				+ "                        <th>Sub1_Mark</th>\r\n"
				+ "                        <th>Sub2_Mark</th>\r\n"
				+ "                        <th>Sub3_Mark</th>\r\n"
				+ "                        <th>Total</th>\r\n"
				+ "                        <th>Grade</th>\r\n"
				+ "                    </tr>");
		for(User e:list)
		{  
		      out.print("<tr>"
		      				+ "<td>"+e.getRoll_No()+"</td>"
		      				+ "<td>"+e.getName()+"</td>"
		      				+ "<td>"+e.getDept()+"</td>"
		      				+ "<td>"+e.getSub1_Mark()+"</td>"
		      				+ "<td>"+e.getSub2_Mark()+"</td>"
		      				+ "<td>"+e.getSub3_Mark()+"</td>"
		      				+ "<td>"+e.getTotal()+"</td>"
		      				+ "<td>"+e.getGrade()+"</td>");
		}
		
		out.println("</table>"
				+ "        </div>"
				+ "    </div>"
				+ "    <input type=\"button\" class=\"btn\" value=\"Back to options\" onclick=\"window.location.href='TeacherInterface.jsp'\">"
				+ "</body>"
				+ "</html>");
		 	
	}
		
	}


