<%-- 
    Document   : rentalresponse1
    Created on : Apr 8, 2024, 7:25:39 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <title>Rental Details</title>
        <style>
         body{
                  background-image:url("image/home.jpg");
                  background-position: center;
                  background-size: cover;
                  min-height: 600px;
                  background-repeat: no-repeat;
            }
            
            .sub-menu{
               display: none;
               top:6%;
               position: relative;     
           }
           .sub-menu ul{
               position: absolute;
           }
        li:hover .sub-menu{
               display: block;
               position: absolute;
               background-color: rgb(0, 45, 117);
               margin-top: 0px;
               margin-left: -8px;
           }
          li:hover .sub-menu ul{
           
           }
          .main ul li:hover .sub-menu ul li{
              width:75px;
              padding: 10px;
               
          }

            
            
            
            
      .login-container {
    
     background-color: #ffffff;
     font-family: Arial, sans-serif;
    display: flex;
    font-size: 12px; 
    height: 45vh;
    margin-top: 10%;
    margin-left:10%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 400px;
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
        
        
        
         <header>
            <nav class="nav-wrapper transparent">
                <div class="container">
                
                    <a href="" class="brand-logo">E-classifieds</a>
                    <a href="" class="sidenav-trigger" data-target="mobile"><i class="material-icons">menu</i></a>
                    
                    <ul class="right hide-on-med-and-down">
                   <li><a href="viewdetails1.jsp"> <i class='bx bxs-home'></i>Home</a></li>
                     <li>Education <i class='bx bx-caret-down'></i><div class="sub-menu">
                <ul>
                   
                      <li>  <a href="universityresponse1.jsp">university</a>
                        <li><a href="collegeresponse1.jsp">college</a>
                        <li><a href="courseresponse1.jsp">course</a>
                   
                </ul>
            </div>
        </li>
                     
                     <li><a href="rentalresponse1.jsp">Rental</a></li>
                     <li><a href="realestateresponse1.jsp">Realestate</a></li>
                     <li><a href="cinemaresponse1.jsp">Cinema Halls</a></li>
                     <li><a href="carsresponse1.jsp">Cars</a></li>
                      <li><a href="jobsresponse1.jsp">Jobs</a></li>
                     <li><a href="index.jsp">Logout</a></li>
                </ul>
                  
                 </div>    
        
            </header>
        
        
        
        
        
       <center><div class="login-container">
        <form action="viewrental1.jsp" method="post">
   
        <h4 target="blank"> Enter  Location</h4><br><br>
        
         <table>
                <td>
                    <b>Location: <b></td><td>
                    <input type="text" name="name">
                </td>
            </tr>
            
             </table><br>
             <center><button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
            
        
        </form>
               </div>
    </body>
</html>

