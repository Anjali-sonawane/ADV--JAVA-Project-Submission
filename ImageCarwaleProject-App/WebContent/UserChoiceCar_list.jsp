<%@page import="com.cdac.dto.NewCarLaunch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <title>Brand Car List</title>
</head>
<style>
 .wave {
            position: fixed;
            height: 60%;
            left: 0;
            bottom: 0;
            z-index: -1;
        }
        .rad{
       background-image: linear-gradient(20deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);
        font-size: 25px;
        font-family: bold;
        }
        
</style>
<body style="background: #f6f5f7;">
 <img class="wave" src="wave.svg">
 <div align="center">
 <h1 style="margin: 30px; padding: 20px;">Your Favourite Brand Car</h1>
 </div>
 
<table align="center"  border="5px solid;" style= "margin-left: 130px;">
		
		<%
			List<NewCarLaunch> list = (List<NewCarLaunch>)request.getAttribute("choiceList");
				for(NewCarLaunch cr1 : list){
		%>
		<tr>
			
			<td>
				<%="CarName :" %>
				<%=cr1.getNewcarName()%>
			</td>
			<td>
				<%="BrandName :" %>
				<%=cr1.getBrandName()%>
			</td>
			<td>
				<%="Engine Type :" %>
				<%=cr1.getEngine()%>
			</td>
			<td>
				<%="Price :" %>
				<%=cr1.getPrice()%>
			</td>
			<td>
				<%="Seating Capcity :" %>
				<%=cr1.getSeatingCapcity()%>
				
			</td>
			<td>
				<%="Fuel Type :" %>
				<%=cr1.getFuelType()%>
			</td>
			
		</tr>
		<% } %>
		
	</table>
	<div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
       <div class="btn btn-block text-white shadow-sm  rad">
                           <a href="home.jsp" >Back</a>
                            </div>
                </div>
    </div>
	
</body>
</html>