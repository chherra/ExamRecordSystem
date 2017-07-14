<%-- 
    Document   : addstudent
    Created on : 30 May, 2017, 6:13:23 PM
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

	
					
                                            <form action="astudentprocess.jsp" method="post">
                                              
                                                
                                              <table>
                                                  <tr><td style=" font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 5px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff;">Personal Details:</td></tr>
                                                    <tr><td><br></td></tr>
                                                    <tr><td>Roll No:  </td><td style="padding-right:30px;"><input type="text" name="rollno"/></td><td>Firstname:  </td><td style="padding-right:30px;"><input type="text" name="firstname"/></td><td>Lastname:  </td><td><input type="text" name="lastname"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    
                                                    <tr><td>Mother's Name:  </td><td style="padding-right:30px;"><input type="text" name="mname"/></td><td>Father's Name:  </td><td><input type="text" name="fname"/></td></tr>
                                                            <tr><td><br></td></tr>

                                                   

                                                    <tr><td>Gender:  </td><td style="padding-right:30px;"><select name="gender">
                                                                                    <option>Male</option>
                                                                                    <option>Female</option>
                                                                                    <option>Others</option>
                                                                            </select>
                                                                            </td> <td>Date of Birth:</td><td><input type="text" name="dob"/></td></tr>
                                                            <tr><td><br></td></tr>
                                                    <tr><td>Email Id:  </td><td style="padding-right:30px;"><input type="email" id="email" name="email" placeholder="someone@example.com"/></td><td>Mobile No:</td><td><input type="number" name="mob" pattern=".{10}" title="Enter Valid Mob No" required></td></tr>
                                                            <tr><td><br></td></tr>
                                                      <tr><td>Address:  </td><td style="padding-right:30px;"><textarea name="address"></textarea></td><td>Pincode:  </td><td><input type="text" name="pincode"/></td> </tr>
                                                            <tr><td><br></td></tr>

                                                    <tr><td style=" font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 5px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff;">Academic Details:</td></tr>
                                                    <tr><td><br></td></tr>
                                                    <tr><td>Username:  </td><td style="padding-right:30px;"><input type="text" name="username"/></td><td>Password:  </td><td style="padding-right:30px;"><input type="password" name="userpass"/></td>
                                                        <td>Medium:  </td><td><select name="medium">
                                                                             <option>Hindi</option>
                                                                             <option>English</option>
                                                        </td></tr>
                                                            <tr><td><br></td></tr>
                                                   
                                                    <tr><td>Date of Admission:</td><td style="padding-right:30px;"><input type="text" name="doa"/></td>
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
                                                                            </td></tr>
                                                            <tr><td><br></td></tr>
                                                    
                                                    <tr><td style=" font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 5px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff; ">Fee Details:</td></tr>
                                                    <tr><td><br></td></tr>
                                                    
                                                    <tr><td>Total Fee:  </td><td style="padding-right:30px;"><input type="text" name="totfee"/></td>
                                                        <td>Deposit :  </td><td style="padding-right:30px;"><input type="text" name="deposit"/></td>
                                                        <td>Due:  </td><td style="padding-right:30px;"><input type="text" name="due"/></td>
                                                    </tr>
                                                   
                                                    <tr><td><br></td></tr>
                                                    
                                                   
                                                    <tr><td></td><td><input type="submit" value="Register" style="font-weight: bold; font-size: 20px; background-color:#0a7f99;padding:5px; box-shadow:inset 0 -2px 2px 0; text-shadow:1px 1px 1px rgba(0,0,0,0.5); color: #ffffff; "></td></tr>
                                                             <tr><td><br></td></tr>
                                                </table>
                                            </form>
                               
						
				
			

            
					

					
				</div><br class="clear" />




			<div id="header">
					<h4>

					</h4>
			</div>

</div>
	</body>
</html>