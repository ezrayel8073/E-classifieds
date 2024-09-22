<%-- 
    Document   : Rentalviewtabledelete
    Created on : Apr 4, 2024, 3:35:15 PM
    Author     : hp
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
    int a=st.executeUpdate("delete from rental where uid="+key);
    if(a!=0)
    {
        response.sendRedirect("Rentalviewtable.jsp?msg=Successfully deleted");
    } else
    {
       response.sendRedirect("Rentalviewtable.jsp?msg=Delete fail"); 
    }} catch(Exception e)
               {
e.printStackTrace();
                    
}
%>
