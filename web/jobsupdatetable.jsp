<%-- 
    Document   : jobsupdatetable
    Created on : Apr 18, 2024, 10:04:58 PM
    Author     : hp
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobs update Details</title>
         <style>
             body{
                  background-image:url("image/job2");
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
    margin-left: 250%;
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
        String code=request.getParameter("Job_Code");
        String Name=request.getParameter("Job_Name");
        String Qualification=request.getParameter("Qualification");
        String Required_skills=request.getParameter("Required_skills");
        String Responsibilities=request.getParameter("Responsibilities");
        String Experience=request.getParameter("Experience");
         String No_of_vacancies=request.getParameter("No_of_vacancies");
        String Last_Date=request.getParameter("Last_Date");
        String Contact=request.getParameter("Contact");
       

        
        %>
         <center><div class="login-container">
        <form action="jobsupdatetablecon.jsp" method="post">
            <center><h1 target="blank"> Update Jobs Details </h1></center><br>
            <table>
                
               <tr><td><b>uid:<b> </td><td><input type="text" value="<%=uid%>" name="uid"> </td>
                   <tr><td><b>code:<b> </td><td><input type="text" value="<%=code%>" name="Job_Code"> </td>
                   <tr><td><b>Name:<b> </td><td><input type="text" value="<%=Name%>" name="Job_Name"> </td>
                       <tr><td><b>Qualification:<b> </td><td><input type="text" value="<%=Qualification%>" name="Qualification"> </td>
                       <tr><td><b>Required_skills:<b> </td><td><input type="text" value="<%=Required_skills%>" name="Required_skills"> </td>
                           <tr><td><b>Responsibilities:<b></td><td><input type="text" value="<%=Responsibilities%>" name="Responsibilities"> </td>
                               
                              <tr><td><b>Experience:<b></td><td><input type="text" value="<%=Experience%>" name="Experience"> </td>
                                  
                                <tr><td><b>No_of_vacancies:<b></td><td><input type="text" value="<%=No_of_vacancies%>" name="No_of_vacancies"> </td>
                                    <tr><td><b>Last_Date:<b></td><td><input type="text" value="<%=Last_Date%>" name="Last_Date"> </td>
                                  <tr><td><b>Contact:<b></td><td><input type="text" value="<%=Contact%>" name="Contact"> </td>
                                    
                                          
                               
            </table><br>
                                  <center> <button type="submit">update</button></center>&emsp;
        </form>
                                  </div></center>
                            </body>
</html>


