<%-- 
    Document   : resume
    Created on : Jun 21, 2014, 11:09:12 AM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
 
          <%String title;
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
int uid = 1;

/* declare object of Statement interface that is used for executing sql statements. */ 

Statement statement = null; 

// declare a resultset that uses as a table for output data from tha table. 

ResultSet rs = null; 

// Load JDBC driver "com.mysql.jdbc.Driver" 



/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/ 



/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */ 

statement = connection.createStatement(); 
String code1 = null;
String code2 = null;
String c2 = null;
String c1 = null;
ResultSet rs1 = null;
String round = "select * from round";
rs = statement.executeQuery(round);
while(rs.next()){round = rs.getString(1);} 
  
String pid = "select min(pid) from participant_details";
rs = statement.executeQuery(pid);
while(rs.next()){pid = rs.getString(1);}

pid = "select max(pid) from participant_details";
rs = statement.executeQuery(pid);
while(rs.next()){pid = rs.getString(1);}

// sql query to retrieve values from the specified table. 
String display = "select * from active_participant where pid = 1";
rs1=statement.executeQuery(display);

response.sendRedirect("activitysub.jsp");

}
catch (NullPointerException ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
} 
catch (Exception e) 
{out.print(e);
}
        %>
     </body>
</html>
