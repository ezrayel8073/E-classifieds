<%-- 
    Document   : realestatelupdatetablecon
    Created on : Apr 18, 2024, 9:05:27 PM
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
String No=request.getParameter("Plot_No");        
String Name=request.getParameter("Owners_Name");
String Facilities=request.getParameter("Facilities");
String Address=request.getParameter("Address");
String Location=request.getParameter("Location");
String Land_in_Acres=request.getParameter("Land_in_Acres");
String City=request.getParameter("City");
String Contact=request.getParameter("Contact");
String Date=request.getParameter("Date");

%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update realestate set uid='"+uid+"',Plot_No='"+No+"',Owners_Name='"+Name+"',Facilities='"+Facilities+"',Address='"+Address+"',Location='"+Location+"',Land_in_Acres='"+Land_in_Acres+"',City='"+City+"',Contact='"+Contact+"',Date='"+Date+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("RealEstateviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("RealEstateviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>