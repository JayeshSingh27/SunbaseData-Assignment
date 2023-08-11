<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
		<h1 style="text-align:center">Login Form</h1>
		<form class="form-horizontal" action="./checkuser" method="post" style="width:50vw;margin-left:400px;padding-right:200px;">
			<div class="form-group">
		      <label class="control-label col-sm-2" for="username">Username:</label>
		      <div class="col-sm-10">
		        <input type="text" class="form-control" placeholder="Enter username" name="userId">
		      </div>
    		</div>
    		
    		 <div class="form-group">
		      <label class="control-label col-sm-2" for="pwd">Password:</label>
		      <div class="col-sm-10">          
		        <input type="password" class="form-control" placeholder="Enter password" name="password">
		      </div>
   			 </div>
   			  <div class="form-group">        
		      <div class="col-sm-offset-2 col-sm-10">
		        <button type="submit" class="btn btn-default">Submit</button>
		      </div>
    		</div>
		</form>
</body>
</html>