<%-- 
    Document   : logout
    Created on : 26 May, 2017, 9:33:10 PM
    Author     : hp1
--%>

<%
session.setAttribute("uname",null);
session.invalidate();
response.sendRedirect("index.jsp");
%>


