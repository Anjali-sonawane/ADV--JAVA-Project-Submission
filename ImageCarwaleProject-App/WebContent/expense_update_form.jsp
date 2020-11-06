<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Expense Form</title>
</head>
<body>
	<spr:form action="expense_update.htm" method="post" commandName="car" >
	<table align="center" >
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="carId"/>
			</td>
		</tr>
		<tr>
			<td>
				CarName :
			</td>
			<td>
				<spr:input path="carName"/>
			</td>
		</tr>
		<tr>
			<td>
				brandName :
			</td>
			<td>
				<spr:input path="brandName"/>
			</td>
		</tr>
		<tr>
			<td>
				fuelType :
			</td>
			<td>
				<spr:input path="fuelType"/>
			</td>
		</tr>
		<tr>
			<td>
				seatingCapcity :
			</td>
			<td>
				<spr:input path="seatingCapcity"/>
			</td>
		</tr>
		
		<tr>
			<td>
				Price:
			</td>
			<td>
				<spr:input path="price"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="expense_list.htm" >Back</a>
			</td>
			<td>
				<input type="submit" value="Update" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>