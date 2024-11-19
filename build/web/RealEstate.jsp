<%-- 
    Document   : RealEstate
    Created on : Apr 2, 2024, 3:33:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
      <title> Real Estate </title>
        <style> 
               
              
           
            body{
                  background-image:url("image/realestate.jpg");
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
              background-color:black;
              color: white;
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
   
    height: 80vh;
    margin-top: 0%;
    margin-right: 65%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: left;
    
}

h1 {
    margin-top: 5px;
    margin-bottom: 25px;
}

input[type="text"],
input[type="int"],
input[type="tel"],
input[type="date"]

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
                var House_No=document.form.House_No.value;
                var Owners_Name=document.form.Owners_Name.value;
                 var Facilities_of_House=document.form.Facilities_of_House.value;
                  var Address=document.form.Address.value;
                   var Location=document.form.Location.value;
                    var Rent=document.form.Rent.value;
                     var Rent_in_Advance=document.form.Rent_in_Advance.value;
                      var City=document.form.City.value;
                      var Contact=document.form.Contact.value;
                     
               
                
                if(House_No==0)
                    
                    {
                        alert("please enter House No ");
                        document.form.House_No.focus();
                        return false;
                    }
                    if(Owners_Name==0)
                        {  
                        alert("please enter Owners Name");
                        document.form.Owners_Name.focus();
                        return false;
                        }
                    if(Facilities_of_House==0)
                        {  
                        alert("please enter Facilities of House");
                        document.form.Facilities_of_House.focus();
                        return false;
                        }
                    if(Address==0)
                        {  
                        alert("please enter Address");
                        document.form.Address.focus();
                        return false;
                        }
                    if(Location==0)
                        {  
                        alert("please enter Location");
                        document.form.Location.focus();
                        return false;
                        }
                    if(Rent==0)
                        {  
                        alert("please enter Rent");
                        document.form.Rent.focus();
                        return false;
                        }
                   if(Rent_in_Advance==0)
                        {  
                        alert("please enter Rent in Advance");
                        document.form.Rent_in_Advance.focus();
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
       <form action="RealEstatebackend.jsp"method="POST"> 
  
    <center><h1 target="blank">Real Estate </h1></center>
      <table>
        <tr>
            <td>
        <label for="name">Plot No:</label>
         </td>
        <td>
           <input type="text" name="Plot_No" Required>
            </td>
        <td>
            <tr>
        <td>
        <label for="owners">owner's Name:</label>
         </td>
        <td>
        <input type="text" name="Owners_Name" Required>
         </td>
        <td>
        
        <tr>
            <td>
        <label for="color">Facilities:</label>
         </td>
        <td>
        <input type="text" name="Facilities" Required>
         </td>
         <tr>
             <td>
        
         <label for="Mileage">Address:</label>
          </td>
        <td>
            <input type="text" name="Address" Required>
             </td>
        <td>
            <tr>
                <td>
        
         <label for="Fuel">Location:</label>
          </td>
        <td>
          <input type="text" name="Location" Required>
           </td>
        <td>
        <tr>
            <td>
         <label for="Top speed">Land in Acres:</label>
          </td>
        <td>
           <input type="text" name="Land_in_Acres" Required>
            </td>
        <td>
           <tr>
               <td>
           <label for="Kilometers">City:</label>
            </td>
        <td>
           <input type="text" name="City" Required>
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

          <label for="Established">Established Date:</label>
           </td>
        <td>
         <input type="date" name="Date" Required><br><br>
     </td>
        <td>
            </table>
        <center> <button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
       
    </form>
        </div></center>
</body>
</html>
