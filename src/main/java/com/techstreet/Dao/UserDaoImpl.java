package com.techstreet.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.techstreet.Entities.Admin;
import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;
import com.techstreet.Util.DBUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean addUser(Student student) {
		String query = "insert into student_info(name,email,phone,username,password) values(?,?,?,?,?)";
		try(Connection con = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query))
		{
			ps.setString(1, student.getName());
			ps.setString(2, student.getEmail());
			ps.setLong  (3, student.getPhone());
			ps.setString(4, student.getUserName());
			ps.setString(5, student.getPassword());
			
			int rows = ps.executeUpdate();	
			return rows>0;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean isValidUser(Student student) {

		String query = "SELECT * FROM student_info WHERE username = ? AND password = ?";
		
		try(Connection con = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query))
		{
			ps.setString(1, student.getUserName());
			ps.setString(2, student.getPassword());
			
			ResultSet rs = ps.executeQuery();
			
			return rs.next();
		
		} catch (SQLException e) {

			e.printStackTrace();
			return false;

		}
		
	}

	@Override
	public boolean userHelp(UserHelp help) {

		String query = "INSERT INTO contact_us(name,email,mobile_no,feedback) values(?,?,?,?)";
		
		try(Connection con = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query))
		{
			ps.setString(1, help.getName());
			ps.setString(2, help.getEmail());
			ps.setLong  (3, help.getPhone());
			ps.setString(4, help.getMessage());
			
			int status = ps.executeUpdate();
			
			return status>0;
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean updateProfile(List list) {

		String query = ("UPDATE student_info SET name=?,email=?,phone=?,username=?,password=? WHERE phone = ? ");
	//	String qry   = "Delete FROM student where rno = " + srno;
	
		String name = (String)list.get(0);
		String email = (String)list.get(1);
		Long phone = Long.parseLong((String) list.get(2));
		String username = (String)list.get(3);
		String password = (String)list.get(4);

        try(Connection con = DBUtil.getConnection();
        		PreparedStatement ps = con.prepareStatement(query))
        {
        	ps.setString(1, name);
        	ps.setString(2, email);
         	ps.setLong(  3, phone);
        	ps.setString(4, username);
        	ps.setString(5, password);
            ps.setLong(6, phone);        // WHERE phone = ?
        	
        	int status = ps.executeUpdate();
        	return status>0;
        }
        catch(SQLException e)
        {
        	e.printStackTrace();
    		return false;
        }
		
		
	}

	@Override
	public boolean adminLogin(Admin admin) {

		String query = "SELECT admin.username, admin.password FROM admin WHERE username=? AND password=? ";

		try(Connection con  = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query))
		{
			ps.setString(1, admin.getUserName());
			ps.setString(2, admin.getPassword());
			
			ResultSet rs = ps.executeQuery();

			return rs.next();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean forgetPassword(Student student) {
		String query = "UPDATE student_info set password=? WHERE phone=? AND username=? ";
		
		try( Connection con = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query))
		{
			ps.setString(1, student.getPassword());
			ps.setLong(2, student.getPhone() );
			ps.setString(3, student.getUserName());
			
			int sval = ps.executeUpdate();
			return sval>0;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		   return false;
		}
	}
	
	public boolean deleteStudent(String phone) {
		String query = "DELETE FROM student_info WHERE phone = ?";
		try(Connection connection = DBUtil.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)){
			Long phone1 = Long.parseLong(phone);
			ps.setLong(1, phone1);
//			System.out.println("Executing query: " + ps.toString()); //For Debugging
			
			int status = ps.executeUpdate();
			
			return status>0;
//			if(status == 1) {
//				return true;
//			}else {
//				return false;
//			}
		
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
		
	}

}
