<%-- 
    Document   : college
    Created on : Mar 30, 2024, 4:24:02 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
<head>
   
     <title> College Details </title>
            <style> 
               
              
           
            body{
                  background-image:url("image/college2.jpg");
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
    margin-left: 60%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 370px;
   
    
}

h1 {
    margin-top: 0px;
    margin-bottom: 10px;
}
select[value="option"],
input[type="text"],
input[type="int"],
input[type="date"],
input[type="tel"]
{
    width: 100%;
    padding: 7px;
    margin-bottom: 1px;
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
                var University=document.form.University.value;
                var College_Id=document.form.College_Id.value;
                 var Name=document.form.Name.value;
                  var Address=document.form.Address.value;
                   var Location=document.form.Location.value;
                    var Web_Address=document.form.Web_Address.value;
                     var About=document.form.About.value;
                      var Date=document.form.Date.value;
                     
               
                
                if(University==0)
                    
                    {
                        alert("please enter University ");
                        document.form.University.focus();
                        return false;
                    }
                    if(College_Id==0)
                        {  
                        alert("please enter College Id");
                        document.form.College_Id.focus();
                        return false;
                        }
                    if(Name==0)
                        {  
                        alert("please enter Name");
                        document.form.Name.focus();
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
                    if(Web_Address==0)
                        {  
                        alert("please enter Web Address");
                        document.form.Web_Address.focus();
                        return false;
                        }
                   if(About==0)
                        {  
                        alert("please enter About");
                        document.form.About.focus();
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
   
    
    <header>
           <center><div class="main">
               
              
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <center> <div class="login-container">
    <form action="collegebackend.jsp"method="POST">
    <center><h1 target="blank">College Details</h1></center><br>
     
   
       
           Select The university : 
    <select id="name" name="University">
        
 <option value="B.V.Raju College" name="sname">---choose an University--</option>  
<option value="Andhra University" name="sname">Andhra University</option>
<option value="JNTU University" name="sname">JNTU University</option>
<option value="AKNU University" name="sname">AKNU University</option>
<option value="Acharya Nagarjuna University" name="sname">Acharya Nagarjuna University</option>
<option value="KL University" name="sname">KL University</option>
<option value="LP University" name="sname">LP University</option>

    </select>
        <table><br><br>
            <tr>
                <td>
        <label for="name">College id:</label></td><td>
        <input type="text" id="name" name="College_Id"><br><br></td></tr>
       <tr>
           <td>
        <label for="email">College Name:</label></td><td>
               
        <input type="text" id="email" name="Name"><br><br></td></tr>
        
        <tr>
            <td>
       
         <label for="email">College Address:</label></td><td>
         <input type="text" id="email" name="Address"><br><br></td></tr>
         
         <tr>
            <td>
       
         <label for="email">College Location:</label></td><td>
         <input type="text" id="email" name="Location"><br><br></td></tr>
         <tr>
            <td>
        
         <label for="email">Web address of College:</label></td><td>
         <input type="text" id="email" name="Web_Address"><br><br></td></tr>
         <tr>
            <td>
       
         <label for="email">About College:</label></td><td>
         <input type="text" id="email" name="About"><br><br></td></tr>
        <tr>
            <td>
        
         <label for="email">Established Date:</label></td><td>
       <input type="date" name="Date"></td></tr>
    </table>
    <br><br>    
           <button type="submit">submit</button>&emsp;
                 <button type="reset" >Cancel</button>
    </form>
    </div></center>
</body>
</html>


