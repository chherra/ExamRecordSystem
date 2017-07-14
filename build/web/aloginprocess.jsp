<%-- 
    Document   : aloginprocess
    Created on : 24 May, 2017, 9:47:38 PM
    Author     : hp1
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%
		String username=getServletContext().getInitParameter("Username");
		String password=getServletContext().getInitParameter("Password");

if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password))
{
   
    session.setAttribute("uname",username);
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<%
}

else{
request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");

%>
<jsp:forward page="admin.jsp"></jsp:forward>
<%
}
%>


