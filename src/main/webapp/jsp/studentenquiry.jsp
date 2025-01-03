<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="jakarta.servlet.http.HttpSession" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
   <%@ include file= "../component/css.jsp" %>

<body>
<%@ include file="../component/adminNavbar.jsp" %>



<div class="container" style="margin-top: 10px;">
		<h2 class="text-center mb-3">
			<Strong>Student Query</Strong>
		</h2>

		<div class="d-flex justify-content-center">
			<table
				class="table table-hover text-center w-75 table-info  table-sm table-bordered border-primary">
				<thead>
					<tr class="table-primary">

						<th scope="col">Name</th>

						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Query</th>
						

						<!--  <th scope="col">Action</th> -->
					</tr>
				</thead>
				<tbody>

<%
    Connection con =null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    try
    {
    	Class.forName("org.postgresql.Driver");
    	
    	con = DriverManager.getConnection("jdbc:postgresql://localhost/techstreet","root","root@123");
    	
    	ps = con.prepareStatement("SELECT * FROM contact_us");
    
    	rs = ps.executeQuery();
    
  // 		boolean found = false; 

    	while(rs.next())
    	{
    		
%>
   
		   <tr>
		    	<td><%=rs.getString(1)%></td>
		    	<td><%=rs.getString(2)%></td>
		    	<td><%=rs.getLong(3)  %></td>
		    	<td><%=rs.getString(4)%></td>
           </tr>

				    
 <%
    	}
    	
    } 	
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
        finally
        {
        	try
        	{
        	   if(con!=null)
        	   {
        	    	con.close();
               }
               if(rs!=null)
        	   {
        		   rs.close();
        	   }
        	}
        	catch(Exception e)
        	{
        		e.printStackTrace();
        	}
        }
 %>


	</tbody>
			</table>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>"
</body>

<%@ include file="../component/footer.jsp" %>

</html>