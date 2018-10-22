<%@page import ="java.util.*"%>
<%@ page import = "java.sql.*" %>
<%
try
               {
String title= request.getParameter("title");
String event= request.getParameter("event");
String state = request.getParameter("state");
String city =request.getParameter("city");
String stadium	= request.getParameter("stadium");
String start = request.getParameter("startingdate");
String end = request.getParameter("endingdate");

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


//ResultSet rs = null;

Statement statement = connection.createStatement();


if (title!=null&&state!=null&&city!=null&&stadium!=null&&start!=null&&end!=null)
{
 
{      
 String sql = "INSERT INTO event (title, event, state, city, stadium, startdate, enddate) VALUES ('"+title+"', '"+event+"', '"+state+"', '"+city+"', '"+stadium+"', '"+start+"', '"+end+"')";
statement.executeUpdate(sql);
 String sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'male', 'Springboard', '1')";
statement.executeUpdate(sql1);
  sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'female', 'Springboard', '1')";
statement.executeUpdate(sql1);
  sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'male', 'Springboard', '3')";
statement.executeUpdate(sql1);
  sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'female', 'Springboard', '3')";
statement.executeUpdate(sql1);
  sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'male', 'Platform', '10')";
statement.executeUpdate(sql1);
  sql1 = "INSERT INTO schedule (title, gender, event, height) VALUES ('"+title+"', 'female', 'Platform', '10')";
statement.executeUpdate(sql1);
}
 }
%>



<%
response.sendRedirect("home.html");
//rs.close();
connection.close();
}
catch(Exception e)
        {
    out.println(e);
}
%>
