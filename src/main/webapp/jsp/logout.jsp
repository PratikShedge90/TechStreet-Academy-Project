<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>   
 
<%
         HttpSession lastsession = request.getSession(false);

         if(lastsession!=null)
         {
        	 lastsession.invalidate();
         }
         response.sendRedirect("../jsp/index.jsp");
  
%>
	