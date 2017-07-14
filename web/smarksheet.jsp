<%-- 
    Document   : smarksheet
    Created on : 3 Jun, 2017, 4:18:19 PM
    Author     : hp1
--%>


<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
							<a href="smarksheet.jsp">Show Marksheet</a>
						</li>
						<li>
							<a href="showfee.jsp">Fee Details</a>
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
             <table align="right">

			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">Last Date of fee Submission is 15/10/17
															     After that You'll have to pay 50 rupees
															     per day as a fine and your tutuion fee
															     exclusively </marquee></div></td></tr></table>

	<div id="sidebar">
					<div class="box">
                                            <form action="marksheetprocess.jsp" method="post">
                                              <table>

                                                    <tr><td>Roll No:  </td><td><input type="text" name="rollno"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr> <td>Class:  </td><td><select name="clas">

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
                                                             </td></tr>
                                                        <tr><td><br></td></tr>
                                                    <tr><td></td><td><input type="submit" value="Show" style="padding: 2"></td></tr>
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




			<div id="header">
					<h4>

					</h4>
			</div>

</div>
	</body>
</html>



