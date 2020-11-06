<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <title>Sign In Page</title>
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
            font-size: 1.1rem;
        }


        p {
            font-size: 14px;
            font-weight: 100;
            line-height: 20px;
            letter-spacing: 0.7px;

        }

        a {
            color: #333;
            font-size: 14px;
            text-decoration: none !important;
            margin: 15px 0;
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
    <div class="container-fluid">
        <div class="row justify-content-end" style="margin-top: 80px;">

            <div class="rightimg" style="margin-right:150px;
            display: flex;justify-content: center;align-items:center;">
                <img src="searchicon.svg" style="width: 300px;">
            </div>

            <div class="col-sm-3   shadow-lg d-flex align-items-center text-white" id="idDiv" style="height: 75vh;border-top-left-radius:10px;border-bottom-left-radius:10px;
                background-image: linear-gradient(120deg,#4568dc,#b06ab3);">
                <div class="row">
                    <div class="col-sm-12 ">
                        <h1 class="font-weight-bolder d-flex justify-content-center" style="font-size:2rem;">Welcome
                            Back!
                        </h1>
                        <p class="mt-3" style="text-align: center;">To keep connected with us please login with your
                            personal info</p>
                    </div>
                </div>

            </div>

            <div class="col-sm-4  shadow-lg" style="height: 75vh;border-top-right-radius:10px;
                background-image: linear-gradient(120deg,#f5f7fa , #c3cfe2);
                border-bottom-right-radius:10px;">
                <div class="row mt-5 justify-content-center">
                    <!--<div class="col-sm-10 font-weight-bold d-flex justify-content-center" style="font-size:2rem;">Create Account</div>-->
                    <h1 class="font-weight-bolder " style="font-size:2rem;color: royalblue;">Sign In</h1>
                </div>

                <div class="row justify-content-center my-3">
                    <div class="col-6  d-flex justify-content-center">
                        <img src="signinicon.svg" style="width: 300px;height:150px;">
                    </div>

                </div>


			<spr:form action="login.htm" method="post" commandName="user" >
                <div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                    <h4 style="color:red"><%=(request.getAttribute("msg") != null) ? (String)request.getAttribute("msg"):"" %><h4>
                        <div class="form-group">
						<spr:input path="userName"  class="form-control" id="email" placeholder="Enter UserName" 
						style="background: #eee;font-size: 0.9rem;"/>
					
                       

                        </div>
                    </div>
                </div>
			<div class="row justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">

  		<spr:password path="userPass" class="form-control " name="pwd" id="pwd" placeholder="Enter Password" 
  				style="background: #eee;font-size: 0.9rem;"/>
                               
                               
                                

                        </div>
                    </div>
                </div>
                

                <div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <button class="btn btn-block text-white shadow-sm "
                            style="background-image: linear-gradient(120deg,#4568dc,#b06ab3);" type="submit">sign
                            In</button>
                    </div>
                </div>
        </spr:form>
        <div class="row justify-content-center">
                    <div class="col-sm-10">
                        <a href="forgot_password.html">Forgot your password?</a>
                    </div>
                </div>
             </div>

        </div>
    </div>
</body>
</html>