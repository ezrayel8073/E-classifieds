<%-- 
    Document   : Job
    Created on : Apr 2, 2024, 3:34:05 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
   
      <title> Job </title>
       
        <style> 
               
            body{
                  background-image:url("image/job2");
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
   
    height: 85vh;
    margin-top: 0%;
    margin-left: 50%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 315px;
    text-align: left;
    
}

h1 {
    margin-top: 0px;
    margin-bottom: 5px;
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
                var Job_Code=document.form.Job_Code.value;
                var Job_Name=document.form.Job_Name.value;
                 var Qualification=document.form.Qualification.value;
                  var Required_skills=document.form.Required_skills.value;
                   var Responsibilities=document.form.Responsibilities.value;
                    var Experience=document.form.Experience.value;
                     var No_of_vacancies=document.form.No_of_vacancies.value;
                      var Last_Date=document.form.Last_Date.value;
                      var Contact=document.form.Contact.value;
                  
                     
               
                
                if(Job_Code==0)
                    
                    {
                        alert("please enter Job Code ");
                        document.form.Job_Code.focus();
                        return false;
                    }
                    if(Job_Name==0)
                        {  
                        alert("please enter Job Name");
                        document.form.Job_Name.focus();
                        return false;
                        }
                    if(Qualification==0)
                        {  
                        alert("please enter Qualification");
                        document.form.Qualification.focus();
                        return false;
                        }
                    if(Required_skills==0)
                        {  
                        alert("please enter Requireds kills");
                        document.form.Required_skills.focus();
                        return false;
                        }
                    if(Responsibilities==0)
                        {  
                        alert("please enter Responsibilities");
                        document.form.Responsibilities.focus();
                        return false;
                        }
                    if(Experience==0)
                        {  
                        alert("please enter Experience");
                        document.form.Experience.focus();
                        return false;
                        }
                   if(No_of_vacancies==0)
                        {  
                        alert("please enter No_of_vacancies");
                        document.form.No_of_vacancies.focus();
                        return false;
                        }
                         if(Last_Date==0)
                        {  
                        alert("please enter Last Date");
                        document.form.Last_Date.focus();
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
            </header></center><br>
            
            
            
    <center><div class="login-container">
       <form action="Jobsbackend.jsp"method="POST">
    
   <center> <h1 target="blank">Jobs </h1><br></center>
 <table>
        <tr>
            <td>
        <label for="name">Job Code:</label>
         </td>
        <td>
           <input type="text" name="Job_Code" Required>
            </td>
        <td>
            <tr>
        <td>
        <label for="owners">Job Name:</label>
         </td>
        <td>
        <input type="text" name="Job_Name" Required>
         </td>
        <td>
        
        <tr>
            <td>
        <label for="color">Qualification:</label>
         </td>
        <td>
        <input type="text" name="Qualification" Required>
         </td>
         <tr>
             <td>
        
         <label for="Mileage">Required skills:</label>
          </td>
        <td>
            <input type="text" name="Required_skills" Required>
             </td>
        <td>
            <tr>
                <td>
        
         <label for="Fuel">Responsibilities:</label>
          </td>
        <td>
          <input type="text"name="Responsibilities"  Required>
           </td>
        <td>
        <tr>
            <td>
         <label for="Top speed">Experience:</label>
          </td>
        <td>
           <input type="text" name="Experience" Required>
            </td>
        <td>
           <tr>
               <td>
           <label for="Kilometers">No.of.vacancies:</label>
            </td>
        <td>
           <input type="text" name="No_of_vacancies" Required>
  </td>
        <td>
            <tr>
                <td>
           <label for="Services">Last Date:</label>
            </td>
        <td>
           <input type="date" name="Last_Date" Required>
            </td>
        </tr>
           <tr>
               <td>
                     
           <label for="Contact Number">Contact Number:</label>
          </td>
           <td> 
          <input type="tel" id="phone" name="Contact" placeholder="Enter 10-digit phone number"  maxlength="13" Required>
           </td>
          
        </tr>
            </table><br>
        
         <center><button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button></center>
    </form>
            </div>
</body>
</html>
