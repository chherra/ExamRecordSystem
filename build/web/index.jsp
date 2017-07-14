<%-- 
    Document   : index
    Created on : 23 May, 2017, 11:26:24 AM
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
					<h2>Sign in</h2>
				</div>
				<img src="images/banner.jpg" alt="" />

			</div>

                            <div id="nav">
				<!---	<ul>
						<li class="first">
							<a href="home.jsp">Home</a>
						</li>
						<li>
							<a href="generalinfo.jsp">New Registration</a>
						</li>
						<li>
							<a href="modify.jsp">Modify Detail</a>
						</li>
						<li>
							<a href="ahome.jsp">Administrator</a>
						</li>

						<li>
							<a href="contactus.jsp">Contact us</a>
						</li>
					</ul> --->
                                        <br class="clear" />
				</div>

				



				<%
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
			
     <div id="main">
		<center><a href="admin.jsp"><font style="color: navy; ">Login As Administrator</font></a></center>
	<div id="sidebar">
					<div class="box">

					<form method="post" action="floginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B> Faculty Login </B></td></tr>
					<tr><td><br></td></tr>
					
					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					</table>
					</form>
						</div>
				</div>
			</div>
                     
            <div id="rightbar">
					<div class="box">

					<form method="post" action="sloginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B> Student Login </B></td></tr>
					<tr><td><br></td></tr>

					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					</table>
					</form>
					</div>
				</div><br class="clear" />
	



			<div id="header">
					<h4>
						
					</h4>
			</div>

</div>
	</body>
</html>