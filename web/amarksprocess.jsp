<%-- 
    Document   : amarksprocess
    Created on : 2 Jun, 2017, 3:33:36 PM
    Author     : hp1
--%>

<%@ page isELIgnored="false" %>
<%@ page import="java.sql.*"%>
<%try
        {

           String rollno=request.getParameter("rollno");
           String clas=request.getParameter("clas");
           String hindi=request.getParameter("hindi");
           String english=request.getParameter("english");
           String maths=request.getParameter("maths");
           String science=request.getParameter("science");
           String sscience=request.getParameter("sscience");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
           PreparedStatement ps= con.prepareStatement("insert into marks (rollno,clas,hindi,english,maths,science,sscience) values(?,?,?,?,?,?,?)");
           ps.setString(1,rollno);
           ps.setString(2,clas);
           ps.setString(3,hindi);
           ps.setString(4,english);
           ps.setString(5,maths);
           ps.setString(6,science);
           ps.setString(7,sscience);


           int i= ps.executeUpdate();

           if(i>0)
               {

                    out.println("<h1><center>Added  Sucessfully</center></h1>");


               }
           else
               {

                    response.sendRedirect("addmarks.jsp");
               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>