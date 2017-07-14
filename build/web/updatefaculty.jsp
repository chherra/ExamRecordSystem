<%-- 
    Document   : updatefaculty
    Created on : 29 May, 2017, 10:19:51 AM
    Author     : hp1
--%>


<%@ page isELIgnored="false" %> 
<%@ page import="java.sql.*"%>
<%try
        {
           Integer id=Integer.parseInt(request.getParameter("id"));

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
           PreparedStatement ps= con.prepareStatement("update faculty set department='"+department+"',firstname='"+firstname+"',lastname='"+lastname+"',gender='"+gender+"',username='"+username+"',userpass='"+userpass+"',doj='"+doj+"',dob='"+dob+"',degree='"+degree+"',exp='"+exp+"',email='"+email+"',mob='"+mob+"',salary='"+salary+"' where id="+id+" ");
          

           int i= ps.executeUpdate();
           if(i>0)
               {
                    out.println("<h1><center>Updated Sucessfully </center></h1>");


               }
           else
               {
                    
                    response.sendRedirect("editfaculty.jsp");

               }
           }
       catch(Exception e)
       {
           e.printStackTrace();
       }
%>