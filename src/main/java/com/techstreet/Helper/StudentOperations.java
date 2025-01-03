package com.techstreet.Helper;

import java.util.List;

import com.techstreet.Dao.UserDao;
import com.techstreet.Dao.UserDaoImpl;
import com.techstreet.Entities.Admin;
import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;

public class StudentOperations 
{
	private static UserDao userdao = new UserDaoImpl(); 
	
	public static  boolean userRegistration(Student student)
	{
		boolean status = false;
		if(    student.getName()    !=null && !"".equals(student.getName()) 
			&& student.getEmail()   !=null && !"".equals(student.getEmail())
			&& student.getPhone()   !=null && !"".equals(student.getPhone())
			&& student.getUserName()!=null && !"".equals(student.getUserName())
			&& student.getPassword()!=null && !"".equals(student.getPassword())
	      )
		{
			UserDao userdao = new UserDaoImpl();
			if(userdao.addUser(student))  
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		return status;
    }
	
	public static boolean userLogin(Student student)
	{
		boolean status=false;
	//	List<Student> list = new ArrayList<>();
		if(    student.getUserName() !=null &&  !"".equals(student.getUserName()) 
		    && student.getPassword() !=null &&  !"".equals(student.getUserName()) 
		   )
		{
			//boolean second;
			if(userdao.isValidUser(student) )
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		return status;		
	}
	
	public static boolean userContact(UserHelp help)
	{
		boolean status=false;
		if(    help.getName()!=null && !"".equals(help.getName())
			&& help.getEmail()!=null && !"".equals(help.getEmail())
			&& help.getPhone()!=null && !"".equals(help.getPhone())
			&& help.getMessage()!=null && !"".equals(help.getMessage())
		  )
			if(userdao.userHelp(help))
			{
				return status = true;
			}
			else
			{
				return status = false;
			}
		return status;
	}
	
	public static boolean updateProfile(List list)
	{
		boolean status = false;
		if(  list!=null && !"".equals(list)
	      && list.get(0)!=null && !"".equals(list.get(0))
	      && list.get(1)!=null && !"".equals(list.get(1))
	      && list.get(2)!=null && !"".equals(list.get(2))
	      && list.get(3)!=null && !"".equals(list.get(3))
	      && list.get(4)!=null && !"".equals(list.get(4))
		  )
		{
			if(userdao.updateProfile(list)  )
			{
				return true;
			}
			else
			{
				return false;
			}

		}
		
		return status;
		
	}
	
	public static boolean adminLogin(Admin admin) {
		boolean status = false;
		if(admin.getUserName()!=null && !"".equals(admin.getUserName()) &&
		   admin.getPassword()!=null && !"".equals(admin.getPassword())   )
		   {
			   if(userdao.adminLogin(admin))
			   {
				   return true;
			   }
			   else
			   {
				   return false;
			   }
		   }
		return status;	
	}
	
	public static boolean forgetPassword(Student student)
	{
		boolean status =  false;
		
		if(student.getPhone()!=null && !"".equals(student.getPhone()) &&
		   student.getUserName()!=null && !"".equals(student.getUserName()) &&	
		   student.getPassword()!=null && !"".equals(student.getPassword()) )
		{
			if(userdao.forgetPassword(student))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		return status;
		
	}
	
	public static boolean deleteStudent(String phone)
	{
		boolean status = false;
		if (phone != null && !"".equals(phone))
		{
			if (userdao.deleteStudent(phone)) 
			{
				return true;
			} else 
			{
				return false;
			}

		}
		return status;
	}
	
	
	
	public static List<Student> getAllStudents()
	{
		return null;
		
	}


	}
