<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spr:form action="New_Launch_add.htm" method="GET" commandName="newcar" >
	<table align="center" style="background-color: gray;" >
		<tr>
			<td>
				CarName :
			</td>
			<td>
				<spr:input path="newcarName"/>
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
				Engine Type :
			</td>
			<td>
				<spr:input path="engine"/>
			</td>
		</tr>
		<tr>
			<td>
				transmission :
			</td>
			<td>
				<spr:input path="transmission"/>
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
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Add new Launch Car" >
			</td>
		</tr>
	</table>
	</spr:form>
	
</body>
</html>