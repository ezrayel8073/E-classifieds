<%-- 
    Document   : Registrationbackend
    Created on : Apr 4, 2024, 9:14:52 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
     String s=request.getParameter("Username"); 
String s1=request.getParameter("Password");
String s2=request.getParameter("Email");
String s3=request.getParameter("Contact");

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    st.executeUpdate("insert into user (Username,Password,Email,Contact) values('"+s+"','"+s1+"','"+s2+"','"+s3+"')");
         
    response.sendRedirect("userlogin.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    

%>

