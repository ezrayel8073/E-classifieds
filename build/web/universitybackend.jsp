<%-- 
    Document   : universitybackend
    Created on : Apr 3, 2024, 10:19:00 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("University_Id");
     String s1=request.getParameter("Name"); 
String s2=request.getParameter("Location");
String s3=request.getParameter("Address");
String s4=request.getParameter("Date");
String s5=request.getParameter("About");
String s6=request.getParameter("Web_Address"); 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into university (University_Id,Name,Location,Address,Date,About,Web_Address) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
