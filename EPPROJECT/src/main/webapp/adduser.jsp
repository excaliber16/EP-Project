<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%

InitialContext context = new InitialContext();
UserService userService = (UserService) context.lookup("java:global/EPPROJECT/UserServiceImpl!com.klef.ep.services.UserService");

String name = request.getParameter("name");
String gender = request.getParameter("gender");
String nationality = request.getParameter("nationality");
String doj = request.getParameter("doj");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String contact = request.getParameter("contact");


User us = new User();
us.setName(name);
us.setGender(gender);
us.setNationality(nationality);
us.setDoj(doj);
us.setEmail(email);
us.setPassword(pwd);
us.setContactno(contact);
userService.addUser(us);

response.sendRedirect("addussuccess.jsp");


%>