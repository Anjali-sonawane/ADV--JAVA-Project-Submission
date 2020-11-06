<%@page import="com.cdac.dto.User"%>
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	User user = (User)session.getAttribute("user");
	String userName = "", profilePic = "";
	if(user!=null){
		userName = user.getUserName();
		profilePic = user.getProfilePic();
	}
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <title>Sign up Page</title>
    <style>

        .wave {
            position: fixed;
            height: 60%;
            left: 0;
            bottom: 0;
            z-index: -1;
        }
        .tablecss{
        border: solid;
        width: 300px;
        height: 300px;
        
        }
 	.divclass{
 	font-size: 25px; 
 	font-family: bold;
 	background-image: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
 	}
 	
 	
    </style>
</head>
<body style="background: #f6f5f7;">
 <img class="wave" src="wave.svg">
 	<div class="row mt-3 justify-content-end">
		<div class="col-sm-10  rounded d-flex justify-content-end">
		<div><p style="font-size: 20px; margin-top: 0.1em;">Profile photo</p></div>
		</div>
		</div>
		<div class="row mt-3 justify-content-end">
		<div class="col-sm-10  rounded d-flex justify-content-end">
		
		<img alt="insert pic" src="<%="images/"+profilePic%>" height="150" width="150" style="border-radius: 50%; margin: 0.1em;">
		 </div>
		</div>
		<h1 align="center" style="margin: 0.1em; ">Welcome <%=(session.getAttribute("user")!=null) ? ((User)session.getAttribute("user")).getUserName() : "!!!!!!!!" %> </h1>
	
	<div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                            
                            <a href="prep_expense_add_form.htm" style="color: white;">Add your choice Car</a></div>
                </div>
    </div>
    <div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                           
                            <a href="expense_list.htm" style="color: white;">See your Car List</a></div>
                </div>
    </div>
    
	<div class="row mt-3 justify-content-center ">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                            
                            <a href="UserChoiceCar_form.htm" style="color: white;">See your favourite Brand car</a></div>
                </div>
       </div>
       <div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                            <a href="new_launch_list.htm" style="color: white;">See New Launch Car List</a></div>
                </div>
       </div>
      <!--   <div class="row mt-3 justify-content-center ">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                           
                            <a href="newcar_add_form.htm" >Add new Car</a></div>
                </div>
       </div>
            -->  
       <div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <div class="btn btn-block text-white shadow-sm divclass">
                           
                           <a href="file_upload_form.html" style="color: white;"> Update/Upload your profile</a></div>
                </div>
       </div>
</body>
</html>