<%-- 
    Document   : cinemaupdatetable
    Created on : Apr 18, 2024, 9:17:46 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cinema update Details</title>
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
   
    height: 95vh;
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
        String Name=request.getParameter("Theater_Name");
        String Movie_Name=request.getParameter("Movie_Name");
        String Duration=request.getParameter("Duration_of_the_movie");
        String Price=request.getParameter("Price");
        String Location=request.getParameter("Location");
        String Parking_Availability=request.getParameter("Parking_Availability");
         String Seating=request.getParameter("Seating");
       String City=request.getParameter("City");
        String Contact=request.getParameter("Contact");
         String Date=request.getParameter("Date");

        
        %>
         <center><div class="login-container">
        <form action="cinemaupdatetablecon.jsp" method="post">
             <center><h1 target="blank"> Cinema Halls Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Theater_Name"> </td>
                   <tr><td><b>Movie_Name:<b> </td><td><input type="text" value="<%=Movie_Name%>" name="Movie_Name"> </td>
                       <tr><td><b>Duration:<b> </td><td><input type="text" value="<%=Duration%>" name="Duration_of_the_movie"> </td>
                       <tr><td><b>Price:<b> </td><td><input type="text" value="<%=Price%>" name="Price"> </td>
                           <tr><td><b>Location:<b></td><td><input type="text" value="<%=Location%>" name="Location"> </td>
                                  
                           <tr><td><b>Parking_Availability:<b></td><td><input type="text" value="<%=Parking_Availability%>" name="Parking_Availability"> </td>
                               
                              <tr><td><b>Seating:<b></td><td><input type="text" value="<%=Seating%>" name="Seating"> </td>
                                  
                                <tr><td><b>City:<b></td><td><input type="text" value="<%=City%>" name="City"> </td>
                                  <tr><td><b>Contact:<b></td><td><input type="text" value="<%=Contact%>" name="Contact"> </td>
                                      <tr><td><b>Date:<b></td><td><input type="text" value="<%=Date%>" name="Date"> </td>
                               
            </table><br>
            <center> <button type="submit">update</button></center>&emsp;
        </form>
                               </div></center>
                            </body>
</html>

