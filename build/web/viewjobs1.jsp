<%-- 
    Document   : viewjobs1
    Created on : Apr 5, 2024, 10:30:40 PM
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
        <title> Jobs Details </title>
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
            width: 80%;
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
     <h4>Jobs Details</h4>

       <table border="1">
<tr><br>
<th>uid</th>
<th>Job_Code</th>
<th>Job_Name</th>
<th>Qualification</th>
<th>Required_skills</th>
<th>Responsibilities</th>
<th>Experience</th>
<th>No_of_vacancies</th>
<th>Last_Date</th>
<th>Contact</th>

</tr>
<%
try{
    String s=request.getParameter("name");
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    
    Statement st=con.createStatement();
    //st.executeUpdate("insert into admin values('"+name+"','"+pass+"')");
    ResultSet rs=st.executeQuery("select *from job where Qualification='"+s+"'");
    //if(name.equals("admin") & pass.equals("admin"))
        while(rs.next())
         {
int id=rs.getInt("uid");
String a=rs.getString("Job_Code"); 
String b=rs.getString("Job_Name");
String c=rs.getString("Qualification");
String d=rs.getString("Required_skills");
String e=rs.getString("Responsibilities");
String f=rs.getString("Experience");
String g=rs.getString("No_of_vacancies");
String h=rs.getString("Last_Date");
String i=rs.getString("Contact");
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


</tr>
<%
}
}catch(Exception e)           
         {
e.printStackTrace();
}
    
%><br>
       </table><br><br>
       <div  class="button">
 <a href="jobsresponse1.jsp" class="btn">Back</a>
     </div>
    </body></center><br>
</html>