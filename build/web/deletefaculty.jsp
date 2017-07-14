<%-- 
    Document   : deletefaculty
    Created on : 30 May, 2017, 9:32:24 AM
    Author     : hp1
--%>

<%@page import="java.sql.*"%>
<%
   try
      {
        Integer id=Integer.parseInt(request.getParameter("id"));
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
        PreparedStatement ps= con.prepareStatement("delete from faculty where id="+id+"");
        int i=ps.executeUpdate();
        if(i>0)
            out.println("<h1><center>Deleted Sucessfully </center></h1>");
        else
            {
                response.sendRedirect("showfaculty.jsp");
            }
       con.close();
       }
       catch(Exception e)
        {
           e.printStackTrace();
        }
  %>





