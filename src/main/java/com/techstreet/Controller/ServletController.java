package com.techstreet.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.techstreet.Entities.Admin;
import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;
import com.techstreet.Helper.StudentOperations;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletController")
public class ServletController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         String action = request.getParameter("action");
         
         if (action != null && !"".equals(action)) 
 		{
 			if (action.equals("registration")) 
 			{
 				Student student = new Student();
 				student.setName(request.getParameter("fullname"));
 				student.setEmail(request.getParameter("email"));
 				student.setPhone(Long.parseLong(request.getParameter("phone")));
 				student.setUserName(request.getParameter("username"));
 				student.setPassword(request.getParameter("password"));
 		
 					boolean status = StudentOperations.userRegistration(student);
 					if( status!=false && !"".equals(status))
 					{
 						response.sendRedirect("jsp/login.jsp?registration=success");
 					}
 					else
 					{
 						response.sendRedirect("jsp/register.jsp?error=1");
 					}
 			
 			}
 			else if(action.equals("login"))
 			{
 				Student student = new Student();
    			student.setUserName(request.getParameter("username"));
				student.setPassword(request.getParameter("password"));
				
				boolean status = StudentOperations.userLogin(student);
				if(status!=false && !"".equals(status))
				{
 					HttpSession hs = request.getSession(true);
 					hs.setAttribute("username", student.getUserName());
					response.sendRedirect("jsp/home.jsp");
 				}
				else
				{
					response.sendRedirect("jsp/login.jsp?error=1");
 				}
 			}
 			
			else if(action.equals("contactus"))
    		{
	 			   UserHelp help = new UserHelp(); 			 
	 			   
		    	help.setName(request.getParameter("fname"));
				help.setEmail(request.getParameter("email"));
				help.setPhone(Long.parseLong(request.getParameter("phone")));
 				help.setMessage(request.getParameter("msg"));
				
 				boolean status = StudentOperations.userContact(help);
 				if(status!=false && !"".equals(status))
 				{
					response.sendRedirect("jsp/contactus.jsp?feedback=success"); 
 				}
 				else
 				{
 					response.sendRedirect("jsp/contactus.jsp?error=2");
 				}
    		}
			
			else if(action.equals("updateprofile"))
			{
				boolean status;
				List list = new ArrayList<>();
				
				list.add(request.getParameter("fullname"));
				list.add(request.getParameter("email"));
				list.add(request.getParameter("phonenumber"));
				list.add(request.getParameter("username"));
				list.add(request.getParameter("password"));

				 status = StudentOperations.updateProfile(list);
				 if(status!=false && !"".equals(status))
				 {
					 response.sendRedirect("jsp/profile.jsp?msg=Data Upadated Sucessfully");
				 }
				 else
				 {
						response.sendRedirect("jsp/updatestudent.jsp?msg=Failed ");
				 }
			}
			else if(action.equals("adminlogin"))
			{
				Admin admin = new Admin();
				
				admin.setUserName(request.getParameter("username"));
				admin.setPassword(request.getParameter("password"));
				
				
				
				boolean status = StudentOperations.adminLogin(admin);
				if(status!=false && !"".equals(status))
				{	
					response.sendRedirect("jsp/studentInformation.jsp?login=accepted");
				}
				else
				{
					response.sendRedirect("jsp/adminlogin.jsp?error=2");
				}				
			}
			else if(action.equals("forgetpassword"))
			{
				Student student = new Student();
				
				student.setPhone(Long.parseLong(request.getParameter("phonenumber")));
				student.setUserName(request.getParameter("username"));
				student.setPassword(request.getParameter("password"));
				
				boolean status = StudentOperations.forgetPassword(student);
				if(status!=false && !"".equals(status))
				{
					response.sendRedirect("jsp/login.jsp?password=success");
				}
				else
				{
					response.sendRedirect("jsp/forgotPassword.jsp?error=101");
				}
			}
 			
			else if("delete".equals(action)) 
			{
				String phone = (request.getParameter("phone"));
				boolean delete =  StudentOperations.deleteStudent( phone);
				if(delete) 
				{
				    response.getWriter().write("Deleted");
				} 
				else
				{
				    response.getWriter().write("Failed");
				}
				
			}
 			   
	}
	
  }
}

