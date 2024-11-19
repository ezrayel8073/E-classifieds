<%-- 
    Document   : admin12
    Created on : Apr 3, 2024, 3:31:47 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%-- 
    Document   : aconn
    Created on : Mar 22, 2024, 3:39:52 PM
    Author     : admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("Username");
     String s1=request.getParameter("Password"); 
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eclassifieds","root","root");
    
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from admin where Username='"+s+"' and  Password='"+s1+"'");
    if(rs.next())
               {
    response.sendRedirect("home.jsp"); 
      }else
               {
    response.sendRedirect("adminlogin.jsp");
    }

}catch(Exception e)
               {
e.printStackTrace();
}
    
%>

