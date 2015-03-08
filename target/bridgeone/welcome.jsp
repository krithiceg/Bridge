<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bridge</title>
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				<legend>Welcome to Bridge</legend>
				<form class="form-horizontal" method="post" action='decider.htm' name="employeeForm" id="employeeForm">
					<div class="control-group">
						<div class="controls">
							<input type="radio" name="type" value="acceptor">Acceptor<br>
						</div>
					</div>
					<div class="control-group">
						
						<div class="controls">
							<input type="radio" name="type" value="donor">Donor<br>
						</div>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Proceed</button>
					</div>
				</form>
				</fieldset>
			</div>
		</div>
	</div>		
</body>
</html>