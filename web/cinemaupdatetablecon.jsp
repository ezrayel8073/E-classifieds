<%-- 
    Document   : cinemaupdatetablecon
    Created on : Apr 18, 2024, 9:24:56 PM
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
String Name=request.getParameter("Theater_Name");        
String Movie_Name=request.getParameter("Movie_Name");
String Duration=request.getParameter("Duration_of_the_movie");
String Price=request.getParameter("Price");
String Location=request.getParameter("Location");
String Parking_Availability=request.getParameter("Parking_Availability");
String Seating=request.getParameter("Seating");
String City=request.getParameter("City");
String Contact=request.getParameter("Contact");
 String Date=request.getParameter("Date");

%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update cinema set uid='"+uid+"',Theater_Name='"+Name+"',Movie_Name='"+Movie_Name+"',Duration_of_the_movie='"+Duration+"',Price='"+Price+"',Location='"+Location+"',Parking_Availability='"+Parking_Availability+"',Seating='"+Seating+"',City='"+City+"',Contact='"+Contact+"',Date='"+Date+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("Cinemaviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("Cinemaviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>