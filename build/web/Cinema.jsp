<%-- 
    Document   : Cinema
    Created on : Apr 2, 2024, 3:33:31 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
      <title> Cinema Halls </title>
        <style> 
               
              
           
            body{
                  background-image:url("image/cinema.jpg");
                
                   height: 120vh;
              background-size: cover;
              background-position: center;
              background-repeat: no-repeat;
              min-height:50px; 
            } 
            
         .menu ul{
             
              float: right;
              list-style-type: none;
              margin-top: 20px;
              min-height: 400px;
              margin-left: 30px;
              font-size: 14px;    
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
   
    height: 87vh;
    margin-top: 0%;
   
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 350px;
    text-align: left;
    

h1 {
    margin-top: 1px;
    margin-bottom: 2px;
}

input[type="text"],
input[type="int"],
input[type="tel"],
input[type="date"],
input[type="time"]
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
    padding: 10px 20px;
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

<script type="text/javascript">
            function validate()
            {
                var Theater_Name=document.form.Theater_Name.value;
                var Movie_Name=document.form.Movie_Name.value;
                 var Duration_of_the_movie=document.form.Duration_of_the_movie.value;
                  var Price=document.form.Price.value;
                   var Location=document.form.Location.value;
                    var Parking_Availability=document.form.Parking_Availability.value;
                     var Seating=document.form.Seating.value;
                      var City=document.form.City.value;
                      var Contact=document.form.Contact.value;
                      var Date=document.form.Date.value;
                     
               
                
                if(Theater_Name==0)
                    
                    {
                        alert("please enter TheaterName ");
                        document.form.Theater_Name.focus();
                        return false;
                    }
                    if(Movie_Name==0)
                        {  
                        alert("please enter Movie_Name");
                        document.form.Movie_Name.focus();
                        return false;
                        }
                    if(Duration_of_the_movie==0)
                        {  
                        alert("please enter Duration_of_the_movie");
                        document.form.Duration_of_the_movie.focus();
                        return false;
                        }
                    if(Price==0)
                        {  
                        alert("please enter Price");
                        document.form.Price.focus();
                        return false;
                        }
                    if(Location==0)
                        {  
                        alert("please enter Location");
                        document.form.Location.focus();
                        return false;
                        }
                    if(Parking_Availability==0)
                        {  
                        alert("please enter Parking Availability");
                        document.form.Parking_Availability.focus();
                        return false;
                        }
                   if(Seating==0)
                        {  
                        alert("please enter Seating");
                        document.form.Seating.focus();
                        return false;
                        }
                         if(City==0)
                        {  
                        alert("please enter City");
                        document.form.City.focus();
                        return false;
                        }
                          if(Contact==0)
                        {  
                        alert("please enter Contact");
                        document.form.Contact.focus();
                        return false;
                        }
                         if(Date==0)
                        {  
                        alert("please enter Date");
                        document.form.Date.focus();
                        return false;
                        }
                       
            }
            
            
        </script>

<body>
    
     <center><header>
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
            </header></center><br><br>
    
            
            
               <center><div class="login-container">
    <form action="Cinemabackend.jsp"method="POST">
   <center><h1 target="blank">Cinema Halls</h1></center><br>
   
         <table>
        <tr>
            <td>
        <label for="name">Theater Name:</label>
         </td>
        <td>
           <input type="text" name="Theater_Name" Required>
            </td>
        
            <tr>
        <td>
        <label for="owners"> Name of the movie:</label>
         </td>
        <td>
        <input type="text"  name="Movie_Name" Required>
         </td>
       <tr>
           <td>
          <label for="owners"> Duration of the movie:</label>
         </td>
        <td>
        <input type="time"  name="Duration_of_the_movie" Required>
         </td>
         </tr>
         
           
         <tr>
             <td>
        
         <label for="Mileage">Price if the ticket:</label>
          </td>
        <td>
            <input type="text"  name="Price" Required>
             </td>
        <td>
            <tr>
                <td>
        
         <label for="Fuel">Location of the theater:</label>
          </td>
        <td>
          <input type="text" name="Location" Required>
           </td>
        <td>
        <tr>
            <td>
         <label for="Top speed">Parking Availability:</label>
          </td>
        <td>
           <input type="text"  name="Parking_Availability" Required>
            </td>
        <td>
           <tr>
               <td>
           <label for="Kilometers">Seating Capacity:</label>
            </td>
        <td>
           <input type="text"  name="Seating" Required>
  </td>
        <td>
            <tr>
                <td>
           <label for="Services">City:</label>
            </td>
        <td>
           <input type="text"  name="City" Required>
            </td>
        <td>
            <tr>
               <td>
                     
           <label for="Contact Number">Contact Number:</label>
          </td>
           <td> 
          <input type="tel" id="phone" name="Contact" placeholder="Enter 10-digit phone number"  maxlength="13" Required>
           </td>
          
        </tr>
           <tr>
               <td>

          <label for="Established">Release Date:</label>
           </td>
        <td>
         <input type="date" name="Date" Required>
     </td>
        <td>
           </table><br>
        <center> <button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button>
    </form>
                       </div></center>
</body>
</html>
