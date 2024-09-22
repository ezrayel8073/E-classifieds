<%-- 
    Document   : Realestateresponse
    Created on : Apr 8, 2024, 3:03:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> RealEstate Details</title>
         <style>
         body{
                  background-image:url("image/realestate.jpg");
                  height: 100vh;
              background-size: cover;
              background-position: center;
              background-repeat: no-repeat;
              min-height:50px; 
            }
             ul{
            
              list-style-type: none;
              margin-top: 20px;
              min-height: 600px;
              margin-right: 40px;
              font-size: 17px; 
             
          }
          ul li{
              display:inline-block;
              color: white;
          }
          ul li a{
              text-decoration: none;
              color: white;
              padding: 5px 20px;
              border: 4px solid transparent;
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
               top:1%;
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
               margin: 5px;
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
          
      .login-container {
    
   background-color: #ffffff;
     font-family: Arial, sans-serif;
    display: flex;
   
    height: 25vh;
    margin-top: -30%;
   margin-left: 10%;
    margin-bottom: 100%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 360px;
    text-align: center;
    
}

h1 {
    margin-top: 0px;
    margin-bottom: 5px;
}

input[type="text"],
input[type="int"],
input[type="tel"]
{
    width: 100%;
    padding: 7px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: black;
    color: #ffffff;
    border: none;
    padding: 8px 15px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}
</style>
 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body> 
        
        
        <center> <header>
           <div class="main">
               
              
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
       
        <li> View Details <i class='bx bx-caret-down'></i></a>
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
        <li> <a href="index.jsp">Logout</a></li>
       </ul>
      </div>
            </header></center><br>
    
    
    
    
        
        
        
        
        
        
      <center><div class="login-container">
        <form action="RealEstateviewtable.jsp" method="post">
   
        <h1 target="blank"> Enter Location</h1><br>
         <table>
                <td>
                   <b> Location:</b> </td><td>
                    <input type="text" name="name">
                </td>
            </tr> </table><br>
           
                   <center><button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
               
</center>
        </form>
              </div>
    </body>
</html>



