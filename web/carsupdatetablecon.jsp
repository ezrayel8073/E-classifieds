<%-- 
    Document   : carsupdatetablecon
    Created on : Apr 18, 2024, 9:46:25 PM
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
String Name=request.getParameter("Company_Name");        
String Owners_Name=request.getParameter("Owners_Name");
String Color=request.getParameter("Color");
String Mileage=request.getParameter("Mileage");
String Fuel_Type=request.getParameter("Fuel_Type");
String Top_Speed=request.getParameter("Top_Speed");
String Kilometers_Driven=request.getParameter("Kilometers_Driven");
String Services_Done=request.getParameter("Services_Done");
String Contact=request.getParameter("Contact");
 String Date=request.getParameter("Date");

%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update cars set uid='"+uid+"',Company_Name='"+Name+"',Owners_Name='"+Owners_Name+"',Color='"+Color+"',Mileage='"+Mileage+"',Fuel_Type='"+Fuel_Type+"',Top_Speed='"+Top_Speed+"',Kilometers_Driven='"+Kilometers_Driven+"',Services_Done='"+Services_Done+"',Contact='"+Contact+"',Date='"+Date+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("Carsviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("Carsviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>