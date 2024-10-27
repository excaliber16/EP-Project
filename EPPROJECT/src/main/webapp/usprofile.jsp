<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.User" %>
    <%
    User us= (User)session.getAttribute("us"); // emp is session attribute
    if(us == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travel</title>
<link type="text/css"  rel="stylesheet"  href="style.css"/>
</head>
<body>

 <h2 align="center">Travel Service Management Project</h2>
  <hr color="black"/><hr color="black"/>
  <br/>

<a href="ushome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="usprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="uslogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;

<br>

<h3 align="center">I am in User Profile</h3>

Name <%=us.getName()%><br>
Email Id: <%=us.getEmail()%><br>
Date Of Joining <%=us.getDoj()%><br>
Contact No<%=us.getContactno()%><br>

</body>
</html>