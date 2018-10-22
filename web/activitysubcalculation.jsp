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
String code = null;
/* String sql = ("select * from score where Name ='"+participant+"' ");
rs = statement.executeQuery(sql);
int flag = 0;
while(rs.next())
       {
flag =1;
}
if(flag==0)
       {
code = code2;      }
else
       {

code = code1;
} */


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


String delete="Delete from active_participant where name = '"+name+"'";
statement.executeUpdate(delete);
if(round.equalsIgnoreCase("1")){
String result = "insert into result (name, state, gender, event) values ('"+name+"' , '"+state+"' , '"+gender+"', '"+title+"') on duplicate key update name = '"+name+"'";
statement.executeUpdate(result);}
// close all the connections.


String lowest1 = "Select LEAST("+judge1+", "+judge2+", "+judge3+", "+judge4+", "+judge5+")";
        
ResultSet rs5 = statement.executeQuery(lowest1);
while(rs5.next())
       {if(rs5.getString(1).compareToIgnoreCase(judge1)==0){judge1="0";}
            else{if(rs5.getString(1).compareToIgnoreCase(judge2)==0){judge2="0";}
               else{if(rs5.getString(1).compareToIgnoreCase(judge3)==0){judge3="0";}
                   else{if(rs5.getString(1).compareToIgnoreCase(judge4)==0){judge4="0";}
                     else{if(rs5.getString(1).compareToIgnoreCase(judge5)==0){judge5="0";}}}}}}
        String highest = "Select GREATEST("+judge1+", "+judge2+", "+judge3+", "+judge4+", "+judge5+")";
ResultSet rs4 = statement.executeQuery(highest);
while(rs4.next())
       {if(rs4.getString(1).compareToIgnoreCase(judge1)==0){judge1="0";}
            else{if(rs4.getString(1).compareToIgnoreCase(judge2)==0){judge2="0";}
               else{if(rs4.getString(1).compareToIgnoreCase(judge3)==0){judge3="0";}
                   else{if(rs4.getString(1).compareToIgnoreCase(judge4)==0){judge4="0";}
                     else{if(rs4.getString(1).compareToIgnoreCase(judge5)==0){judge5="0";}}}}}}
                     
                     
   float a =Float.parseFloat(judge1)+Float.parseFloat(judge2)+Float.parseFloat(judge3)+Float.parseFloat(judge4)+Float.parseFloat(judge5);
        float total = a*dd;
        String updateresult = "update result set dive"+round+" = '"+total+"', final_total = final_total+'"+total+"' where name = '"+name+"'";
        statement.executeUpdate(updateresult);
                        

        String update = "update score set sub_total = '"+a+"', total = '"+total+"' where name = '"+name+"' and dive = '"+dive+"' and position = '"+pos+"'";
        out.println("SUB TOTAL = "+a);
        out.print("FINAL TOTAL = "+ total);
        statement.executeUpdate(update);

  String updatepd = "update active_participant set pid = pid - 1";
  statement.executeUpdate(updatepd);
  
   participant = "select gender,name from active_participant where pid = 1";
   String temp = null;
rs = statement.executeQuery(participant);
while(rs.next()){participant = rs.getString(1); temp=rs.getString(2);}
out.print(participant);
out.print(temp);
/* if(participant.equalsIgnoreCase("male")){
if(code1.contains("b")||code1.contains("m")){code=code1;} else{code = code2;}
}
else{
    if(code1.contains("g")||code1.contains("f")){code=code1;} else{code = code2;}
}  
out.print(code);
out.print(code1);
out.print(code2); */

    String insert="Insert into score (name, dive, position) select name, dive"+round+", dive"+round+"_pos from active_participant where pid = 1";
out.print(insert);
    statement.executeUpdate(insert);
  
    
rs.close(); 
statement.close(); 
connection.close(); 
response.sendRedirect("activitysub.jsp");
} 
catch (NullPointerException ex) 
{ 
%> 
<% 
response.sendRedirect("activitysub.jsp");
} 
catch (Exception e) 
{out.print(e);
}
        %>

</body>
</html>