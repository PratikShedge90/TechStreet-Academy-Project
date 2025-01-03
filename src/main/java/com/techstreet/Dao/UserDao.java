package com.techstreet.Dao;

import java.util.List;

import com.techstreet.Entities.Admin;
import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;

public interface UserDao {

	boolean addUser(Student student);

	boolean isValidUser(Student student);

	boolean userHelp(UserHelp help);
	
	boolean updateProfile(List list);
	
	boolean adminLogin(Admin admin);
	
	boolean forgetPassword(Student student);
	
	boolean deleteStudent(String phone);

}
