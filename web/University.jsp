<%-- 
    Document   : menu
    Created on : Mar 30, 2024, 3:34:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
    <center>  <title> University Details </title>
        <style>
             body{
                  background-image:url("image/university1.jpg");
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
   
    height: 70vh;
    margin-top: 2%;
    margin-right: 100%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 385px;
    text-align: left;
    
}

h1 {
    margin-top: 5px;
    margin-bottom: 30px;
}

input[type="text"],

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
                var University_Id=document.form.University_Id.value;
                var Name=document.form.Name.value;
                 var Location=document.form.Location.value;
                  var Address=document.form.Address.value;
                   var Date=document.form.Date.value;
                    var About=document.form.About.value;
                     var WEb_Address=document.form.WEb_Address.value;
                     
               
                
                if(University_Id==0)
                    
                    {
                        alert("please enter University Id ");
                        document.form.University_Id.focus();
                        return false;
                    }
                    if(Name==0)
                        {  
                        alert("please enter Name");
                        document.form.Name.focus();
                        return false;
                        }
                    if(Location==0)
                        {  
                        alert("please enter Location");
                        document.form.Location.focus();
                        return false;
                        }
                    if(Address==0)
                        {  
                        alert("please enter Address");
                        document.form.Address.focus();
                        return false;
                        }
                    if(Date==0)
                        {  
                        alert("please enter Date");
                        document.form.Date.focus();
                        return false;
                        }
                    if(About==0)
                        {  
                        alert("please enter About");
                        document.form.About.focus();
                        return false;
                        }
                   if(WEb_Address==0)
                        {  
                        alert("please enter WEb_Address");
                        document.form.WEb_Address.focus();
                        return false;
                        }
                       
            }
            
            
        </script>
<body>
     <header>
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
            </header><br><br>
            
            
            
    
      <div class="login-container"> 
            <form action="universitybackend.jsp"method="POST">
    <table>
    <center><h1 target="blank">University Details </h1></center>
   <table>
        <tr>
            <td>
        <label for="name">University id:</label>
         </td>
        <td>
           <input type="text" id="University_Id" name="University_Id" Required>
            </td>
        </tr>
            <tr>
        <td>
        <label for="name">University Name:</label>
         </td>
        <td>
        <input type="text" id="Name" name="Name" Required>
         </td>
        
        </tr>
        <tr>
            <td>
        <label for="name">University Location:</label>
         </td>
        <td>
        <input type="text" id="Location" name="Location" Required>
         </td>
         </tr>
         <tr>
             <td>
        
         <label for="name">University Address:</label>
          </td>
        <td>
            <input type="text" id="Address" name="Address" Required>
             </td>
         </tr>
         <tr>
             
             <td>
        
         <label for="name">Established Date:</label>
          </td>
        <td>
            <input type="date" id="Date" name="Date" Required>
             </td>
              </tr>
              <tr>
             <td>
        
         <label for="name">About University:</label>
          </td>
        <td>
            <input type="text"  id="About" name="About" Required>
             </td>
            </tr>
            <tr>
                <td>
        
         <label for="name">WEb Address of University:</label>
          </td>
       <td>
            <input type="text" id="Web_Address" name="Web_Address" Required>
         </td>
         </tr>
  
            </table><br>
       
         <center><button type="submit" value="Submit">Submit</button>&emsp;
        
         <button type="Reset" value="Cancel">Cancel</button></center>
         </div>
    </form>
  
</body>
</html>

