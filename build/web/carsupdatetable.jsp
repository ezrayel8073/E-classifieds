<%-- 
    Document   : carsupdatetable
    Created on : Apr 18, 2024, 9:39:15 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cars update Details</title>
         <style>
             body{
                  background-image:url("image/car1");
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
   
    height: 97vh;
    margin-top: 15%;
    margin-left: 50%;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 300px;
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
        String Name=request.getParameter("Company_Name");
        String Owners_Name=request.getParameter("Owners_Name");
        String Color=request.getParameter("Color");
        String Mileage=request.getParameter("Mileage");
        String Fuel_Type=request.getParameter("Fuel_Type");
        String Top_Speed=request.getParameter("Top_Speed");
         String Kilometers_Driven=request.getParameter("Kilometers_Driven");
       String Services_Done=request.getParameter("Services_Done");
        String Contact=request.getParameter("Contact");
         String Date=request.getParameter("Date");

        
        %>
         <center><div class="login-container">
        <form action="carsupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update Cars Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Company_Name"> </td>
                   <tr><td><b>Owners_Name:<b> </td><td><input type="text" value="<%=Owners_Name%>" name="Owners_Name"> </td>
                       <tr><td><b>Color:<b> </td><td><input type="text" value="<%=Color%>" name="Color"> </td>
                       <tr><td><b>Mileage:<b> </td><td><input type="text" value="<%=Mileage%>" name="Mileage"> </td>
                           <tr><td><b>Fuel_Type:<b></td><td><input type="text" value="<%=Fuel_Type%>" name="Fuel_Type"> </td>
                               
                              <tr><td><b>Top_Speed:<b></td><td><input type="text" value="<%=Top_Speed%>" name="Top_Speed"> </td>
                                  
                                <tr><td><b>Kilometers_Driven:<b></td><td><input type="text" value="<%=Kilometers_Driven%>" name="Kilometers_Driven"> </td>
                                    <tr><td><b>Services_Done:<b></td><td><input type="text" value="<%=Services_Done%>" name="Services_Done"> </td>
                                  <tr><td><b>Contact:<b></td><td><input type="text" value="<%=Contact%>" name="Contact"> </td>
                                      <tr><td><b>Date:<b></td><td><input type="text" value="<%=Date%>" name="Date"> </td>
                                          
                              
            </table><br>
                                      
                                      

                                        <center> <button type="submit">update</button></center>&emsp;
        </form>
                                      <div></center>
                            </body>
</html>


