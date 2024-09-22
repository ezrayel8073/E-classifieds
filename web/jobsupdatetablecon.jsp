<%-- 
    Document   : jobsupdatetablecon
    Created on : Apr 18, 2024, 10:12:09 PM
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
String code=request.getParameter("Job_Code");        
String Name=request.getParameter("Job_Name");
String Qualification=request.getParameter("Qualification");
String Required_skills=request.getParameter("Required_skills");
String Responsibilities=request.getParameter("Responsibilities");
String Experience=request.getParameter("Experience");
String No_of_vacancies=request.getParameter("No_of_vacancies");
String Last_Date=request.getParameter("Last_Date");
String Contact=request.getParameter("Contact");


%>
<%
try{   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update job set uid='"+uid+"',Job_Code='"+code+"',Job_Name='"+Name+"',Qualification='"+Qualification+"',Required_skills='"+Required_skills+"',Responsibilities='"+Responsibilities+"',Experience='"+Experience+"',No_of_vacancies='"+No_of_vacancies+"',Last_Date='"+Last_Date+"',Contact='"+Contact+"' where uid='"+uid+"'");
    if(a!=0)
               {
        response.sendRedirect("Jobviewtable.jsp?msg=updated successfully");
    }
       else{
        response.sendRedirect("Jobviewtable.jsp?msg=not updated");
       }
            }catch(Exception w)
               {
w.printStackTrace();

}
%>