package Student_Grade_Management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class TeacherStudentDatabaseConnectivity 
{
	public static Connection getConnection() 
	{
		Connection con = null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dburl = "jdbc:mysql://localhost:3306/student_detail?user=root&password=root";
			con = DriverManager.getConnection(dburl);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public static List<User> getUsers()
	{
		List<User> list = new ArrayList<User>();//this homogeneous container will store data present in User
		try
		{
			Connection con=getConnection();
			String query="select * from stu_details";
			PreparedStatement psmt = con.prepareStatement(query);
			ResultSet rs =psmt.executeQuery();
			while(rs.next())
			{
				User u = new User();
				u.setRoll_No(rs.getLong(1));
				u.setName(rs.getString(2));
				u.setDept(rs.getString(3));
				u.setSub1_Mark(rs.getInt(4));
				u.setSub2_Mark(rs.getInt(5));
				u.setSub3_Mark(rs.getInt(6));
				u.setTotal(rs.getInt(7));
				u.setGrade(rs.getString(8));
				list.add(u);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public static int save(User u) {
		int status = 0;
		try {
			Connection con=getConnection();
			String query1 = "insert into stu_details values(?,?,?,?,?,?,?,?)";
			PreparedStatement psmt = con.prepareStatement(query1);
			
			psmt.setLong(1,u.getRoll_No());
			psmt.setString(2, u.getName());
			psmt.setString(3, u.getDept());
			psmt.setInt(4, u.getSub1_Mark());
			psmt.setInt(5, u.getSub2_Mark());
			psmt.setInt(6, u.getSub3_Mark());
			psmt.setInt(7, u.getTotal());
			psmt.setString(8,u.getGrade());
			
			

			status = psmt.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	
	public static int delete(long rollnumber) {
		int status = 0;
		try {
			Connection con=getConnection();
			PreparedStatement ps = con.prepareStatement("delete from stu_details where Roll_No=?");
			ps.setLong(1, rollnumber);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
	
}
