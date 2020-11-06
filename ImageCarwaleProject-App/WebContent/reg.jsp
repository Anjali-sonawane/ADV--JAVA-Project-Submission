<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <title>Sign up Page</title>
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
    <div class="container-fluid ">
        <div class="row justify-content-end " style="margin-top: 33px;">

            <div class="rightimg" style="margin-right:150px;
            display: flex;justify-content: center;align-items:center;">
                <img src="searchicon.svg" style="width: 300px;">
            </div>

            <div class="col-sm-3 shadow-lg d-flex align-items-center text-white" id="idDiv" style="height: 90vh;border-top-left-radius:10px;
                border-bottom-left-radius:10px;
                background-image: linear-gradient(120deg,#4568dc,#b06ab3);">
                <div class="row">
                    <div class="col-sm-12 ">
                        <h1 class="font-weight-bolder d-flex justify-content-center" style="font-size:2rem;">Hello,
                            Friend!</h1>
                        <p class="mt-3" style="text-align: center;">Enter your personal details and start journey with
                            us</p>
                    </div>
                </div>

            </div>

            <div class="col-sm-4  shadow-lg" style="height: 90vh;border-top-right-radius:10px;
                background-image: linear-gradient(120deg,#f5f7fa , #c3cfe2);
                border-bottom-right-radius:10px;">
                <div class="row mt-4 justify-content-center">
                    <h1 class="font-weight-bolder " style="font-size:2rem;color: royalblue;">Create Account</h1>
                </div>

                <div class="row justify-content-center my-3">
                    <div class="col-6  d-flex justify-content-between">

                        <div class="col-6  d-flex justify-content-center">

                            <img src="registrationicon.svg" style="width: 300px;height:100px;">
                        </div>
                    </div>

                </div>

				<form action="reg.htm" method="post" class="was-validated" >

                <div class="row mt-2 justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">


                            <input name="userName" type="text" class="form-control" placeholder="Full Name"
                                style="background: #eee;font-size: 0.9rem;" minlength="5"
                                 required />

                        </div>
                    </div>
                </div>
                 <div class="row justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">

                            <input  type="password" name ="userPass" class="form-control" placeholder="password"
                                style="background: #eee;font-size: 0.9rem;" required/>
                               
                                
                        </div>
                    </div>
                </div>
                

                  <div class="row justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">

                            <input name = "Email" type="text" class="form-control" placeholder="Email"
                                style="background: #eee;font-size: 0.9rem;" required/>
                              
                              
                        </div>
                    </div>
                </div>

               

                 <div class="row justify-content-center">
                    <div class="col-sm-10 ">
                        <div class="form-group">

                            <input name="ContactNo" type="text" class="form-control"  placeholder="ContactNo"
                                style="background: #eee;font-size: 0.9rem;" id="pwd" minlength="10"
                                maxlength="10" required/>
                        </div>
                    </div>
                </div>

                 
                <div class="row justify-content-center">
                    <div class="col-sm-10">
                        <div class="form-check">
                            <label class="form-check-label" style="font-size: 0.8rem;">
                                <input type="radio" class="form-check-input text-white font-weight-bold " name="" id=""
                                    value="checkedValue" checked>
                                By singning up, you agree to the
                                <u style="font-size: 0.8rem;">Play Term of Services</u>

                            </label>
                        </div>
                    </div>
                </div>

                <div class="row mt-3 justify-content-center">
                    <div class="col-sm-10  rounded d-flex justify-content-center">
                        <button  class="btn btn-block  text-white shadow-none "
                            style="background-image: linear-gradient(120deg,#4568dc,#b06ab3);" type="submit">
                            Sign Up</button>
                    </div>
                </div>

	</form>

            </div>

        </div>
    </div>
</body>


</html>