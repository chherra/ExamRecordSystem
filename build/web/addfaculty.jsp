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
                                            <form action="afacultyprocess.jsp" method="post">
                                              <table>
                                                    <tr><td>Department:</td><td><select name="department">
                                                                                            <option>Select a Department</option>
                                                                                            <option>Hindi</option>
                                                                                            <option>English</option>
                                                                                            <option>Maths</option>
                                                                                            <option>Science</option>
                                                                                            <option>Social Science</option>
                                                                                            </select></td></tr>
                                                                                            <tr><td><br></td></tr>
                                                    <tr><td>Firstname:  </td><td><input type="text" name="firstname"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Lastname:  </td><td><input type="text" name="lastname"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Gender:  </td><td><select name="gender">
                                                                                    <option>Male</option>
                                                                                    <option>Female</option>
                                                                                    <option>Others</option>
                                                                            </select>
                                                                            </td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Username:  </td><td><input type="text" name="username"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Password:  </td><td><input type="password" name="userpass"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Date of Joining:</td><td><input type="text" name="doj"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Date of Birth:</td><td><input type="text" name="dob"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Degree:  </td><td><input type="text" name="degree"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Experience:  </td><td><input type="text" name="experience"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Email Id:  </td><td><input type="email" id="email" name="email" placeholder="someone@example.com"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                     <tr><td>Mobile No:</td><td><input type="number" name="mob" pattern=".{10}" title="Enter Valid Mob No" required></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Salary:</td><td><input type="text" name="salary"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td></td><td><input type="submit" value="Register" style="padding: 2"></td></tr>
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