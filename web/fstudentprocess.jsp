<%-- 
    Document   : fstudentprocess
    Created on : 31 May, 2017, 8:49:26 PM
    Author     : hp1
--%>

<%@page import="java.sql.*"%>
<%

    String rollno=request.getParameter("rollno");
    try
       {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
        PreparedStatement ps=con.prepareStatement("select * from student where rollno='"+rollno+"'");
        out.print("<br>");
        ResultSet rs=ps.executeQuery();
       out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
       out.print("<tr><th>Roll No</th><th>First Name</th><th>LastName</th><th>Mother's Name</th> <th>Father's Name</th><th>Gender</th><th>DOB</th><th>Email</th><th>Mob</th><th>Address</th><th>Pincode</th><th>UserName</th><th>Password</th><th>Medium</th><th>DOA</th><th>Class</th><th>Total Fee:</th><th>Deposit</th><th>Due</th></tr>");
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
                out.print("<td>"+rs.getString(15)+"</td>");
                out.print("<td>"+rs.getString(16)+"</td>");
                out.print("<td>"+rs.getString(17)+"</td>");
                out.print("<td>"+rs.getString(18)+"</td>");
                out.print("<td>"+rs.getString(19)+"</td>");


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
