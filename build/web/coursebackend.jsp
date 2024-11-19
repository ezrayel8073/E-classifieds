<%-- 
    Document   : coursebackend
    Created on : Apr 3, 2024, 10:21:26 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Select_College");
     String s1=request.getParameter("Course_Id"); 
String s2=request.getParameter("Course_Name");
String s3=request.getParameter("No_of_set");
String s4=request.getParameter("Duration_of_course");
String s5=request.getParameter("Fees_Details");
String s6=request.getParameter("Date"); 

%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
   Statement st = con.createStatement();
        st.executeUpdate("insert into course (Select_College,Course_Id,Course_Name,No_of_set,Duration_of_course,Fees_Details,Date) values ('"+s+"','"+s1+"','"+s2+"',"
           +"'"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
        
        
          response.sendRedirect("home.jsp?msg=Register successfully");

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>
