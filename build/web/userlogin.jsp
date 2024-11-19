<%-- 
    Document   : userlogin
    Created on : Apr 18, 2024, 4:11:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
     <title> Userlogin </title>
     <style>
         *{
             margin:0;
             padding: 0;
             box-sizing: border-box;
             font-family: "poppins", sans-serif;
         }
         body{
             display:flex;
             justify-content: center;
             align-items: center;
             min-height: 100vh;
             background:url(image/userlogin.jpg);
             background-size: cover;
             background-position: center;
             background-size: 100%;
             background-repeat: no-repeat;
         }   
         .wrapper{
             width: 420px;
             background:transparent;
             border: 2px solid rgba(255, 255, 255, .2);
             backdrop-filter: blur(10px);
             color:white;
             border-radius: 12px;
             padding: 30px 40px;
         }
         .wrapper h1{
             font-size: 36px;
             text-align:center;
         }
         .wrapper .input-box{
                position: relative;
             width: 100%;
             height: 50px;
             margin:30px 0;
         }
          .input-box input{
             width: 100%;
             height: 100%;
             background:transparent;
             border: none;
             outline: none; 
             border: 2px solid rgba(225, 255, 255,  .2);
             border-radius:40px; 
             font-size:  16px;
             color: black;
             padding: 20px 45px 20px 20px;
         }
         .input-box input::placeholder{
             color:white; 
         }
         .input-box i{
             position: absolute;
             right: 20px;
             top: 30%;
             transform: translate(-50%);
             font-size: 20px;          
         }
         .wrapper .btn{
             width: 100%;
             height: 45px;
             background:white;
             border: none;
             outline: none; 
             border-radius:40px;
             box-shadow: 0 0 10px rgba(0, 0, 0, .1);
             cursor: pointer;
             font-size:16px;
             color:#333;
             font-weight: 600;    
         }
         .wrapper .register-link{
             font-size: 14.5px;
             text-align: center;
             margin-top: 20px 0 15px;
         }
         .register-link a{
             color:white;
             text-decoration: none;
             font-weight:600;
         }
         .register-link a:hover{
          text-decoration: underline;   
         }
          
         </style>
   
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> 
</head>

<body>
     <div class="wrapper">
    <form action="userloginbackend.jsp" method="POST">
 
  
  
       <h1>Userlogin </h1>
        <div class="input-box">
            <input type="text"  name="Username" placeholder="username" required>
      <i class='bx bxs-user'></i>
            </div>
        
         <div class="input-box">
            <input type="password"  name="Password" placeholder="password" required>
          <i class='bx bxs-lock-alt'></i>
            </div>
  
        <button type="submit" class="btn">Login</button><br><br>
        
        
        <div class="register-link" <p>Don't have an account?</p>
            
           <a  href="Registration.jsp"> Registration</a>
           
           
           </div>
      
                </form> 
        
         
          
</div>
    
        </body>
        </html>