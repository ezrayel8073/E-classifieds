<%-- 
    Document   : Jobsbackend
    Created on : Apr 3, 2024, 10:25:10 PM
    Author     : hp
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Job_Code");
     String s1=request.getParameter("Job_Name"); 
String s2=request.getParameter("Qualification");
String s3=request.getParameter("Required_skills");
String s4=request.getParameter("Responsibilities");
String s5=request.getParameter("Experience");
String s6=request.getParameter("No_of_vacancies");
String s7=request.getParameter("Last_Date"); 
String s8=request.getParameter("Contact");
 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into job (Job_Code,Job_Name,Qualification,Required_skills,Responsibilities,Experience,No_of_vacancies,Last_Date,Contact) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
        
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
