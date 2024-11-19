<%-- 
    Document   : viewupdatetable
    Created on : Apr 18, 2024, 10:39:52 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>university update details</title>
        <style>
             body{
                  background-image:url("image/university1.jpg");
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
   
    height: 80vh;
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
        String UniversityId=request.getParameter("University_Id");
        String UniversityName=request.getParameter("Name");
        String UniversityLocation=request.getParameter("Location");
        String UniversityAddress=request.getParameter("Address");
        String EstablishedDate=request.getParameter("Date");
        String AboutCollege=request.getParameter("About");
        String Webaddress=request.getParameter("Web_Address");

        
        %>
        <center><div class="login-container">
        <form action="universityupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update University Details </h1></center><br>
            <table>
                
               <tr><td><b>uid: </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>University_Id:</b> </td><td><input type="text" value="<%=UniversityId%>" name="University_Id"> </td>
                   <tr><td><b>Name:</b> </td><td><input type="text" value="<%=UniversityName%>" name="Name"> </td>
                       <tr><td><b>Location:</b> </td><td><input type="text" value="<%=UniversityLocation%>" name="Location"> </td>
                       <tr><td><b>Address:</b> </td><td><input type="text" value="<%=UniversityAddress%>" name="Address"> </td>
                           <tr><td><b>Date:</b></td><td><input type="text" value="<%=EstablishedDate%>" name="Date"> </td>
                               <tr><td><b>About:</b></td><td><input type="text" value="<%=AboutCollege%>" name="About"> </td>
                             <tr><td><b>Web_Address:</b></td><td><input type="text" value="<%=Webaddress%>" name="Web_Address"> </td>
                               
            </table><br>
                                       <center> <button type="submit">update</button></center>&emsp;

        </form>
                               </div>
                            </body>
</html>