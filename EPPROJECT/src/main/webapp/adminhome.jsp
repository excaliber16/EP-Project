<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.User" %>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EP Project</title>
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

<h3 align="center">I am in Admin Home</h3>

Welcome <%=username%>

</body>
</html>