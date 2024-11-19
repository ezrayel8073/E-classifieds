<%-- 
    Document   : universityupdatetablecon
    Created on : Apr 18, 2024, 10:45:16 AM
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
String UniversityId=request.getParameter("University_Id");        
String UniversityName=request.getParameter("Name");
String UniversityLocation=request.getParameter("Location");
String UniversityAddress=request.getParameter("Address");
String EstablishedDate=request.getParameter("Date");
String AboutCollege=request.getParameter("About");
String Webaddress=request.getParameter("Web_Address");
%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update university set uid='"+uid+"',University_Id='"+UniversityId+"',Name='"+UniversityName+"',Location='"+UniversityLocation+"',Address='"+UniversityAddress+"',Date='"+EstablishedDate+"',About='"+AboutCollege+"',Address='"+Webaddress+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("universityviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("universityviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>