<%-- 
    Document   : marksheetprocess
    Created on : 2 Jun, 2017, 4:20:05 PM
    Author     : hp1
--%>




<%@ page import="java.sql.*"%>
<html>
    <head>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
        function cal(percent)
    {
        var grade;
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
        document.write("<td>"+grade+"</td>");
   }

    </script>
       <style>
       .two {
  border-collapse: collapse;
  width:100%;
 
}
.two th,
.two td {
  border: 1px solid #000;
  padding: 10px 15px;
  font-size: 20px;
}

              


       </style>
    </head>
    <body style="text-align:center;">
        <br>
        <input type="button" value="Print" id="btnPrint"  style="font-size:25px; "/>
        <br><br>
         <div id="dvContainer">
        <div style="width:1000px; height:900px; padding:20px; text-align:center; border: 10px solid #787878; ">

    <div id="one" style="width:1000px; height:60px; padding:20px;">
        <div id="left" style="width:700px; float:left;"> <span style="font-size: 50px; font-weight: bold; text-align:left;"><br>Jaya International High School</span><span style="font-size: 30px; font-weight: bold;"><br>Shastri Nagar, Jaipur Contact No:0141-233466<br> Session:2016-2017<br><br><br></span></div><div id="right" style="width:300px; float:right;"><img src="images/logo.jpg" align="right" alt=""/></div>
    </div>
        <form method="post" name="form" style=" margin: 0 auto; width:1000px;">
           
             <br>
           
           
                
<%


try
   {
       String rollno=request.getParameter("rollno");
       String clas=request.getParameter("clas");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
       PreparedStatement ps=con.prepareStatement("select * from student inner join marks on student.rollno=marks.rollno and student.clas=marks.clas where marks.rollno='"+rollno+"' and marks.clas='"+clas+"' ");
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
           int a=Integer.parseInt(rs.getString("hindi"));
           int b=Integer.parseInt(rs.getString("english"));
           int c=Integer.parseInt(rs.getString("maths"));
           int d=Integer.parseInt(rs.getString("science"));
           int e=Integer.parseInt(rs.getString("sscience"));
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
          <table  cellSpacing='0' cellPadding='0' border="0" border-collapse:collapse  style="width:100%" >
          <tr style="font-size:20px; padding-right: 0px;"><th scope="row">Name: </th><td style="text-align:left" ><%=rs.getString("firstname")+" "+rs.getString("lastname")%></td><th scope="row">Class: </th><td><%=rs.getString("clas")%></td><th scope="row">RollNo: </th><td><%=rs.getString("rollno")%></td>
              <tr><td><br></td></tr>
          <tr style="font-size:20px;"><th scope="row">Father Name: </th><td><%=rs.getString("fname")%></td><th scope="row">Mother Name: </th><td><%=rs.getString("mname")%></td><th scope="row">Date Of Birth: </th><td><%=rs.getString("dob")%></td>
              <tr><td><br></td></tr>
              <tr><td><br></td></tr>
         
          
          </table>
          <table class="two">
              <tr>
                <th scope="col">S.N</th>
                <th scope="col">SUBJECT</th>
                <th scope="col">MAXIMUM MARKS</th>
                <th scope="col">MARKS OBTAINED</th>
                <th scope="col">GRADE</th>
              </tr>
          <tr>
              <td>1</td>
              <td>Hindi: </td>
              <td>100</td>
              <td><%=rs.getString("hindi")%></td>
              <script type="text/javascript">var x=cal(<%=rs.getString("hindi")%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
           <tr>
              <td>2</td>
              <td>English: </td>
              <td>100</td>
              <td><%=rs.getString("english")%></td>
              <script type="text/javascript">var x=cal(<%=rs.getString("english")%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
           <tr>
              <td>3</td>
              <td>Maths: </td>
              <td>100</td>
              <td><%=rs.getString("maths")%></td>
              <script type="text/javascript">var x=cal(<%=rs.getString("maths")%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
           <tr>
              <td>4</td>
              <td>Science: </td>
              <td>100</td>
              <td><%=rs.getString("science")%></td>
              <script type="text/javascript">var x=cal(<%=rs.getString("science")%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
           <tr>
              <td>5</td>
              <td>Social Science: </td>
              <td>100</td>
              <td><%=rs.getString("sscience")%></td>
                <script type="text/javascript">var x=cal(<%=rs.getString("sscience")%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
          <tr>
              <td><br></td>
              <td><br></td>
              <td><br></td>
              <td><br></td>
              <td><br></td>
          </tr>
           <tr>
              <th  scope="row"colspan="2">GRAND TOTAL</td>
              <td>500</td>
              <td><%=total%></td>
               <script type="text/javascript">var x=cal(<%=percent%>);
                   console.log("<td>"+x+"</td>");
               </script>
          </tr>
          
        
          
         
          

          


<%
    }
%>
            </table>
            <br><br><br><br><br><br>
            <table style="width:100%">
                <tr>
                <th style="font-size:25px;">Class teacher</th>
                <td><br></td>
                <td><br></td>
                <td><br></td>
                <th style="font-size:25px;">Principle</th>
                <tr>
                <tr>
                <th style="font-size:20px;">(signature)</th>
                <td><br></td>
                <td><br></td>
                <td><br></td>
                <th style="font-size:20px;">(signature)</th>
                <tr>
            </table>
           
            
</div></div>

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





