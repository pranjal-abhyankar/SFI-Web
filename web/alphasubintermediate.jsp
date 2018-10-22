          <%
          String number = request.getParameter("order");
          
          
          
          String title;String code1=null;String code2=null;
          
          
HttpSession titlesession;
titlesession=request.getSession();
title=titlesession.getAttribute("title").toString();
          
          
          
          %>
 
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%><% 
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
String competition = request.getParameter("order");
String boys = null;
String girls = null;
out.print(competition);
String roundupdate = "update round set round = 1";
statement.executeUpdate(roundupdate);
String delactive = "delete from active_participant";
statement.executeUpdate(delactive);
String round = "select * from round";
rs = statement.executeQuery(round);
while(rs.next()){round = rs.getString(1);} 

String updatesch = "update schedule_copy set status = 'inprogress'";
statement.executeUpdate(updatesch);
  
String pid = "select min(pid) from participant_details";
rs = statement.executeQuery(pid);
while(rs.next()){pid = rs.getString(1);}

String uppid = "update participant_details set pid = pid - "+pid+" + 1";
statement.executeUpdate(uppid);

pid = "select max(pid) from participant_details";
rs = statement.executeQuery(pid);
while(rs.next()){pid = rs.getString(1);}


    
String shift = "insert into active_participant  select * from participant_details on duplicate key update pid = 1"; 
statement.executeUpdate(shift);

String roundover = "insert into active_participant (pid, name) values ("+pid+"+1 , 'Round Over')";
statement.executeUpdate(roundover);

String insert="Insert into score (name, dive, position) select name, dive"+round+", dive"+round+"_pos from participant_details where pid = 1";
statement.executeUpdate(insert);
response.sendRedirect("activitysub.jsp");


    

// close all the connections.

rs.close(); 
statement.close(); 
connection.close(); 
} 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
out.println(ex); 
} 
        %>