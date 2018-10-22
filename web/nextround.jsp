 <%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%
  String title;
  String code1=null;
  String code2=null;
  String order=null;
HttpSession titlesession;
titlesession=request.getSession();
title=titlesession.getAttribute("title").toString();


  
          %>
<% 
try 
{

/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id localhost and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");

// declare a connection by using Connection interface 

/* declare object of Statement interface that is used for executing sql statements. */ 

Statement statement = null; 

// declare a resultset that uses as a table for output data from tha table. 

ResultSet rs = null; 

// Load JDBC driver "com.mysql.jdbc.Driver" 



/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/ 



/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */ 

statement = connection.createStatement(); 

// sql query to retrieve values from the specified table. 
String update = "update round set round = 1";
statement.executeUpdate(update);
String round = "select * from round";
rs = statement.executeQuery(round);
while(rs.next()){round = rs.getString(1);} 

String activedel = "delete from active_participant";
statement.executeUpdate(activedel);

String del = "update schedule_copy set status = 'Complete'";
statement.executeUpdate(del);


   {
    


response.sendRedirect("start.jsp");
{      

    
%>

<% 

// close all the connections.

rs.close(); 
statement.close(); 
connection.close(); 
} }}
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
out.println(ex); 
} 
        %>