package Student_Grade_Management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TeacherDao 
{
	public static Connection getConnection() 
	{
		Connection con = null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dburl = "jdbc:mysql://localhost:3306/teacher_details?user=root&password=root";
			con = DriverManager.getConnection(dburl);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public static boolean authenticate(String name, String password) 
	{
        boolean isAuthenticated = false;
        
        try 
        {
            Connection con = getConnection();
            String query = "SELECT * FROM tech_details WHERE Teacher_Name=? AND Password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, password);
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
}


