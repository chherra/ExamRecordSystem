<%-- 
    Document   : ffacultyprocess
    Created on : 27 May, 2017, 10:22:37 AM
    Author     : hp1
--%>

<%@page import="java.sql.*"%>
<%
   
    String username=request.getParameter("username");
    try
       {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
        PreparedStatement ps=con.prepareStatement("select * from faculty where username='"+username+"'");
        out.print("<br>");
        ResultSet rs=ps.executeQuery();
       out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
       out.print("<tr><th>ID</th><th>Department</th><th>FirstName</th><th>LastName</th><th>Gender</th><th>UserName</th><th>Password</th><th>DOJ</th><th>DOB</th><th>Degree</th><th>Experience</th><th>Email</th><th>Mob NO</th><th>Salary</th></tr>");
       while(rs.next())
           {
                out.print("<tr><td>"+rs.getInt(1)+"</td>");
                out.print("<td>"+rs.getString(2)+"</td>");
                out.print("<td>"+rs.getString(3)+"</td>");
                out.print("<td>"+rs.getString(4)+"</td>");
                out.print("<td>"+rs.getString(5)+"</td>");
                out.print("<td>"+rs.getString(6)+"</td>");
                out.print("<td>"+rs.getString(7)+"</td>");
                out.print("<td>"+rs.getString(8)+"</td>");
                out.print("<td>"+rs.getString(9)+"</td>");
                out.print("<td>"+rs.getString(10)+"</td>");
                out.print("<td>"+rs.getString(11)+"</td>");
                out.print("<td>"+rs.getString(12)+"</td>");
                out.print("<td>"+rs.getString(13)+"</td>");
                out.print("<td>"+rs.getString(14)+"</td>");
                

                out.print("</tr>");
           }
       out.print("</table>");
       con.close();
       }
    catch(Exception e)
            {
                e.printStackTrace();
            }
%>