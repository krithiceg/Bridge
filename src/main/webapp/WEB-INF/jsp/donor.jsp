<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.List"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Acceptor Page</title>
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				<legend><b>People willing to accept:</b></legend>
				<form class="form-horizontal" method="post" name="acceptorForm" id="acceptorForm">
				<div id = "placeholder" >
					
				</div>
					<c:forEach items="${acceptors}" var="acceptor">
					    
					        <p><b>Name: </b><c:out value="${acceptor.name}"/></p>
					        <p><b>Reason: </b><c:out value="${acceptor.reason}"/></p>
					        <p><b>Amount: </b><c:out value="${acceptor.amount}"/></p>
					        <p><b>Email: </b><c:out value="${acceptor.email}"/></p>
					        <p><b>Phone: </b><c:out value="${acceptor.phone}"/></p>
					        <p><b>Description: </b><c:out value="${acceptor.description}"/></p>
					   		<button type="submit" class="btn btn-success" id="">Donate for ${acceptor.name}</button>
					</c:forEach> 
					<br>
					<a href="welcome.jsp">Back to Home</a>
				</form>
				</fieldset>
			</div>
		</div>
	</div>		
</body>
</html>