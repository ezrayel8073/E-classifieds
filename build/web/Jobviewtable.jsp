<%-- 
    Document   : Jobviewtable
    Created on : Apr 4, 2024, 3:40:42 PM
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
        <title> Jobs Details </title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #777777;
            color: black;
            margin: 0;
            padding: 0;
        }
        
        
         ul{
            
              list-style-type: none;
              margin-top: 20px;
              min-height: 600px;
              margin-right: 40px;
              font-size: 17px; 
               font-weight: bold;
             
          }
          ul li{
              display:inline-block;
              color: black;
          }
          ul li a{
              text-decoration: none;
              color: black;
              padding: 5px 20px;
              border: 4px solid transparent;
              transition: 0.5 ease;
          }
          ul li a:hover{
              background-color:white;
              color: black;
          } 
           ul li.active a{
              background-color:white;
              color: black;
           }
           
           .main{
               max-width: 1200px;
               margin: auto;
           }
           .title{
               position: absolute;
               top: 40%;
               left: 50%;
               transform: translate(-50%,-50%);
           }
           .title h1{
               color: white;
               font-size: 70px;
           }
           
           .sub-menu{
               display: none;
               top:1%;
               position: relative;     
           }
           .sub-menu ul{
               position: absolute;
           }
           .main ul li:hover .sub-menu{
               display: block;
               position: absolute;
               background-color: rgb(0, 45, 117);
               margin-top: 30px;
               margin-left: -8px;
           }
           .main ul li:hover .sub-menu ul{
               display: block;
               margin: 5px;
           }
          .main ul li:hover .sub-menu ul li{
              width:75px;
              padding: 5px;
              border-bottom: 1px white;
              background: transparent;
              transition: 0.4 ease;
              text-align: left;
              border-radius: 0px;  
          }
          
        

        h1 {
             margin-top: -40%;
            text-align: center;
            color: black;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            padding: 6px;
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

        a {
            text-decoration: none;
            color: black;
        }

        a:hover {
            text-decoration: underline;
            color: purple;
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
               padding: 5px 20px;
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
        
        
        <center> <header>
           <div class="main">
               
              
               <ul>
    
     <li class="active"> <a href="home2.jsp"><i class='bx bxs-home'></i> Home</a> </li> 
      <li>  Education<i class='bx bx-caret-down'></i>
          <div class="sub-menu">
                <ul>
                   
                      <li>  <a href="University.jsp">university</a>
                        <li><a href="college.jsp">college</a>
                        <li><a href="Course.jsp">course</a>
                   
                </ul>
                
            </div>
           
        </li>
      <li>  <a href="RentalModel.jsp">Rental</a></li>
       <li> <a href="RealEstate.jsp">Real Estate</a></li> 
       <li> <a href="Cinema.jsp">Cinema Halls </a></li> 
      <li>  <a href="Cars.jsp">Used Cars</a></li>
      <li>  <a href="Job.jsp">Jobs</a></li>
       
        <li> View Details <i class='bx bx-caret-down'></i></a>
            <div class="sub-menu">
                <ul>
                   
                         <li> <a href="universityresponse.jsp">University</a>
                         <li> <a href="collegeresponse.jsp">College</a>
                        <li> <a href="courseresponse.jsp">Course</a>
                        <li><a href="Rentalresponse.jsp">Rental</a>
                        <li><a href="Realestateresponse.jsp">RealEstate</a>
                        <li><a href="cinemaresponse.jsp">Cinema</a>
                         <li><a href="carsresponse.jsp">Cars</a>
                          <li><a href="jobsresponse.jsp">Jobs</a> 
                          <li><a href="Registrationresponse.jsp">Registrations</a>    
                </ul>
            </div>
        </li>
        <li> <a href="index.jsp">Logout</a></li>
       </ul>
      </div>
            </header></center><br>
        
        
        
        
        
        
        
        
        
        <center>
        <h1  target="blank">Jobs Details</h1>

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
<th>update</th>
<th>delete</th>
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
<td> <a href="jobsupdatetable.jsp?uid=<%=id%>&Job_Code=<%=a%>&Job_Name=<%=b%>&Qualification=<%=c%>&Required_skills=<%=d%>&Responsibilities=<%=e%>&Experience=<%=f%>&No_of_vacancies=<%=g%>&Last_Date=<%=h%>&Contact=<%=i%>"> update <i class='bx bxs-edit-alt'></i></td>
<td><a href="Jobviewtabledelete.jsp?uid=<%=id%>">delete <i class='bx bxs-trash-alt'></i></a></td>
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
 <a href="jobsresponse.jsp" class="btn">Back</a>
     </div>
    </body></center><br>
</html>