package Student_Grade_Management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDatabase
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
	
	public static boolean authenticate(long rollnumber) 
	{
        boolean isAuthenticated = false;
        
        try 
        {
            Connection con = getConnection();
            String query = "SELECT * FROM stu_details WHERE Roll_No = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setLong(1,rollnumber);
           
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) 
            {
                isAuthenticated = true;
            }
            rs.close();
            ps.close();
            con.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return isAuthenticated;
    }
	
	public static List<User> getUsers(Long rollnumber)
	{
		List<User> list = new ArrayList<User>();//this homogeneous container will store data present in User
		try
		{
			Connection con=getConnection();
			String query="SELECT * FROM stu_details WHERE Roll_No = ?";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt .setLong(1,rollnumber);
			
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
	
	public static String save(User u) {
		String status = " ";
		try {
			Connection con=getConnection();
			String query1 = "SELECT Grade FROM stu_details WHERE Roll_No = ?";
			PreparedStatement psmt = con.prepareStatement(query1);
			
			psmt.setLong(1,u.getRoll_No());
			
			ResultSet rs = psmt.executeQuery();
			 
            while (rs.next()) {
                
                 status = rs.getString(1);
            }
			
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	
	public static List<User> getUpdate(long rnumber)
	{
		List<User> list = new ArrayList<User>();//this homogeneous container will store data present in User
		try
		{
			Connection con=getConnection();
			String query="SELECT * FROM stu_details WHERE Roll_No = ?;";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setLong(1,rnumber);
			
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
	
	public static int update(User u) {
		int status = 0;
		try {
			Connection con=getConnection();
			String query1 = "update stu_details set Name= ?,Dept = ? ,Sub1_Mark =?,Sub2_Mark =?,Sub3_Mark =?,Total = ?,Grade= ? where Roll_No =? ;";
			PreparedStatement psmt = con.prepareStatement(query1);
			
			
			psmt.setString(1, u.getName());
			psmt.setString(2, u.getDept());
			psmt.setInt(3, u.getSub1_Mark());
			psmt.setInt(4, u.getSub2_Mark());
			psmt.setInt(5, u.getSub3_Mark());
			psmt.setInt(6, u.getTotal());
			psmt.setString(7,u.getGrade());
			psmt.setLong(8,u.getRoll_No());
			
			
			

			status = psmt.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
}
