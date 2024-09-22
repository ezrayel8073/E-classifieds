<%-- 
    Document   : Cinemabackend
    Created on : Apr 3, 2024, 10:24:18 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Theater_Name");
     String s1=request.getParameter("Movie_Name"); 
String s2=request.getParameter("Duration_of_the_movie");
String s3=request.getParameter("Price");
String s4=request.getParameter("Location");
String s5=request.getParameter("Parking_Availability");
String s6=request.getParameter("Seating");
String s7=request.getParameter("City"); 
String s8=request.getParameter("Contact");
String s9=request.getParameter("Date"); 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into cinema (Theater_Name,Movie_Name,Duration_of_the_movie,Price,Location,Parking_Availability,Seating,City,Contact,Date) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
        
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
