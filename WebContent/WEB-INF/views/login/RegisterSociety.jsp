<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Society Registration Form</title>
</head>
<body>

	<form name="societyreg" method="post" action="/mysociety/SoceityRegistration.html">
		<table>
		
			<tr><td colspan="2">Society Details</td></tr>
			<tr>
				<td>
					Society Name *
				</td>
				<td>
					<input type="text" name="SocietyName" id="societyName" value="Vatika Cooperative Housing Society">
				</td>
			</tr>
			<tr>
				<td>
					Short Name *
				</td>
				<td>
					<input type="text" name="ShortName" id="shortName" value="Vatika">
				</td>
			</tr>
			
			
			
			<tr><td colspan="2">More Details</td></tr>
			<tr>
				<td>
					Registration No
				</td>
				<td>
					<input type="text" name="RegistrationNo" id="registrationNo" value="13579">
				</td>
			</tr>
			<tr>
				<td>
					Registration Date (DD/MM/YYYY)
				</td>
				<td>
					<input type="text" name="RegistrationDate" id="registrationDate" value="22/02/2017">
				</td>
			</tr>
			<tr>
				<td>
					Society Email
				</td>
				<td>
					<input type="text" name="SocietyEmail" id="SocietyEmail" value="vatika@gmail.com">
				</td>
			</tr>
			<tr>
				<td>
					Society Contact Nos
				</td>
				<td>
					<input type="text" name="SocietyContacts" id="societyContacts" value="9898989898; 27509696">
				</td>
			</tr>
			<tr>
				<td>
					Address
				</td>
				<td>
					<input type="text" name="SocietyAddress" id="societyAddress" value="Vatika, Near Ashtvinayak Chowk, Balewadi">
				</td>
			</tr>
			<tr>
				<td>
					City
				</td>
				<td>
					<input type="text" name="City" id="city" value="Pune">
				</td>
			</tr>
			<tr>
				<td>
					Pincode
				</td>
				<td>
					<input type="text" name="Pincode" id="pincode" value="411045">
				</td>
			</tr>
			
			
			
			
			<tr><td colspan="2">User Details</td></tr>
			<tr>
				<td>
					UserId (Admin)*
				</td>
				<td>
					<input type="text" name="userId" id="userId" value="Vatika">
				</td>
			</tr>
			<tr>
				<td>
					Password *
				</td>
				<td>
					<input type="password" name="Password" id="password" value="123">
				</td>
			</tr>
			<tr>
				<td>
					Name *
				</td>
				<td>
					<input type="text" name="ContactPerson" id="contactPerson" value="Mounneel Mehta">
				</td>
			</tr>
			<tr>
				<td>
					Designation *
				</td>
				<td>
					<input type="text" name="Designation" id="designation" value="Chairman">
				</td>
			</tr>
			
			
			<tr><td colspan="2"></td></tr>
			<tr>
				<td>
					<input type="submit" name="Submit" id="submit"> 
				</td>
				<td>
					<input type="reset" name="Cancel" id="Cancel" >
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>