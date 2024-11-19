<%-- 
    Document   : rentalupdatetable
    Created on : Apr 18, 2024, 8:30:17 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rental update Details</title>
         <style>
             body{
                  background-image:url("image/home.jpg");
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
   
    height: 90vh;
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
        String No=request.getParameter("House_No");
        String Name=request.getParameter("Owners_Name");
        String Facilities=request.getParameter("Facilities_of_House");
        String Address=request.getParameter("Address");
        String Location=request.getParameter("Location");
        String Rent=request.getParameter("Rent");
        String Rent_in_Advance=request.getParameter("Rent_in_Advance");
       String City=request.getParameter("City");
        String Contact=request.getParameter("Contact");
        

        
        %>
         <center><div class="login-container">
        <form action="rentalupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update Rental Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>No:<b> </td><td><input type="text" value="<%=No%>" name="House_No"> </td>
                   <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Owners_Name"> </td>
                       <tr><td><b>Facilities:<b> </td><td><input type="text" value="<%=Facilities%>" name="Facilities_of_House"> </td>
                       <tr><td><b>Address:<b> </td><td><input type="text" value="<%=Address%>" name="Address"> </td>
                           <tr><td><b>Location:<b></td><td><input type="text" value="<%=Location%>" name="Location"> </td>
                               <tr><td><b>Rent:<b></td><td><input type="text" value="<%=Rent%>" name="Rent"> </td>
                              <tr><td><b>Rent_in_Advance:<b></td><td><input type="text" value="<%=Rent_in_Advance%>" name="Rent_in_Advance"> </td>
                                <tr><td><b>City:<b></td><td><input type="text" value="<%=City%>" name="City"> </td>
                                  <tr><td><b>Contact:<b></td><td><input type="text" value="<%=Contact%>" name="Contact"> </td>   
                               
            </table><br>
                                  <center> <button type="submit">update</button></center>&emsp;
        </form>
                               </div></center>
                            </body>
</html>
