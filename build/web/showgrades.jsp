<%-- 
    Document   : showgrades
    Created on : 2 Jun, 2017, 3:44:52 PM
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
                f.action='deletegrades.jsp?rollno='+rollno;
                f.submit();
            }
             function editRecord(rollno)
            {
                var f=document.form;
                f.method="post";
                f.action='editgrades.jsp?rollno='+rollno;
                f.submit();
            }

        </script>
    </head>
    <body>
        <br>
        <form method="post" name="form">
            <table border='5' cellspacing=5 cellpadding=2 id='myTable'>
                <tr><th>Roll No</th><th>Class</th><th>Hindi</th><th>English</th><th>Maths</th><th>Science</th><th>Social Science</th><th>Total</th><th>Grade</th><th>Edit</th><th>Delete</th></tr>
<%
try
   {
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
       PreparedStatement ps=con.prepareStatement("select * from marks");
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
           int a=Integer.parseInt(rs.getString(3));
           int b=Integer.parseInt(rs.getString(4));
           int c=Integer.parseInt(rs.getString(5));
           int d=Integer.parseInt(rs.getString(6));
           int e=Integer.parseInt(rs.getString(7));
           int total=a+b+c+d+e;
           int percent=(total)/5;
           String grade="";
            if(percent < 40){
                grade = "E";
        //request.setAttribute("grade", grade);
    }
    else if(percent >= 40 && percent <=44){
        grade = "D";
    }
    else if(percent >=45 && percent <=49){
        grade = "D+";
    }
    else if(percent >=50 && percent <=54){
        grade = "C-";
    }
    else if(percent >=55 && percent<=59){
        grade = "C";
    }
    else if(percent >=60 && percent <=64){
        grade = "C+";
    }
    else if(percent >=65 && percent<=69){
        grade = "B-";
    }
    else if(percent >=70 && percent <=74){
        grade = "B";
    }
    else if(percent >=75 && percent <=79){
        grade = "B+";
    }
    else if(percent >=80 && percent <=84){
        grade = "A";
    }
    else if (percent >=85 && percent <=100){
        grade = "A+";
    }

 %>
           <tr><td><%=rs.getInt(1)%></td>
          <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
          <td><%=total%></td>
          <td><%=grade%></td>
          <td><input type="button" name="edit" value="Edit" style="background-color:green; font-weight:bold; color:white;" onClick="editRecord(<%=rs.getInt(1)%>)" </td>
          <td><input type="button" name="delete" value="Delete" style="background-color:green; font-weight:bold; color:white;" onClick="deleteRecord(<%=rs.getInt(1)%>)" </td>

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




