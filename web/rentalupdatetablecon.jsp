<%-- 
    Document   : rentalupdatetablecon
    Created on : Apr 18, 2024, 8:39:08 PM
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
String No=request.getParameter("House_No");        
String Name=request.getParameter("Owners_Name");
String Facilities=request.getParameter("Facilities_of_House");
String Address=request.getParameter("Address");
String Location=request.getParameter("Location");
String Rent=request.getParameter("Rent");
String Rent_in_Advance=request.getParameter("Rent_in_Advance");
String City=request.getParameter("City");
String Contact=request.getParameter("Contact");


%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update rental set uid='"+uid+"',House_No='"+No+"',Owners_Name='"+Name+"',Facilities_of_House='"+Facilities+"',Address='"+Address+"',Location='"+Location+"',Rent='"+Rent+"',Rent_in_Advance='"+Rent_in_Advance+"',City='"+City+"',Contact='"+Contact+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("Rentalviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("Rentalviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>