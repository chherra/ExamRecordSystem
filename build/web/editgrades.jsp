<%-- 
    Document   : editgrades
    Created on : 2 Jun, 2017, 4:01:33 PM
    Author     : hp1
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>
<%
    String rollno=request.getParameter("rollno");

    try
      {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Examrecord","root","123");
        PreparedStatement ps=con.prepareStatement("select * from marks where rollno='"+rollno+"'");
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
							<a href="addstudent.jsp">Add Student</a>
						</li>
						<li>
							<a href="findstudent.jsp">Find Student</a>
						</li>
						<li>
							<a href="showstudent.jsp">Show List</a>
						</li>

                                                <li>
							<a href="addmarks.jsp">Add Marks</a>
						</li>
                                                <li>
							<a href="showgrades.jsp">Show Grades</a>
						</li>
                                                <li>
							<a href="showmarksheet.jsp">Show MarkSheet</a>
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





     <div id="main" >



                                            <form action="updategrades.jsp" method="post">


                                              <table>
                                                  <tr><td style=" font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 5px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff;">Add Marks:</td></tr>
                                                    <tr><td><br></td></tr>
                                                    <tr><td>Roll No:  </td><td style="padding-right:30px;"><input type="text" name="rollno" value="<%=rs.getString(1)%>"/>
                                                         <td>Class:  </td><td><select name="clas">
                                                                                    <option><%=rs.getString(2)%></option>
                                                                                    <option>1st</option>
                                                                                    <option>2nd</option>
                                                                                    <option>3rd</option>
                                                                                    <option>4th</option>
                                                                                    <option>5th</option>
                                                                                    <option>6th</option>
                                                                                    <option>7th</option>
                                                                                    <option>8th</option>
                                                                                    <option>9th</option>
                                                                                    <option>10th</option>
                                                                                    <option>11th</option>
                                                                                    <option>12th</option>

                                                                            </select>
                                                                            </td>
                                                    </tr>
                                                            <tr><td><br></td></tr>

                                                    <tr><td>Hindi:  </td><td style="padding-right:30px;"><input type="text" name="hindi" id="h" value="<%=rs.getString(3)%>"/><td>English:  </td><td style="padding-right:30px;"><input type="text" name="english" id="e" value="<%=rs.getString(4)%>"/></tr>
                                                            <tr><td><br></td></tr>

                                                     <tr><td>Maths:  </td><td style="padding-right:30px;"><input type="text" name="maths" id="m" value="<%=rs.getString(5)%>"/><td>Science:  </td><td style="padding-right:30px;"><input type="text" name="science" id="s" value="<%=rs.getString(6)%>"/></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Social Science:  </td><td style="padding-right:30px;"><input type="text" name="sscience" id="ss" value="<%=rs.getString(7)%>"/></tr>
                                                            <tr><td><br></td></tr>



                                                    <tr><td></td><td><input type="submit" value="Update" style="font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 2px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff; "></td></tr>
                                                             <tr><td><br></td></tr>

                                                </table>
                                            </form>









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