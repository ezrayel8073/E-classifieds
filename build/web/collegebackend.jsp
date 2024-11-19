<%-- 
    Document   : collegebackend
    Created on : Apr 3, 2024, 10:20:21 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("University");
     String s1=request.getParameter("College_Id"); 
String s2=request.getParameter("Name");
String s3=request.getParameter("Address");
String s4=request.getParameter("Location");
String s5=request.getParameter("Web_Address"); 
String s6=request.getParameter("About");
String s7=request.getParameter("Date");

 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into college (University,College_Id,Name,Address,Location,Web_Address,About,Date) values ('"+s+"','"+s1+"','"+s2+"',"  +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
