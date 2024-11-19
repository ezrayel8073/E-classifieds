<%-- 
    Document   : courseupdatetablecon
    Created on : Apr 18, 2024, 8:05:01 PM
    Author     : hp
--%>

<%@page import="org.apache.tomcat.jni.Address"%>
<%@page import="javax.xml.stream.Location"%>
<%@page import="java.util.jar.Attributes.Name"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uid=request.getParameter("uid");
String college=request.getParameter("Select_College");        
String courseId=request.getParameter("Course_Id");
String Name=request.getParameter("Course_Name");
String set=request.getParameter("No_of_set");
String duration=request.getParameter("Duration_of_course");
String fees=request.getParameter("Fees_Details");
String EstablishedDate=request.getParameter("Date");
%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update course set uid='"+uid+"',Select_College='"+college+"',Course_Id='"+courseId+"',Course_Name='"+Name+"',No_of_set='"+set+"',Duration_of_course='"+duration+"',Fees_Details='"+fees+"',Date='"+EstablishedDate+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("courseviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("courseviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>