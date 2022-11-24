<%
	if(session.getAttribute("user")==null){
		response.sendRedirect("login.jsp");
	}
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Your Home Page</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>	
nav{
	background-color: #A9AF7E;
}
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  float: right;
}
.button1 {
	background-color: #2C3639;
	position: absolute;
  	left: 150px;
  	top: 250px;
}	
.button2 {
	background-color: #2C3639;
	position: absolute;
  	right: 150px;
  	top: 250px;
}
.button3 {background-color: #798777;}	
h1 {
  text-align: left;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 125;
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   padding: 10px;
   background-color: black;
   color: white;
   text-align: center;
 }
</style>	
</head>
<body>

<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbarResponsive"> 
		
			<h2 align="center"> <%="Welcome! : " %> <c:out value='${record.username}' /></h2>
			 
			<img class="center" src="getimage?id=<c:out value='${record.id}' />" class="center" width="100" height ="100"  border="10">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("user") %></a></p></li>
						
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("id") %></a></p></li>
					
					<li class="nav-item mx-0 mx-lg-1"><a  style="float: right;" 
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><button  type="submit" class="button button3">Logout</button></a></li>
					
				</ul>
				
		</div>
	</div>
</nav>
	
	<br><br><br><br><br><br><br><br>

	<div class="sec">
		<form style="float: left;" method="post" action="view">
							<input type="hidden" name="id" value="<c:out value='${record.id}' />" />
							<input type="hidden" name="name" value="<c:out value='${record.name}' />" />
							<input type="hidden" name="email" value="<c:out value='${record.email}' />" />
							<input type="hidden" name="username" value="<c:out value='${record.username}' />" />
		<button class="button button1">Add New Record</button></form>

		<form style="float: right;" method="post" action="viewme">
							<input type="hidden" name="id" value="<c:out value='${record.id}' />" />
							<input type="hidden" name="name" value="<c:out value='${record.name}' />" />
							<input type="hidden" name="email" value="<c:out value='${record.email}' />" />
							<input type="hidden" name="username" value="<c:out value='${record.username}' />" />
		<button class="button button2">View previous Record</button></form>
  	</div>
  
	<section>
      <div class="footer">
			<small>Bootcamp Batch 9 &copy; 2022, PT Asian Technology Solution</small>
      </div>
	</section>
	
</body>
</html>
