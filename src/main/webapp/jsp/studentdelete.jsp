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
<title> Student Information </title>

<script>
	function display(trno) {
		var status = confirm("Do you want to delete the record for Phone number: " + trno);
		if (status) 
		{
			fetch('http://localhost:8080/TechStreet-Application/ServletController', 
				{
				method: 'POST',
				body: new URLSearchParams({
					'action': 'delete',
					'phone': trno
				})
			})
			.then(response => response.text())
			.then(data => {
				if (data.trim() == 'Failed') {
					alert("Server is Down...Unable to Delete Record");
				} else if (data.trim() == 'Deleted') {
					alert("Record Deleted Successfully: " + trno);
					var tr = document.getElementById("row_" + trno);
					tr.remove();
				} else if (data.trim() == 'NotExist') {
					alert("Record not Found for Phone Number: " + trno);
				} else {
					alert("Unable to Delete Record for Phone Number: " + trno);
				}
			})
			.catch(error => console.error("Error:", error));
		}
	}
</script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
   <%@ include file= "../component/css.jsp" %>
<body>
<%@ include file="../component/adminNavbar.jsp" %>


<div class="container" style="margin-top: 10px;">
		<h2 class="text-center mb-3"><strong>Student Information</strong></h2>

		<div class="mb-3 col-4 ms-auto">
			<form class="d-flex mt-3" role="search" >
				<input class="form-control me-2" type="search" name="phone" value="<%= request.getParameter("phone") == null ? "" : request.getParameter("phone") %>" placeholder="Phone Number" aria-label="Search">
				<button class="btn btn-success me-2" type="submit" name="action" value="Search">Search</button>
				<button class="btn btn-success me-2" type="submit" name="action" value="Refresh">Refresh</button>
			</form>
		</div>

		<div class="d-flex justify-content-center">
			<table class="table table-hover text-center w-95 table-info  table-sm table-bordered border-primary">
				<thead>
					<tr class="table-primary">
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Username</th>
						<th scope="col">Password</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<%
						Connection con = null;
						PreparedStatement ps = null;
						ResultSet rs = null;
						String URL = "jdbc:postgresql://localhost:5432/techstreet";
						String USERNAME = "root";
						String PASSWORD = "root@123";

						String searchPhone = request.getParameter("phone");
						String refresh = request.getParameter("action");
						try {
							Class.forName("org.postgresql.Driver");
							con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

							if (searchPhone != null && !"".equals(searchPhone)) {
								
								// This query for searchPhone number 
								ps = con.prepareStatement("SELECT * FROM student_info WHERE phone = ?");

							    Long phno = Long.parseLong(searchPhone); 
							    ps.setLong(1, phno);
							} 
							else if(refresh != null && !"".equals(refresh))
							{
								
								// This query to display all students
								ps = con.prepareStatement("SELECT * FROM student_info");
							}else{
								
								// This query to display all students
								ps = con.prepareStatement("SELECT * FROM student_info");
							}

							rs = ps.executeQuery();

							boolean found = false;
							while (rs.next()) 
							{
								found = true;
						    	Long phone = rs.getLong("phone");
					%>
					<tr id="row_<%=phone%>">
						<td><%=rs.getString("name")%></td>
						<td><%=rs.getString("email")%></td>
						<td><%=phone%></td>
						<td><%=rs.getString("username")%></td>
						<td><%=rs.getString("password")%></td>
						<td>
							<button type="button" class="btn btn-danger" onclick="display('<%=phone%>')">Delete</button>
						</td>
					</tr>
					<%
							}

							if (!found) {
					%>
					<tr>
						<td colspan="6" class="text-center">No records found for the phone number: <%= searchPhone %></td>
					</tr>
					<%
							}
						} catch (Exception e) {
							e.printStackTrace();
						} finally {
							if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
							if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
							if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
						}
					%>
				</tbody>
			</table>
		</div>
	</div>



</body>
<!-- <%@ include file="../component/footer.jsp" %>    -->
</html>