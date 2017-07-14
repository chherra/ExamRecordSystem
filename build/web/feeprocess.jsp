<%-- 
    Document   : feeprocess
    Created on : 3 Jun, 2017, 4:23:56 PM
    Author     : hp1
--%>

<%@ page import="java.sql.*"%>
<html>
    <head>

    </head>
    <body>
        <br>
        <form method="post" name="form">
            <table border='5' cellspacing=5 cellpadding=2 id='myTable'>
                <tr><th>Roll No</th><th> Name</th><th>Father's Name</th><th>Class</th><th>Total Fee</th><th>Deposit</th><th>Due</th></tr>
<%
try
   {
        String rollno=request.getParameter("rollno");
        String clas=request.getParameter("clas");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
       PreparedStatement ps=con.prepareStatement("select * from student where rollno='"+rollno+"' and clas= '"+clas+"'");
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
 %>
           <tr><td><%=rs.getString("rollno")%></td>
          <td><%=rs.getString("firstname")+" "+rs.getString("lastname")%></td>
           <td><%=rs.getString("fname")%></td>
          <td><%=rs.getString("clas")%></td>
          <td><%=rs.getString("totfee")%></td>
          <td><%=rs.getString("deposit")%></td>
          <td><%=rs.getString("due")%></td>
          

          </tr>;


<%
    }
%>
            </table>
<%
       con.close();
     }
     catch(Exception e)
     {
         e.printStackTrace();
      }
%>
</form>
    </body>
</html>




