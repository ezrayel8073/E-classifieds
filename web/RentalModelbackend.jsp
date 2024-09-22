<%-- 
    Document   : RentalModelbackend
    Created on : Apr 3, 2024, 10:23:21 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("House_No");
     String s1=request.getParameter("Owners_Name"); 
String s2=request.getParameter("Facilities_of_House");
String s3=request.getParameter("Address");
String s4=request.getParameter("Location");
String s5=request.getParameter("Rent");
String s6=request.getParameter("Rent_in_Advance"); 
String s7=request.getParameter("City");  
String s8=request.getParameter("Contact"); 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into rental (House_No,Owners_Name,Facilities_of_House,Address,Location,Rent,Rent_in_Advance,City,Contact) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
