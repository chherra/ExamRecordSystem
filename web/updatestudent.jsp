<%-- 
    Document   : updatestudent
    Created on : 1 Jun, 2017, 11:14:23 AM
    Author     : hp1
--%>

<%@ page import="java.sql.*"%>
<%try
        {
           String rollno=request.getParameter("rollno");
           String firstname=request.getParameter("firstname");
           String lastname=request.getParameter("lastname");
           String mname=request.getParameter("mname");
           String fname=request.getParameter("fname");
           String gender=request.getParameter("gender");
           String dob=request.getParameter("dob");
           String email=request.getParameter("email");
           String mob=request.getParameter("mob");
           String address=request.getParameter("address");
           String pincode=request.getParameter("pincode");
           String username=request.getParameter("username");
           String userpass=request.getParameter("userpass");
           String medium=request.getParameter("medium");
           String doa=request.getParameter("doa");
           String clas=request.getParameter("clas");
           String totfee=request.getParameter("totfee");
           String deposit=request.getParameter("deposit");
           String due=request.getParameter("due");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
           PreparedStatement ps= con.prepareStatement("update student set firstname=?,lastname=?,mname=?,fname=?,gender=?,dob=?,email=?,mob=?,address=?,pincode=?,username=?,userpass=?,medium=?,doa=?,clas=?,totfee=?,deposit=?,due=?  where rollno=?");
           
           ps.setString(1,firstname);
           ps.setString(2,lastname);
           ps.setString(3,mname);
           ps.setString(4,fname);
           ps.setString(5,gender);
           ps.setString(6,dob);
           ps.setString(7,email);
           ps.setString(8,mob);
           ps.setString(9,address);
           ps.setString(10,pincode);
           ps.setString(11,username);
           ps.setString(12,userpass);
           ps.setString(13,medium);
           ps.setString(14,doa);
           ps.setString(15,clas);
           ps.setString(16,totfee);
           ps.setString(17,deposit);
           ps.setString(18,due);
           ps.setString(19,rollno);


           int i= ps.executeUpdate();
           if(i>0)
               {
                    out.println("<h1><center>Updated Sucessfully </center></h1>");


               }
           else
               {

                    response.sendRedirect("editstudent.jsp");

               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>
