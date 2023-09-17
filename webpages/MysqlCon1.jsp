
<%@page import="java.sql.*" %>
<% 
  String Email = request.getParameter("email");
  String Password = request.getParameter("password"); 
  Class.forName("com.mysql.jdbc.Driver");  
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact", "root", "root"); 
  PreparedStatement ps = con.prepareStatement("INSERT INTO log(Email, Password) VALUES ( ?, ?)");
  ps.setString(1, Email);
  ps.setString(2, Password);
  int row= ps.executeUpdate();
  System.out.println(ps);
  response.sendRedirect("index.html");
%>
