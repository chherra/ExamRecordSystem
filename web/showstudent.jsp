<%-- 
    Document   : showstudent
    Created on : 31 May, 2017, 9:51:21 PM
    Author     : hp1
--%>


<%@ page import="java.sql.*"%>
<html>
    <head>
        <script>
            function deleteRecord(rollno)
            {
                var f=document.form;
                f.method="post";
                f.action='deletestudent.jsp?rollno='+rollno;
                f.submit();
            }
             function editRecord(rollno)
            {
                var f=document.form;
                f.method="post";
                f.action='editstudent.jsp?rollno='+rollno;
                f.submit();
            }
             function showRecord(rollno)
            {
                var f=document.form;
                f.method="post";
                f.action='fstudentprocess.jsp?rollno='+rollno;
                f.submit();
            }
        </script>
    </head>
    <body>
        <br>
        <form method="post" name="form">
            <table border='5' cellspacing=5 cellpadding=2 id='myTable'>
                <tr><th>Roll No</th><th>First Name</th><th>Last Name</th><th>Father's Name</th><th>User Name</th><th>Password</th><th>DOA</th><th>Class</th><th>Total Fee</th><th>Deposit</th><th>Due</th><th>Edit</th><th>Delete</th><th>General Info</th></tr>
<%
try
   {
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
       PreparedStatement ps=con.prepareStatement("select * from student");
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
 %>
           <tr><td><%=rs.getInt(1)%></td>
          <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(12)%></td>
          <td><%=rs.getString(13)%></td>
          <td><%=rs.getString(15)%></td>
          <td><%=rs.getString(16)%></td>
          <td><%=rs.getString(17)%></td>
          <td><%=rs.getString(18)%></td>
          <td><%=rs.getString(19)%></td>
          <td><input type="button" name="edit" value="Edit" style="background-color:green; font-weight:bold; color:white;" onClick="editRecord(<%=rs.getInt(1)%>)" </td>
          <td><input type="button" name="delete" value="Delete" style="background-color:green; font-weight:bold; color:white;" onClick="deleteRecord(<%=rs.getInt(1)%>)" </td>
           <td><input type="button" name="show" value="Show" style="background-color:green; font-weight:bold; color:white;" onClick="showRecord(<%=rs.getInt(1)%>)" </td>
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




