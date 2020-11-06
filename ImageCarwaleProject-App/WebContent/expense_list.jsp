<%@page import="com.cdac.dto.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
 <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    
<title>Car List</title>

</head>
<style>
 .wave {
            position: fixed;
            height: 60%;
            left: 0;
            bottom: 0;
            z-index: -1;
        }
</style>
<body style="background: #f6f5f7;">
	<img class="wave" src="wave.svg">
	<h1 style="margin: 30px; padding: 20px;">Car List</h1>
	<table align="center"   border="5px solid;" style= "margin-left: 130px;">
		<%
			List<Car> elist = (List<Car>)request.getAttribute("carList");
				for(Car cr : elist){
		%>
		
		<tr>
			
			<td>
				<%="CarName :" %>
				<%=cr.getCarName()%>
			</td>
			<td>
				<%="BrandName :" %>
				<%=cr.getBrandName()%>
			</td>
			<td>
				<%="Fuel Type :" %>
				<%=cr.getFuelType()%>
			</td>
			<td>
				<%="Price :" %>
				<%=cr.getPrice() %>
			</td>
			<td>
				<%="SeatingCapcity :" %>
				<%=cr.getSeatingCapcity()%>
			</td>
			<td>
				<a href="expense_delete.htm?carId=<%=cr.getCarId()%>">Delete</a>
			</td>
			<td>
				<a href="expense_update_form.htm?carId=<%=cr.getCarId()%>">Update</a>
			</td>
		</tr>
		<% } %>
	</table>
	<div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <button  class="btn btn-block  text-white shadow-none "
                            style="background-image: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);">
                           <a href="home.jsp" style="color: white;">
                            Back</a></button>
                    </div>
                </div>
	<div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <button  class="btn btn-block  text-white shadow-none "
                            style="background-image: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);" 
                            onclick="window.print()">
                            Save This Records</button>
                    </div>
                </div>
	
</body>
</html>