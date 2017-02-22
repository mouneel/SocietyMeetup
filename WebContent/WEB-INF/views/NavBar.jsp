<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.mysociety.common.*, 
	java.util.*
"%>
<!DOCTYPE html>
<html>
<head>
	<title>MySociety</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default"> 
	    <div class="container-fluid"> 
	
	
	        <!-- Logo --> 
	        <div class="navbar-header"> 
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar"> 
	                <span class="icon-bar"></span> 
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span> 
	            </button> 
	            <a href="#" class="navbar-brand">MySociety</a> 
	        </div> 
	
	        <!-- Menu Items --> 
	        <div class="collapse navbar-collapse" id="mainNavBar">
	         
	            <ul class="nav navbar-nav"> 
 	                <li class="active"><a href="#"><%=Constants.PAGE_NAME_HOME%></a></li> 
	                <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<%=Constants.PAGE_NAME_MEMBERS%> 
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">Search</a>
							</li>
							<li>
								<a href="#">Update Profile</a>
							</li>
						</ul>
					</li>
	                
	                <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<%=Constants.PAGE_NAME_FEATURES%> 
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="#">Amenities</a>
							</li>
							<li>
								<a href="#">Services</a>
							</li>
							<li>
								<a href="#">Facilities</a>
							</li>
						</ul>
					</li>
	                
	                
	                <li><a href="#"><%=Constants.PAGE_NAME_EVENTS%></a></li>
	                <li><a href="#"><%=Constants.PAGE_NAME_NOTIFICATIONS%></a></li>
	                <li><a href="#"><%=Constants.PAGE_NAME_MEETINGS%></a></li>
	                <li><a href="#"><%=Constants.PAGE_NAME_MANAGEMENT%></a></li> 
	            </ul>
	            
	            
	            <!-- Right Navigation -->
	            <ul class="nav navbar-nav navbar-right">
					<li >
						<a href="Logout.html">
							<img class="img-circle" alt="Profile Image - Mouneel Mehta"  src="resources/images/ProfileImage_mtm.jpg" height="20px" width="20px">
							<strong>Logout</strong>
						</a>
					</li>
				</ul> 
	        </div> 
	
	
	    </div> 
	</nav> 
</body>
</html>