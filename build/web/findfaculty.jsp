<%-- 
    Document   : findfaculty
    Created on : 27 May, 2017, 10:06:35 AM
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
                                            <form action="ffacultyprocess.jsp" method="post">
                                              <table>
                                                   
                                                    <tr><td>Username:  </td><td><input type="text" name="username"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td></td><td><input type="submit" value="Find" style="padding: 2"></td></tr>
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

