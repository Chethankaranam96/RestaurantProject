<%-- 
    Document   : MysqlCon
    Created on : 23 May, 2023, 11:44:22 AM
    Author     : karan
--%>




<%@page import="java.sql.*" %>
<%
  String FullName = request.getParameter("name"); 
  String Email = request.getParameter("email");
  String Mobile = request.getParameter("phno"); 
  String Password = request.getParameter("password"); 
  Class.forName("com.mysql.jdbc.Driver");  
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact", "root", "root"); 
  PreparedStatement ps = con.prepareStatement("INSERT INTO con(FullName, Email, Mobile, Password) VALUES ( ?, ?, ?, ?)");
  ps.setString(1, FullName);
  ps.setString(2, Email);
  ps.setString(3, Mobile);
  ps.setString(4, Password);
 int row= ps.executeUpdate();
  System.out.println(ps);
  response.sendRedirect("login.html");
%>
