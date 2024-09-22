<%-- 
    Document   : Carsbackend
    Created on : Apr 3, 2024, 10:26:55 PM
    Author     : hp
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Company_Name");
     String s1=request.getParameter("Owners_Name"); 
String s2=request.getParameter("Color");
String s3=request.getParameter("Mileage");
String s4=request.getParameter("Fuel_Type");
String s5=request.getParameter("Top_Speed");
String s6=request.getParameter("Kilometers_Driven"); 
String s7=request.getParameter("Services_Done");  
String s8=request.getParameter("Contact"); 
String s9=request.getParameter("Date");
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into cars (Company_Name,Owners_Name,Color,Mileage,Fuel_Type,Top_Speed,Kilometers_Driven,Services_Done,Contact,Date) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
