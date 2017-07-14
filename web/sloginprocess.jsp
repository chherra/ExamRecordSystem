<%-- 
    Document   : sloginprocess
    Created on : 3 Jun, 2017, 3:59:04 PM
    Author     : hp1
--%>

<%@page import="java.sql.*"%>
<%
    try
       {
            String username=request.getParameter("username");
            String userpass=request.getParameter("userpass");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ExamRecord","root","123");
            PreparedStatement ps=con.prepareStatement("select * from student where username='"+username+"' and userpass='"+userpass+"'");
            ResultSet rs=ps.executeQuery();


                if(rs.next())
                {
                       session.setAttribute("uname",username);
 %>
 <jsp:forward page="shome.jsp"></jsp:forward>
 <%
    }

    else
         {
                    request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
        }
                con.close();
     }
            catch(Exception e)
            {
                e.printStackTrace();
             }
 %>




