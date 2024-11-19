<%-- 
    Document   : Cars
    Created on : Apr 2, 2024, 3:33:50 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
     <title> Used Cars </title>
       <style> 
               
            body{
                  background-image:url("image/car1");
                   height: 110vh;
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
              color: black;
          }
          ul li a{
              text-decoration: none;
              color: black;
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
   
    height: 88vh;
    margin-top: 0%;
    margin-right: 60%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 330px;
    text-align: left;
    
}

h1 {
    margin-top: 0px;
    margin-bottom: 0px;
}

input[type="text"],
input[type="int"],
input[type="tel"],
input[type="date"]
{
    width: 100%;
    padding: 8px;
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
                var Company_Name=document.form.Company_Name.value;
                var Owners_Name=document.form.Owners_Name.value;
                 var Color=document.form.Color.value;
                  var Mileage=document.form.Mileage.value;
                   var Fuel_Type=document.form.Fuel_Type.value;
                    var Top_Speed=document.form.Top_Speed.value;
                     var Kilometers_Driven=document.form.Kilometers_Driven.value;
                     var Services_Done=document.form.Services_Done.value;
                      var Contact=document.form.Contact.value;
                       var Date=document.form.Date.value;
               
                
                if(Company_Name==0)
                    
                    {
                        alert("please enter Company name");
                        document.form.Company_Name.focus();
                        return false;
                    }
                    if(Owners_Name==0)
                        {  
                        alert("please enter Owners name");
                        document.form.Owners_Name.focus();
                        return false;
                        }
                    if(Color==0)
                        {  
                        alert("please enter Color");
                        document.form.Color.focus();
                        return false;
                        }
                    if(Mileage==0)
                        {  
                        alert("please enter Mileage");
                        document.form.Mileage.focus();
                        return false;
                        }
                    if(Fuel_Type==0)
                        {  
                        alert("please enter Fuel type");
                        document.form.Fuel_Type.focus();
                        return false;
                        }
                    if(Top_Speed==0)
                        {  
                        alert("please enter Top speed");
                        document.form.Top_Speed.focus();
                        return false;
                        }
                   if(Kilometers_Driven==0)
                        {  
                        alert("please enter Kilometers Driven");
                        document.form.Kilometers_Driven.focus();
                        return false;
                        }
                        if(Services_Done==0)
                        {  
                        alert("please enter Services Done");
                        document.form.Services_Done.focus();
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
            </header></center><br>
    
    
    
    
    
    
      <center><div class="login-container">
                  <form action="Carsbackend.jsp" method="POST" onsubmit="return validate()" name="form">
   
   <center><h1 target="blank"> Cars </h1></center><br>
 <table>
        <tr>
            <td>
        <label for="name">Company Name:</label>
         </td>
        <td>
           <input type="text" name="Company_Name" >
            </td>
        <td>
            <tr>
        <td>
        <label for="owners">owner's Name:</label>
         </td>
        <td>
        <input type="text" name="Owners_Name" >
         </td>
        <td>
        
        <tr>
            <td>
        <label for="color">Color:</label>
         </td>
        <td>
        <input type="text" name="Color" Color >
         </td>
         <tr>
             <td>
        
         <label for="Mileage">Mileage:</label>
          </td>
        <td>
            <input type="text" name="Mileage" >
             </td>
        <td>
            <tr>
                <td>
        
         <label for="Fuel">Fuel type:</label>
          </td>
        <td>
          <input type="text" name="Fuel_Type" >
           </td>
        <td>
        <tr>
            <td>
         <label for="Top speed">Top speed:</label>
          </td>
        <td>
           <input type="text" name="Top_Speed" >
            </td>
        <td>
           <tr>
               <td>
           <label for="Kilometers">Kilometers Driven:</label>
            </td>
        <td>
           <input type="text" name="Kilometers_Driven" >
  </td>
        <td>
            <tr>
                <td>
           <label for="Services">Services Done:</label>
            </td>
        <td>
                <input type="text" name="Services_Done" >
 
            </td>
        </tr>
          
           <tr>
               <td>
                     
           <label for="Contact Number">Contact Number:</label>
          </td>
           <td> 
          <input type="tel" id="phone" name="Contact" placeholder="Enter 10-digit phone number"  maxlength="13" >
           </td>
          
        </tr>
           <tr>
               <td>

          <label for="Established">Established Date:</label>
           </td>
        <td>
         <input type="date" name="Date" >
     </td>
        <td>
            </table><br>
        
        <center> <button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
    </form>
   </div>
</body>
</html>
