<%-- 
    Document   : showfaculty
    Created on : 27 May, 2017, 5:13:08 PM
    Author     : hp1
--%>

<%@ page import="java.sql.*"%>
<html>
    <head>
        <script>
            function deleteRecord(id)
            {
                var f=document.form;
                f.method="post";
                f.action='deletefaculty.jsp?id='+id;
                f.submit();
            }
             function editRecord(id)
            {
                var f=document.form;
                f.method="post";
                f.action='editfprocess.jsp?id='+id;
                f.submit();
            }
             function showRecord(username)
            {
                var f=document.form;
                f.method="post";
                f.action='ffacultyprocess.jsp?username='+username;
                f.submit();
            }
        </script>
    </head>
    <body>
        <br>
        <form method="post" name="form">
            <table border='5' cellspacing=5 cellpadding=2 id='myTable'>
                <tr><th>ID</th><th>Department</th><th>Name</th><th>Username</th><th>Mob No</th><th>Edit</th><th>Delete</th><th>General Info</th></tr>
<%
try
   {
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
       PreparedStatement ps=con.prepareStatement("select * from faculty");
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
 %>
           <tr><td><%=rs.getInt(1)%></td>
          <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(13)%></td>
          <td><input type="button" name="edit" value="Edit" style="background-color:green; font-weight:bold; color:white;" onClick="editRecord(<%=rs.getInt(1)%>)" </td>
          <td><input type="button" name="delete" value="Delete" style="background-color:green; font-weight:bold; color:white;" onClick="deleteRecord(<%=rs.getInt(1)%>)" </td>
          <td><input type="button" name="show" value="Show" style="background-color:green; font-weight:bold; color:white;" onClick="showRecord('<%=rs.getString(6)%>')" </td>
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



