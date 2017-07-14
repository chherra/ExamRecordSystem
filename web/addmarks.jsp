<%-- 
    Document   : addmarks
    Created on : 1 Jun, 2017, 8:57:45 PM
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



                                            <form action="amarksprocess.jsp" method="post">


                                              <table>
                                                  <tr><td style=" font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 5px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff;">Add Marks:</td></tr>
                                                    <tr><td><br></td></tr>
                                                    <tr><td>Roll No:  </td><td style="padding-right:30px;"><input type="text" name="rollno"/>
                                                         <td>Class:  </td><td><select name="clas">
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

                                                    <tr><td>Hindi:  </td><td style="padding-right:30px;"><input type="text" name="hindi" id="h"/><td>English:  </td><td style="padding-right:30px;"><input type="text" name="english" id="e"/></tr>
                                                            <tr><td><br></td></tr>

                                                     <tr><td>Maths:  </td><td style="padding-right:30px;"><input type="text" name="maths" id="m"/><td>Science:  </td><td style="padding-right:30px;"><input type="text" name="science" id="s"/></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Social Science:  </td><td style="padding-right:30px;"><input type="text" name="sscience" id="ss"/></tr>
                                                            <tr><td><br></td></tr>
                                                      
                                                     
                                                            
                                                    <tr><td></td><td><input type="submit" value="Add" style="font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 2px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff; "></td></tr>
                                                             <tr><td><br></td></tr>
                                                             
                                                </table>
                                            </form>
                                            <








				</div><br class="clear" />




			<div id="header">
					<h4>

					</h4>
			</div>

</div>
	</body>
</html>