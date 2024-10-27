<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@page import="com.klef.ep.models.Admin"%>
<!DOCTYPE html>
<html>
<head>
<title>EP PROJECT</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>

<body>


 <h2 align="center">Travel Service Management Project</h2>
  <hr color="black"/><hr color="black"/>
  <br/>

<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewallus.jsp">View All Users</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;

<br>

<h2 align="center"><u>View All Users</u></h2>
<table align="center"  border=2>
<tr>
<th>ID</th>
<th>Full Name</th>
<th>Gender</th>
<th>Nationality</th>
<th>Date of Journey</th>
<th>Email Address</th>
<th>Contact No</th>
<th>Action</th>
</tr>
<%
InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");

List<User> uslist = adminService.ViewAllUsers();

for(User us : uslist)
{
	  %>
	    <tr>
	    	  <td><%=us.getId()%></td>
	    	  <td><%=us.getName()%></td>
	    	  <td><%=us.getGender()%></td>
	    	  <td><%=us.getNationality()%></td>
	    	   <td><%=us.getDoj()%></td>
	    	  <td><%=us.getEmail()%></td>    
	    	  <td><%=us.getContactno()%></td>	   
	    	   <td><a href="deleteus.jsp?id=<%=us.getId()%>">Delete</a></td>	
	    </tr>
	  <%
}

%>
</table>


</body>
</html>