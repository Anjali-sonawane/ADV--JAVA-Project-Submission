<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot password</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<style>
	
	
		#icn {
    font-size: 12vh;
    color: green;
	}
	
	</style>
</head>
<body>
	<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class="col-9  d-flex flex-column justify-content-center align-items-center" style="height: 100vh;">
            <div> <i id="icn" class="fa fa-check-circle" aria-hidden="true"></i> </div> <br>
            
				</h1><%=request.getAttribute("msg")%><h1>
            <h5>We have sent a mail to your MailId</h5>
            
            <a href="prep_log_form.htm"> <button type="button" class="btn btn-outline-danger">BACK TO HOME</button> </a>
        </div>
    </div>
</div>
</body>
</html>