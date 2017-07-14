<%-- 
    Document   : afacultyprocess
    Created on : 26 May, 2017, 10:09:31 PM
    Author     : hp1
--%>

<%@ page import="java.sql.*"%>
<%try
        {
           String department=request.getParameter("department");
           String firstname=request.getParameter("firstname");
           String lastname=request.getParameter("lastname");
           String gender=request.getParameter("gender");
           String username=request.getParameter("username");
           String userpass=request.getParameter("userpass");
           String doj=request.getParameter("doj");
           String dob=request.getParameter("dob");
           String degree=request.getParameter("degree");
           String exp=request.getParameter("experience");
           String email=request.getParameter("email");
           String mob=request.getParameter("mob");
           String salary=request.getParameter("salary");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
           PreparedStatement ps= con.prepareStatement("insert into faculty(department,firstname,lastname,gender,username,userpass,doj,dob,degree,exp,email,mob,salary) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
           ps.setString(1,department);
           ps.setString(2,firstname);
           ps.setString(3,lastname);
           ps.setString(4,gender);
           ps.setString(5,username);
           ps.setString(6,userpass);
           ps.setString(7,doj);
           ps.setString(8,dob);
           ps.setString(9,degree);
           ps.setString(10,exp);
           ps.setString(11,email);
           ps.setString(12,mob);
           ps.setString(13,salary);
          


           int i= ps.executeUpdate();
           if(i>0)
               {
                    out.println("<h1><center>Registered Sucessfully</center></h1>");


               }
           else
               {
                    response.sendRedirect("ahome.jsp");
               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>