<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Acceptor Page</title>
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<fieldset>
				<legend>Acceptor Details</legend>
				<form class="form-horizontal" method="post" action='acceptor/addDetails.htm' name="acceptorForm" id="acceptorForm">
					<div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls">
							<input type="text" name="name" id="name" title="Name" value="" required>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Reason</label>
						<div class="controls">
							<input type="text" name="reason" id="reason" title="Reason" value="" required>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Amount</label>
						<div class="controls">
							<input type="text" name="amount" id="amount" title="Amount(INR)" value="" required>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls">
							<input type="text" name="email" id="email" title="Email" value="">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Phone</label>
						<div class="controls">
							<input type="text" name="phone" id="phone" title="Phone" value="" required>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Description</label>
						<div class="controls">
							 <textarea rows="4" cols="50" name="description" ></textarea>
						</div>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Submit</button>
						<button type="button" class="btn">Cancel</button>
					</div>
				</form>
				</fieldset>
			</div>
		</div>
	</div>		
</body>
</html>