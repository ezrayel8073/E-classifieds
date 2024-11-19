<%-- 
    Document   : viewcinema1
    Created on : Apr 5, 2024, 10:19:15 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
     
         <title>Cinema Halls Details</title>
         <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #777777;
            color: black;
            background-position: center;
            background-size: cover;
            min-height: 500px;
        }
        .sub-menu{
               display: none;
               top:6%;
               position: relative;     
           }
           .sub-menu ul{
               position: absolute;
           }
        li:hover .sub-menu{
               display: block;
               position: absolute;
               background-color: rgb(0, 45, 117);
               margin-top: 0px;
               margin-left: -8px;
           }
          li:hover .sub-menu ul{
           
           }
          .main ul li:hover .sub-menu ul li{
              width:75px;
              padding: 10px;
               
          }
        
        

        h1 {
            text-align: center;
            color: black;
        }
        

        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid black;
        }

        th {
            background-color: burlywood;
        }

         tr{
         background-color: white;   
        }
        
        tr:nth-child(even) {
            background-color: whitesmoke;
        }
 .button{
             
               position: absolute;
             margin-top: 2%;
            
              margin-left: 50%;
              margin-right: 50%;
               transform: translate(-50%,-50%);
           }
           .btn{
               border: 1px solid black;
               padding: 1px 20px;
               color: white;
               transition: 0.5 ease;
               font-size: 18px;  
               text-decoration: none;
                border-radius: 5px;
                background-color: black;
           }
           .btn:hover{
               background-color: purple;
               color: black;
           }
        
        
        
        
        </style>    
         <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        
        
        <header>
            <nav class="nav-wrapper transparent">
                <div class="container">
                
                    <a href="" class="brand-logo">E-classifieds</a>
                    <a href="" class="sidenav-trigger" data-target="mobile"><i class="material-icons">menu</i></a>
                    
                    <ul class="right hide-on-med-and-down">
                   <li><a href="viewdetails1.jsp"> <i class='bx bxs-home'></i>Home</a></li>
                     <li>Education <i class='bx bx-caret-down'></i><div class="sub-menu">
                <ul>
                   
                      <li>  <a href="universityresponse1.jsp">university</a>
                        <li><a href="collegeresponse1.jsp">college</a>
                        <li><a href="courseresponse1.jsp">course</a>
                   
                </ul>
            </div>
        </li>
                     
                     <li><a href="rentalresponse1.jsp">Rental</a></li>
                     <li><a href="realestateresponse1.jsp">Realestate</a></li>
                     <li><a href="cinemaresponse1.jsp">Cinema Halls</a></li>
                     <li><a href="carsresponse1.jsp">Cars</a></li>
                      <li><a href="jobsresponse1.jsp">Jobs</a></li>
                     <li><a href="index.jsp">Logout</a></li>
                </ul>
                  
                 </div>    
        
            </header>
        
        
        
        
        <center>
       <h4>Cinema Halls  Details</h4>

       <table border="1">
<tr><br>
<th>uid</th>
<th>Theater_Name</th>
<th>Movie_Name</th>
<th>Duration_of_the_movie</th>
<th>Price</th>
<th>Location</th>
<th>Parking_Availability</th>
<th>Seating</th>
<th>City</th>
<th>Contact</th>
<th>Date</th>

</tr>
<%
try{
    String s=request.getParameter("name");
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    
    Statement st=con.createStatement();
    //st.executeUpdate("insert into admin values('"+name+"','"+pass+"')");
    ResultSet rs=st.executeQuery("select *from cinema where Location='"+s+"'");
    //if(name.equals("admin") & pass.equals("admin"))
        while(rs.next())
         {
int id=rs.getInt("uid");
String a=rs.getString("Theater_Name"); 
String b=rs.getString("Movie_Name");
String c=rs.getString("Duration_of_the_movie");
String d=rs.getString("Price");
String e=rs.getString("Location");
String f=rs.getString("Parking_Availability");
String g=rs.getString("Seating");
String h=rs.getString("City");
String i=rs.getString("Contact");
String j=rs.getString("Date");
%>
<tr>
 <td><%=id%></td>
<td><%=a%></td>    
<td><%=b%></td>
<td><%=c%></td>
<td><%=d%></td>
<td><%=e%></td>
<td><%=f%></td>
<td><%=g%></td>
<td><%=h%></td>
<td><%=i%></td>
<td><%=j%></td>



</tr>
<%
}
}catch(Exception e)           
         {
e.printStackTrace();
}
    
%><br>
</center>
       </table><br><br>
        <div  class="button">
 <a href="cinemaresponse1.jsp" class="btn">Back</a>
     </div>
    </body></center><br>
</html>
