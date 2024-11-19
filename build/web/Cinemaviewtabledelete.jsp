<%-- 
    Document   : Cinemaviewtabledelete
    Created on : Apr 4, 2024, 3:38:42 PM
    Author     : hp
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 int key=Integer.parseInt(request.getParameter("uid"));
     
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/eclassifieds","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("delete from cinema where uid="+key);
    if(a!=0)
    {
        response.sendRedirect("Cinemaviewtable.jsp?msg=Successfully deleted");
    } else
    {
       response.sendRedirect("Cinemaviewtable.jsp?msg=Delete fail"); 
    }} catch(Exception e)
               {
e.printStackTrace();
                    
}
%>
