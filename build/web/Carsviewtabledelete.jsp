<%-- 
    Document   : Carsviewtabledelete
    Created on : Apr 4, 2024, 2:17:14 PM
    Author     : hp
--%>

<%-- 
    Document   : delete
    Created on : 03-Apr-2024, 14:30:09
    Author     : dell
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 int key=Integer.parseInt(request.getParameter("uid"));
    System.out.println(key);
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("delete from cars where uid="+key);
    if(a!=0)
    {
        response.sendRedirect("Carsviewtable.jsp?msg=Successfully deleted");
    } else
    {
       response.sendRedirect("Carsviewtable.jsp?msg=Delete fail"); 
    }} catch(Exception e)
               {
e.printStackTrace();
                    
}
%>
