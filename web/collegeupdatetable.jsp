<%-- 
    Document   : collegeupdatetable
    Created on : Apr 18, 2024, 6:50:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>College update Details</title>
         <style>
             body{
                  background-image:url("image/college2.jpg");
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
   
    height: 83vh;
    margin-top: 15%;
    margin-left: 50%;
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
        String university=request.getParameter("University");
        String collegeId=request.getParameter("College_Id");
        String Name=request.getParameter("Name");
        String Address=request.getParameter("Address");
        String Location=request.getParameter("Location");
        String WebAddress=request.getParameter("Web_Address");
        String AboutCollege=request.getParameter("About");
        String EstablishedDate=request.getParameter("Date");
       
        

        
        %>
         <center><div class="login-container">
        <form action="collegeupdatetablecon.jsp" method="post">
             <center><h1 target="blank"> Update College Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:</b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>university:<b> </td><td><input type="text" value="<%=university%>" name="University"> </td>
                   <tr><td><b>collegeId: <b></td><td><input type="text" value="<%=collegeId%>" name="College_Id"> </td>
                       <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Name"> </td>
                       <tr><td><b>Address:<b> </td><td><input type="text" value="<%=Address%>" name="Address"> </td>
                           <tr><td><b>Location:<b></td><td><input type="text" value="<%=Location%>" name="Location"> </td>
                               <tr><td><b>WebAddress</td><td><input type="text" value="<%=WebAddress%>" name="Web_Address"> </td>
                             <tr><td><b>AboutCollege:<b></td><td><input type="text" value="<%=AboutCollege%>" name="About"> </td>
                                <tr><td><b>EstablishedDate:<b></td><td><input type="text" value="<%=EstablishedDate%>" name="Date"> </td>
                                    
                               
            </table><br>
                                 <center> <button type="submit">update</button></center>&emsp;

        </form>
                                </div>
                            </body>
</html>