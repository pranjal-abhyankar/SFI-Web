<%-- 
    Document   : activityintermediate
    Created on : Apr 23, 2014, 2:36:04 PM
    Author     : Ayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
    </p>
        <center>
        <h1><strong>
        </strong></h1>
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
int uid = 1;

/* declare object of Statement interface that is used for executing sql statements. */ 

Statement statement = null; 

// declare a resultset that uses as a table for output data from tha table. 

ResultSet rs = null; 

// Load JDBC driver "com.mysql.jdbc.Driver" 



/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/ 



/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */ 

statement = connection.createStatement(); 

// sql query to retrieve values from the specified table. 


String name = null;
String state = null;
String dive = null;
String pos = null;
String gender = null;
float dd = 0;
 
      

ResultSet rs1 = null;

    String round = "select * from round";
    rs = statement.executeQuery(round);
    while(rs.next()){round = rs.getString(1);}
    
    
String display = "select * from active_participant where pid = '1'";
rs1=statement.executeQuery(display);
while(rs1.next())
{     
 dd = rs1.getFloat("dive"+round+"_dd");
 name = rs1.getString(3);
 gender = rs1.getString("gender");
 state = rs1.getString("state");
 dive=rs1.getString("dive"+round);
 pos = rs1.getString("dive"+round+"_pos");
}
String judge1=null;
String judge2=null;
String judge3=null;
String judge4=null;
String judge5=null;
float f;

String participant = "select name from active_participant where pid = '1'";
rs = statement.executeQuery(participant);
while(rs.next()){participant = rs.getString(1);}




String score = "select * from score where name = '"+name+"' and dive = '"+dive+"' and position = '"+pos+"'";
out.print(score);
rs = statement.executeQuery(score);
while(rs.next())
       {
    judge1 = rs.getString("judge1");
    judge2 = rs.getString("judge2");
    judge3 = rs.getString("judge3");
    judge4 = rs.getString("judge4");
    judge5 = rs.getString("judge5");
    
}


         String update = "update score set sub_total = '0' , total = '0', judge1 = '0', judge2 = '0', judge3 = '0', judge4 = '0', judge5 = '0' where name = '"+name+"' and dive = '"+dive+"' and position = '"+pos+"'";
        statement.executeUpdate(update);

  
    
rs.close(); 
statement.close(); 
connection.close(); 
response.sendRedirect("activitysubcalculation.jsp");
} 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
 out.print(ex);
} 
        %>

</body>
</html>
