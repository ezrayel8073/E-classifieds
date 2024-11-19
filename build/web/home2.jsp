<%-- 
    Document   : home2
    Created on : Apr 2, 2024, 8:38:45 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Home</title>
      <style>
          *{
              margin:0px;
              padding: 0px;
              font-family: century;   
          } 
          header{
              background: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(image/adhome1.jpg);
              height: 100vh;
              background-size: cover;
              background-position: center;
              min-height:100px; 
              
          }
          ul{
             
              float: right;
              list-style-type: none;
              margin-top: 50px;
              min-height: 400px;
              margin-right: 20px;
              font-size: 16px;    
          }
          ul li{
              display:inline-block;
              color: white;
          }
          ul li a{
              text-decoration: none;
              color: white;
              padding: 5px 20px;
              border: 1px solid transparent;
              transition: 0.5 ease;
          }
          ul li a:hover{
              background-color:white;
              color: black;
          } 
           ul li.active a{
              background-color:white;
              color: black;
           }
           .logo img{
               margin-top: 30px;
               float: left;
               width: 130px;
               height: auto;
              
           }
           .main{
               max-width: 1200px;
               margin: auto;
           }
           .title{
               position: absolute;
               top: 40%;
               left: 50%;
               transform: translate(-50%,-50%);
           }
           .title h1{
               color: white;
               font-size: 70px;
           }
           
           .sub-menu{
               display: none;
               top:6%;
               position: relative;     
           }
           .sub-menu ul{
               position: absolute;
           }
           .main ul li:hover .sub-menu{
               display: block;
               position: absolute;
               background-color: rgb(0, 45, 117);
               margin-top: 30px;
               margin-left: -8px;
           }
           .main ul li:hover .sub-menu ul{
               display: block;
               margin: 6px;
           }
          .main ul li:hover .sub-menu ul li{
              width:75px;
              padding: 5px;
              border-bottom: 1px white;
              background: transparent;
              transition: 0.4 ease;
              text-align: left;
              border-radius: 0px;  
          }

        </style>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        </head>
    <body>
       <header>
           <div class="main">
               
               <div class="logo">
                   <img src="image/logo.jpg">
               </div>
               <ul>
    
     <li class="active"> <a href="home2.jsp"><i class='bx bxs-home'></i> Home</a> </li> 
      <li>  Education<i class='bx bx-caret-down'></i>
          <div class="sub-menu">
                <ul>
                   
                      <li>  <a href="University.jsp">university</a>
                        <li><a href="college.jsp">college</a>
                        <li><a href="Course.jsp">course</a>
                   
                </ul>
                
            </div>
           
        </li>
      <li>  <a href="RentalModel.jsp">Rental</a></li>
       <li> <a href="RealEstate.jsp">Real Estate</a></li> 
       <li> <a href="Cinema.jsp">Cinema Halls </a></li> 
      <li>  <a href="Cars.jsp">Used Cars</a></li>
      <li>  <a href="Job.jsp">Jobs</a></li>
       
        <li> View Details <i class='bx bx-caret-down'></i>
            <div class="sub-menu">
                <ul>
                   
                   
                          <li> <a href="universityresponse.jsp">University</a>
                         <li> <a href="collegeresponse.jsp">College</a>
                        <li> <a href="courseresponse.jsp">Course</a>
                        <li><a href="Rentalresponse.jsp">Rental</a>
                        <li><a href="Realestateresponse.jsp">RealEstate</a>
                        <li><a href="cinemaresponse.jsp">Cinema</a>
                         <li><a href="carsresponse.jsp">Cars</a>
                          <li><a href="jobsresponse.jsp">Jobs</a>
                         <li><a href="Registrationresponse.jsp">Registrations</a>  
                            
                            
                </ul>
                
            </div>
           
        </li>
        <li> <a href="index.jsp">Log out</a></li>
      
       </ul>
      </div>
    
           <div class="title">
               <h1>E-classifieds</h1>
             
       </div>
            
       </header>
      </body>
</html>