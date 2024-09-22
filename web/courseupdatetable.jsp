<%-- 
    Document   : courseupdatetable
    Created on : Apr 18, 2024, 7:47:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course update Details</title>
         <style>
             body{
                  background-image:url("image/education1.jpg");
                    display: flex;
                   height: 110vh;
              background-size: cover;
              background-position: center;
              background-repeat: no-repeat;
              min-height:50px; 
            }
           
      .login-container {
    
    background-color: #ffffff;
     font-family: Arial, sans-serif;
    display: flex;
   
    height: 78vh;
    margin-top: 15%;
    margin-left: 150%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 280px;
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
    </head>
    <body>
        <%
        String uid=request.getParameter("uid");
        String college=request.getParameter("Select_College");
        String courseId=request.getParameter("Course_Id");
        String Name=request.getParameter("Course_Name");
        String set=request.getParameter("No_of_set");
        String duration=request.getParameter("Duration_of_course");
        String fees=request.getParameter("Fees_Details");
        String EstablishedDate=request.getParameter("Date");
       
        

        
        %>
        <center><div class="login-container">
        <form action="courseupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update Course Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>college:<b> </td><td><input type="text" value="<%=college%>" name="Select_College"> </td>
                   <tr><td><b>courseId:<b> </td><td><input type="text" value="<%=courseId%>" name="Course_Id"> </td>
                       <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Course_Name"> </td>
                       <tr><td><b>set:<b> </td><td><input type="text" value="<%=set%>" name="No_of_set"> </td>
                           <tr><td><b>duration:<b></td><td><input type="text" value="<%=duration%>" name="Duration_of_course"> </td>
                               <tr><td><b>fees:<b></td><td><input type="text" value="<%=fees%>" name="Fees_Details"> </td>
                             
                  <tr><td><b>EstablishedDate:<b></td><td><input type="text" value="<%=EstablishedDate%>" name="Date"> </td>
                                    
                               
            </table><br>
                   <center> <button type="submit">update</button></center>&emsp;
        </form>
                  </div>
                            </body>
</html>