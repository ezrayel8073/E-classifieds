<%-- 
    Document   : realestateupdatetable
    Created on : Apr 18, 2024, 8:59:54 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Realestate update Details</title>
        <style>
             body{
                  background-image:url("image/realestate.jpg");
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
    margin-left: 30%;
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
        String No=request.getParameter("Plot_No");
        String Name=request.getParameter("Owners_Name");
        String Facilities=request.getParameter("Facilities");
        String Address=request.getParameter("Address");
        String Location=request.getParameter("Location");
        String Land_in_Acres=request.getParameter("Land_in_Acres");
       String City=request.getParameter("City");
        String Contact=request.getParameter("Contact");
         String Date=request.getParameter("Date");

        
        %>
        <center><div class="login-container">
        <form action="realestatelupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update Realestate Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>No:<b> </td><td><input type="text" value="<%=No%>" name="Plot_No"> </td>
                   <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Owners_Name"> </td>
                       <tr><td><b>Facilities:<b> </td><td><input type="text" value="<%=Facilities%>" name="Facilities"> </td>
                       <tr><td><b>Address:<b> </td><td><input type="text" value="<%=Address%>" name="Address"> </td>
                           <tr><td><b>Location:<b></td><td><input type="text" value="<%=Location%>" name="Location"> </td>
                               
                              <tr><td><b>Land_in_Acres:<b></td><td><input type="text" value="<%=Land_in_Acres%>" name="Land_in_Acres"> </td>
                                <tr><td><b>City:<b></td><td><input type="text" value="<%=City%>" name="City"> </td>
                                  <tr><td><b>Contact:<b></td><td><input type="text" value="<%=Contact%>" name="Contact"> </td>
                                      <tr><td><b>Date:<b></td><td><input type="text" value="<%=Date%>" name="Date"> </td>
                               
            </table><br>
                                      <center> <button type="submit">update</button></center>&emsp;
        </form>
                                      </div></center>
                            </body>
</html>
