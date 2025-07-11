<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>ParkSmart</title>
    <link rel="stylesheet"  href="loginandsignup.css">
    <link href="http://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
    
</head>
<body>
 
<div class="wrapper">
    
        <h1>LOGIN</h1>
         <form action="loginservlet" method="post">
        <div class="input-box">
            <input type="text" placeholder="Username" name="txtName"
                   required>
            <i class='bx bxs-user'></i>
        </div>
        <div class="input-box">
            <input type="password" placeholder="password" name="txtPwd"
                   required>
            <i class= 'bx bxs-lock-alt'></i>
        </div>
        <div class="remember-forget">
            <label><input type="checkbox">Remember me</label>
        </div>
       <button type="submit" class="btn">Login</button>
        <div class="register-link">
            <p>Don't have an account? <a
                    href="Register.jsp">Register</a></p>
                   
        </div>
    </form>
</div>
<style>


*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}
body{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: url("https://img.freepik.com/premium-photo/smart-systems-parking-management-solid-color-background-4k-ultra-hd_964851-139812.jpg");
  background-size: cover;
  background-position: center;
}

.wrapper{
   width: 420px;
   background: transparent;
   border: 2px solid rgba(255, 255, 255, .2);
   backdrop-filter: blur(20px);
   box-shadow: 0 0 10px rgba(0, 0, 0, .2);
   color: #fff;
   border-radius: 10px;
   padding: 30px 40px;
 }
 
 .wrapper h1{
 font-size: 36px;
 text-align: center;
 }

 .wrapper .input-box{
 position: relative;
 width: 100%;
 height: 50px;
 margin: 30px 0;
 }

 .input-box input{
 width: 100%;
 height: 100%;
 background: transparent;
 border: none;
 outline: none;
 border: 2px solid rgba(255, 255, 255, .2);
 border-radius: 40px;
 font-size: 16px;
 color: #fff;
 padding: 20px 45px 20px 20px;
 }

 .input-box input::placeholder{
 color: #fff;
 }

 .input-box i{
 position: absolute;
 right: 20px;
 top: 50%;
 transform: translateY(-50%);
 font-size: 20px;
 }

 .wrapper .remember-forget{
 display: flex;
 justify-content: space-between;
 font-size: 14.5px;
 margin: -15px 0 15px;
 }

 .remember-forgot  label input{
 accent-color: #fff;
 margin-right: 3px;
 }

 .remember-forget a{
 color: #fff;
 text-decoration: none;
 }

 .remember-forget a:hover{
 text-decoration: underline;
 }

 .wrapper .btn{
 width: 100%;
 height: 45px;
 background: #fff;
 border: none;
 outline: none;
 border-shadow: 0 0 10px rgba(0, 0, 0, .1);
 cursor: pointer;
 font-size: 16px;
 color: #333;
 font-weight: 600;
 }

 .wrapper .register-link{
 font-size: 14.5px;
 text-align: center;
 margin: 20px 0 15px;
 }

 .register-link p a{
 color: #fff;
 text-decoration: none;
 font-weight: 600;
 }

 .register-link p a:hover{
 text-decoration: underline;
 }

</style>

</body>
</html>