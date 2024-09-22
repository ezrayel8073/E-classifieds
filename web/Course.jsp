<%-- 
    Document   : Course
    Created on : Apr 2, 2024, 2:20:11 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
<head>
   
     <title> Course Details </title>
         <style> 
               
              
           
            body{
                  background-image:url("image/education1.jpg");
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
   
    height: 81vh;
    margin-top: 0%;
    
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 320px;
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
    padding: 5px;
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
                var Select_College=document.form.Select_College.value;
                var Course_Id=document.form.College_Id.value;
                 var Course_Name=document.form.Course_Name.value;
                  var No_of_set=document.form.No_of_set.value;
                   var Duration_of_course=document.form.Duration_of_course.value;
                    var Fees_Details=document.form.Fees_Details.value;
                   var Date=document.form.Date.value;
                     
               
                
                if(Select_College==0)
                    
                    {
                        alert("please enter Select College ");
                        document.form.Select_College.focus();
                        return false;
                    }
                    if(Course_Id==0)
                        {  
                        alert("please enter Course Id");
                        document.form.Course_Id.focus();
                        return false;
                        }
                    if(Course_Name==0)
                        {  
                        alert("please enter Course_Name");
                        document.form.Course_Name.focus();
                        return false;
                        }
                    if(No_of_set==0)
                        {  
                        alert("please enter No of set");
                        document.form.No_of_set.focus();
                        return false;
                        }
                    if(Duration_of_course==0)
                        {  
                        alert("please enter Duration of course");
                        document.form.Duration_of_course.focus();
                        return false;
                        }
                    if(Fees_Details==0)
                        {  
                        alert("please enter Fees Details");
                        document.form.Fees_Details.focus();
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
     <form action="coursebackend.jsp"method="POST">
    <center><h1 target="blank">Course Details</h1></center><br>
     
   
        <td>
            Select The College :</td>
        
        <td>   
    <select id="Select_College"  name="Select_College">
        
<option value="B.V.Raju College" name="sname">---choose an college--</option>
<option value="B.V.Raju College" name="sname">B.V.Raju College</option>
<option value="D.N.R College" name="sname">D.N.R College</option>
<option value="C.S.N College" name="sname">C.S.N College</option>
<option value="V.S.K College" name="sname">V.S.K College</option>
<option value="K.G.R.L College" name="sname">K.G.R.L College</option>
<option value="Aditya College" name="sname">Aditya College</option>
<option value="S.R.K.R College" name="sname">S.R.K.R College</option>


    </select>
        </td>
        
       
        

     <table><br><br>
<tr>        
    <td>
        <label for="name">Course id:</label></td><td>
          <input type="text" name="Course_Id"><br><br></td></tr>
        <tr>        
    <td>
        <label for="email">Course Name:</label></td><td>
     <input type="text" name="Course_Name"><br><br></td></tr>
        <tr>        
    <td>
   
         <label for="email">No of Set:</label></td><td>
         <input type="text" name="No_of_set"> <br><br></td></tr>
         <tr>        
    <td>
         <label for="email">Duration of Course:</label></td><td>
           <input type="text" name="Duration_of_course"><br><br></td></tr>
        <tr>        
    <td>
         <label for="email">Fees Details:</label></td><td>
        <input type="text" name="Fees_Details"><br><br></td></tr>
       <tr>        
    <td> 
         <label for="email">Course Date:</label></td><td>
    <input type="date" name="Date"></td><td>
     </table><br>
     
        <center> <button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
    </form>
        </div>
</body>
</html>


