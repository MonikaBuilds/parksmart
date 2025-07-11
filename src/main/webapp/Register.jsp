<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>ParkSmart</title>
    <link rel="stylesheet"  href="register.css">
    <link href="http://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
    
</head>
<body>
    <div class="wrapper">
            <h1>REGISTER</h1>
             <form action="registerservlet" method="post">
            <div class="input-box">
                <div class="input-feild">
                    <input type="text" placeholder="Full Name"  name="txtfullname"required>
                    <i class="bx bxs-user"></i>
                </div>
                <div class="input-feild">
                    <input type="text" placeholder="Username"  name="txtuname"required>
                    <i class="bx bxs-user"></i>
                </div>
                <div class="input-feild">
                    <input type="email" placeholder="Email"  name="txtemail"required>
                    <i class="bx bxs-envelope" ></i>
                </div>
                <div class="input-feild">
                    <input type="number" placeholder="Phone Number" name="txtphone">
                    <i class="bx bxs-phone" ></i>
                </div>
            </div>
            <div class="input-box">
                <div class="input-feild">
                <input type="password" placeholder="Password"  name="txtpass"required>
                <i class= "bx bxs-lock-alt"></i>
                
            </div>
            
            <div class="input-feild">
                <input type="password" placeholder="Confirm Password" name="txtcp"required>
                <i class= "bx bxs-lock-alt"></i>
            </div>
            <div class="input-feild">
                <input type="number" placeholder="Driver licence" name="txtdl"required>
                <i class="bx bxs-car" ></i>
            </div>
            <div class="input-feild">
                <input type="number" placeholder="UID" name="txtuid"required>
                <i class="bx bxs-id-card"></i>
            </div>
            <div class="login-link">
                <a href="http://127.0.0.1:5500/loginandsignup.html">LOGIN</a>
            </div>
            </div>
            
             <label><input type="checkbox">I hereby declare that the above information provided is true and correct</label>
             <button type="submit" class="btn">Register</button>

            
            </form>
            </div>
           <style>
            *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url("https://img.freepik.com/premium-photo/smart-systems-parking-management-solid-color-background-4k-ultra-hd_964851-139812.jpg");
    background-size: cover;
    background-position: center;
}

.wrapper{
    width: 750px;
    background-color: rgba(255, 255, 255, .1);
    border: 2px solid rgba(255, 255, 255, .2);
    box-shadow: 0 0 10px solid rgba(0, 0, 0, .2);
    backdrop-filter: blur(50px);
    border-radius: 10px;
    color: #fff;
    padding: 40px 35px 55px;
}

.wrapper h1{
    font-size: 36px;
    text-align: center;
    margin-bottom: 20px;
}

.wrapper .input-box{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    
}

.input-box .input-feild {
    position: relative;
    width: 48%;
    height: 50px;
    margin: 13px 0;
}

.input-box .input-feild input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .2);
    outline: none;
    font-size: 16px;
    color: #fff;
    border-radius: 6px;
    padding: 15px 15px 15px 40px;
}

.input-box .input-feild input::placeholder{
    color: #fff;
}

.input-box .input-feild i {
     position: absolute;
     left: 15px;
     top: 50%;
     transform: translate(-50%);
     font-size: 20px;
}

.wrapper label{
    display: inline-block;
    font-size: 14.5px;
    margin: 10px 0 23px;
}

.wrapper label input{
    accent-color: #fff;
    margin-right: 5px;
}

.wrapper .btn{
   width: 100%;
   height: 45px;
   background: #fff;
   border: none;
   outline: none;
   border-radius: 6px;
   box-shadow: 0 0 10px rgba(0, 0, 0, .1);
   cursor: pointer;
   font-size: 16px;
   color: #333;
   font-weight: 600;
}

.wrapper .login-link{
    font-size: 14.5px;
    text-align: center;
    margin: 20px 0 15px;
    }
   
    .login-link a{
    color: #fff;
    text-decoration: none;
    font-weight: 600;
    }
   
    .login-link  a:hover{
    text-decoration: underline;
    }

            
            </style>
</body>
</html>