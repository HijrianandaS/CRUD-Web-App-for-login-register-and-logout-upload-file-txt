<%
	if(session.getAttribute("user")==null){
		response.sendRedirect("login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Show Database Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
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
.button3 {background-color: #798777;}		

.btn{
	background-color: #798777;
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
<br><br><br>
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
		<div class="container">
			<div  class="collapse navbar-collapse" id="navbarResponsive">
				
				<h2 align="center"> <%="Welcome! : " %> <c:out value='${record.username}' /></h2>
				<img class="center" src="getimage?id=<c:out value='${record.id}' />" class="center" width="80" height ="100"  border="10">
		
				<ul  class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("user") %></a></p></li>
						
					<li class="nav-item mx-0 mx-lg-1"><p hidden=><a
						class="nav-link py-3 px-0 px-lg-3 rounded"><%=session.getAttribute("id") %></a></p></li>
						
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><button  type="submit" class="button button3">Logout</button></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<br><br>
	<br><br>
	<br>
	
<div class="row">
	<div class="container">
	<form action="update" method="post">
		<fieldset class="form-group">
			<label>Upload File (.txt)</label> <input type="file" value="<c:out value='${record.file}' />" class="form-control" name="file">
		</fieldset>
				
		<c:if test="${record.file != null}">
        <fieldset class="form-group">
			<textarea name="tex" id="tex" rows="5" cols="100" style="font-family:sans-serif;font-size:1.2em;" >
			<c:out value='${record.file}' />
			</textarea>
		</fieldset>
        
        </c:if>
		<fieldset class="form-group">
			<textarea name="comment" id="comment" style="font-family:sans-serif;font-size:1em;height: 110px;width:400px;">
			<c:out value='${record.comment}' />		
			</textarea>
		</fieldset>
				
		<button type="submit" class="btn btn-success">Save</button>
	</form>
	</div>
</div>

<section>
      <div class="footer">
			<small>Bootcamp Batch 9 &copy; 2022, PT Asian Technology Solution</small>
      </div>
</section>

</body>
</html>