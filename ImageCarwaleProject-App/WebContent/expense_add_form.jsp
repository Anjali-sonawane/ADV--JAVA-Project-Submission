<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<title>Add Car </title>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">


<style>
        button {
            font-size: 12px;
            letter-spacing: 1px;
            text-transform: uppercase;

        }

        button:active {
            transform: scale(0.94);
        }

        .social-container a {
            border: 1px solid #DDDDDD;
            border-radius: 50%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            margin: 0 5px;
            height: 40px;
            width: 40px;
            text-decoration: none;
        }

        p {
            font-size: 14px;
            font-weight: 100;
            line-height: 20px;
            letter-spacing: 0.7px;

        }

        .wave {
            position: fixed;
            height: 60%;
            left: 0;
            bottom: 0;
            z-index: -1;
        }
    </style>
</head>
<body style="background: #f6f5f7;">

 <img class="wave" src="wave.svg">
<h1 style="margin: 30px; padding: 20px;">Register Your Car Requirement</h1>
 <div class="container-fluid ">
        <div class="row justify-content-end " style="margin-top: 33px;">
		<div class="col-sm-4  shadow-lg" style="height: 90vh;border-top-right-radius:10px;
                background-image: linear-gradient(120deg,#f5f7fa , #c3cfe2);
                border-bottom-right-radius:10px;">
 		 
 			<div class="col-sm-12 shadow-lg d-flex align-items-center text-white" id="idDiv" style="height: 10vh;  border-top-left-radius:10px;
                border-bottom-left-radius:10px;
                background-image: linear-gradient(120deg,#4568dc,#b06ab3);">
                      
               <div class="row mt-12 justify-content-center">
                    <div class="col-sm-12" style="width: 30vh;">
                        <p class="mt-3" style="text-align: center;">Enter Car Details</p>
                    </div>
                </div>

            </div>
<spr:form action="expense_add.htm" method="post" commandName="car" >

		<div class="row mt-2 justify-content-center">
                 <div class="col-sm-10 ">
                      <div class="form-group">
						<spr:input path="carName"  class="form-control" placeholder="Enter Car Name"
                          style="background: #eee;font-size: 0.9rem;" id="name"/>
						</div>
                    </div>
      		</div>
      		<div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">
						<spr:input path="brandName"  class="form-control" placeholder="Enter Brand Name"
                        style="background: #eee;font-size: 0.9rem;" id="name"/>
                        </div>
                    </div>
      		</div>

			<div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">
						<spr:input path="fuelType"  class="form-control" placeholder="Enter Fuel Type"
                          style="background: #eee;font-size: 0.9rem;" id="name"/>
						</div>
                    </div>
      		</div>

			<div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">
						<spr:input path="seatingCapcity"  class="form-control" placeholder="Enter Seating Capcity"
                          style="background: #eee;font-size: 0.9rem;" id="name"/>
						</div>
                    </div>
      		</div>
			<div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">
						<spr:input path="price"  class="form-control" placeholder="Enter price"
                          style="background: #eee;font-size: 0.9rem;" id="name"/>
						</div>
                    </div>
      	 	</div>
		 	<div class="row mt-3 justify-content-center">
                  <div class="col-sm-10  rounded d-flex justify-content-center">
                       <button  class="btn btn-block  text-white shadow-none "
                        style="background-image: linear-gradient(120deg,#4568dc,#b06ab3);" type="submit" id="btn">
                         Add Car</button>
                   </div>
          	</div>
</spr:form>
</div>
</div>
</div>
	
	
</body>
</html>