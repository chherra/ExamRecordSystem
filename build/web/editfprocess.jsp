<%-- 
    Document   : editfprocess
    Created on : 29 May, 2017, 9:35:40 AM
    Author     : hp1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%
    
    Integer id=Integer.parseInt(request.getParameter("id"));
    try
      {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
        PreparedStatement ps=con.prepareStatement("select * from faculty where id='"+id+"' ");
        out.print("<br>");
        ResultSet rs=ps.executeQuery();
        while(rs.next())
            {
%>

<html>
	<head>
		<title>
			Welcome Page
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
	<div id="outer">
	<div id="header">

				<div id="logo">
					<h1>
						Exam Record System
					</h1>
				</div>
		</div>
			<div id="banner">
				<div class="captions">
					<h2 ><a href="logout.jsp" style="color:lime;">Log Out</a></h2>
				</div>
				<img src="images/banner.jpg" alt="" />

			</div>

                            <div id="nav">
					<ul>
						<li class="first">
							<a href="addfaculty.jsp">Add Faculty</a>
						</li>
						<li>
							<a href="findfaculty.jsp">Find Faculty</a>
						</li>
						<li>
							<a href="editfaculty.jsp">Edit Faculty</a>
						</li>
						
                                                 <li>
							<a href="showfaculty.jsp">Show All</a>
						</li>


					</ul>
                                        <br class="clear" />
				</div>

				<%
					if(session.getAttribute("uname")==null)
                                        {


                                %>
                                <jsp:forward page="index.jsp"></jsp:forward>
                                <%
                                    }
                                %>





     <div id="main" style="height:343px;">

	<div id="sidebar">
					<div class="box">
                                            <form action="updatefaculty.jsp" method="post">
                                              <table>
                                                  <td><input type="hidden" name="id" value="<%=rs.getInt(1)%>"></td>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Department:</td><td><select name="department" >
                                                                                            <option><%=rs.getString(2)%></option>
                                                                                            <option>Hindi</option>
                                                                                            <option>English</option>
                                                                                            <option>Maths</option>
                                                                                            <option>Science</option>
                                                                                            <option>Social Science</option>
                                                                                            </select></td></tr>
                                                                                            <tr><td><br></td></tr>
                                                    <tr><td>Firstname:  </td><td><input type="text" name="firstname" value="<%=rs.getString(3)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Lastname:  </td><td><input type="text" name="lastname" value="<%=rs.getString(4)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Gender:  </td><td><select name="gender" >
                                                                                    <option><%=rs.getString(5)%></option>
                                                                                    <option>Male</option>
                                                                                    <option>Female</option>
                                                                                    <option>Others</option>
                                                                            </select>
                                                                            </td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Username:  </td><td><input type="text" name="username" value="<%=rs.getString(6)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Password:  </td><td><input type="password" name="userpass" value="<%=rs.getString(7)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Date of Joining:</td><td><input type="text" name="doj" value="<%=rs.getString(8)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Date of Birth:</td><td><input type="text" name="dob" value="<%=rs.getString(9)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Degree:  </td><td><input type="text" name="degree" value="<%=rs.getString(10)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Experience:  </td><td><input type="text" name="experience" value="<%=rs.getString(11)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Email Id:  </td><td><input type="email" id="email" name="email" placeholder="someone@example.com" value="<%=rs.getString(12)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Mobile No:</td><td><input type="number" name="mob" pattern=".{10}" title="Enter Valid Mob No" required value="<%=rs.getString(13)%>"></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Salary:</td><td><input type="text" name="salary" value="<%=rs.getString(14)%>"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td></td><td><input type="submit" value="Update" style="padding: 2"></td></tr>
                                                             <tr><td><br></td></tr>
                                                </table>
                                            </form>

						</div>
				</div>
			</div>

            <div id="rightbar">
					<div class="box">

					</div>
				</div><br class="clear" />

<% }}
    catch(Exception e)
    {
        e.printStackTrace();
     }
  %>


			<div id="header">
					<h4>

					</h4>
			</div>

</div>
	</body>
</html>
