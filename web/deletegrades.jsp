<%-- 
    Document   : deletegrades
    Created on : 2 Jun, 2017, 4:00:18 PM
    Author     : hp1
--%>

<%@page import="java.sql.*"%>
<%
   try
      {
        String rollno=request.getParameter("rollno");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
        PreparedStatement ps= con.prepareStatement("delete from marks where rollno="+rollno+"");
        int i=ps.executeUpdate();
        if(i>0)
            out.println("<h1><center>Deleted Sucessfully </center></h1>");
        else
            {
                response.sendRedirect("showgrades.jsp");
            }
       con.close();
       }
       catch(Exception e)
        {
           e.printStackTrace();
        }
  %>
