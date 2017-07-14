<%-- 
    Document   : fhome
    Created on : 30 May, 2017, 5:02:07 PM
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






     <div id="main" style="height:343px;">
         <center>
             <%
					if(session.getAttribute("uname")!=null){
					out.print("<font size='10' color='black' m>");
					//out.print("Welcome "+session.getAttribute("uname"));
					out.print("</font>");
					}
              %>

         </center>
	<div id="sidebar">
					<div class="box">


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