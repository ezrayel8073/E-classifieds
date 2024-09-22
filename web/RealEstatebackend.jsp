<%-- 
    Document   : RealEstatebackend
    Created on : Apr 3, 2024, 10:22:30 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Plot_No");
     String s1=request.getParameter("Owners_Name"); 
String s2=request.getParameter("Facilities");
String s3=request.getParameter("Address");
String s4=request.getParameter("Location");
String s5=request.getParameter("Land_in_Acres");
String s6=request.getParameter("City"); 
String s7=request.getParameter("Contact");
String s8=request.getParameter("Date"); 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into realestate (Plot_No,Owners_Name,Facilities,Address,Location,Land_in_Acres,City,Contact,Date) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
        
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
