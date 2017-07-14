<%-- 
    Document   : astudentprocess
    Created on : 31 May, 2017, 11:30:13 AM
    Author     : hp1
--%>
<%@ page isELIgnored="false" %>
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
           PreparedStatement ps= con.prepareStatement("insert into student (rollno,firstname,lastname,mname,fname,gender,dob,email,mob,address,pincode,username,userpass,medium,doa,clas,totfee,deposit,due) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           ps.setString(1,rollno);
           ps.setString(2,firstname);
           ps.setString(3,lastname);
           ps.setString(4,mname);
           ps.setString(5,fname);
           ps.setString(6,gender);
           ps.setString(7,dob);
           ps.setString(8,email);
           ps.setString(9,mob);
           ps.setString(10,address);
           ps.setString(11,pincode);
           ps.setString(12,username);
           ps.setString(13,userpass);
           ps.setString(14,medium);
           ps.setString(15,doa);
           ps.setString(16,clas);
           ps.setString(17,totfee);
           ps.setString(18,deposit);
           ps.setString(19,due);

           int i= ps.executeUpdate();
           
           if(i>0)
               {
                   
                    out.println("<h1><center>Registered Sucessfully</center></h1>");


               }
           else
               {
                     
                    response.sendRedirect("fhome.jsp");
               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>