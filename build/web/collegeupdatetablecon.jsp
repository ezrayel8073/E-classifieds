<%-- 
    Document   : collegeupdatetablecon
    Created on : Apr 18, 2024, 7:15:02 PM
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
String university=request.getParameter("University");        
String collegeId=request.getParameter("College_Id");
String Name=request.getParameter("Name");
String Address=request.getParameter("Address");
String Location=request.getParameter("Location");
String WebAddress=request.getParameter("Web_Address");
String AboutCollege=request.getParameter("About");
String EstablishedDate=request.getParameter("Date");
%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update college set uid='"+uid+"',University='"+university+"',College_Id='"+collegeId+"',Name='"+Name+"',Address='"+Address+"',Location='"+Location+"',Web_Address='"+WebAddress+"',About='"+AboutCollege+"',Date='"+EstablishedDate+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("collegeviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("collegeviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>