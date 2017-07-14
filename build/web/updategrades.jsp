<%-- 
    Document   : updategrades
    Created on : 2 Jun, 2017, 4:08:48 PM
    Author     : hp1
--%>


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
           PreparedStatement ps= con.prepareStatement("update marks set clas=?,hindi=?,english=?,maths=?,science=?,sscience=? where rollno=?");

           ps.setString(1,clas);
           ps.setString(2,hindi);
           ps.setString(3,english);
           ps.setString(4,maths);
           ps.setString(5,science);
           ps.setString(6,sscience);
           ps.setString(7,rollno);



           int i= ps.executeUpdate();
           if(i>0)
               {
                    out.println("<h1><center>Updated Sucessfully </center></h1>");


               }
           else
               {

                    response.sendRedirect("editgrades.jsp");

               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>

