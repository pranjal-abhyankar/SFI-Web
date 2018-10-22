<%-- 
    Document   : scorerefresh
    Created on : Apr 14, 2014, 1:53:02 PM
    Author     : Ajinkya
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="refresh" content="1"> 

        <title>JSP Page</title>
    </head>
    <body>
            <%@ page import ="java.io.BufferedWriter"%>
<%@page import = "java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

<%@page import ="java.io.IOException"%>
<%@page import ="java.io.OutputStreamWriter"%>
<%@page import ="java.io.FileWriter"%>

    <%
  String title;
  String code1=null;
  String code2=null;
  String order=null;
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
String score1 = null;
String score2 = null;
String score3 = null;
String score4 = null;
String score5 = null;
   
float sc1 = 0;  
float sc2 = 0;  
float sc3 = 0;  
float sc4 = 0;  
float sc5 = 0;  
   
String dive = null;
String position = null;   
String state = null;    
String participant = "select name,state from active_participant where pid = '1'";
rs = statement.executeQuery(participant);
while(rs.next()){participant = rs.getString(1); state = rs.getString(2);}
String code = null;
 String sql = ("select * from score where Name ='"+participant+"' ");
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
}

String score = "select * from score";
rs = statement.executeQuery(score);
while(rs.next())
{
dive = rs.getString("dive");
position = rs.getString("position");
  score1 = rs.getString("judge1");  
  score2 = rs.getString("judge2");  
  score3 = rs.getString("judge3");  
  score4 = rs.getString("judge4");  
  score5 = rs.getString("judge5");  

  sc1 = rs.getFloat("judge1");  
  sc2 = rs.getFloat("judge2");  
  sc3 = rs.getFloat("judge3");  
  sc4 = rs.getFloat("judge4");  
  sc5 = rs.getFloat("judge5");  
}

if(score1==null){score1 = ".";}
if(score2==null){score2 = ".";}
if(score3==null){score3 = ".";}
if(score4==null){score4 = ".";}
if(score5==null){score5 = ".";}
String content = null;
	String newLine = System.getProperty("line.separator");
if((sc1==0.0)&&(sc2==0.0)&&(sc3==0.0)&&(sc4==0.0)&&(sc5==0.0))
{
content =" A0"+participant+"\r\n"+ " B0 "+state+"  "+dive+" "+position+" \r\n"+"\r\n";
}
else
{
content =" A0"+" J1" +" J2"+" "+" J3"+"  J4"+" "+" J5"+"\r\n"+ " B0"+sc1+" "+sc2+" "+sc3+" "+sc4+" "+sc5+"\r\n"+"\r\n";
}
			File file = new File("C:/Users/Satyanshu/Desktop/score.txt");
 
			// if file doesnt exists, then create it
		//	if (!file.exists()) {
		//		file.createNewFile();
		//	}
 
			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.close();
 
 
{      
    String lowest1=null;
    String highest=null;
    if(score1!="."&&score2!="."&&score3!="."&&score4!="."&&score5!=".")
    { lowest1 = "Select LEAST("+score1+", "+score2+", "+score3+", "+score4+", "+score5+")";
    ResultSet rs5 = statement.executeQuery(lowest1);
while(rs5.next()){lowest1 = rs5.getString(1);}
}
int flaglow=0;
int flaghigh = 0;

//while(rs5.next())
  //     {if(rs5.getString(1).compareToIgnoreCase(score1)==0){score1="0";}
    //        else{if(rs5.getString(1).compareToIgnoreCase(score2)==0){score2="0";}
      //         else{if(rs5.getString(1).compareToIgnoreCase(score3)==0){score3="0";}
        //           else{if(rs5.getString(1).compareToIgnoreCase(score4)==0){score4="0";}
          //           else{if(rs5.getString(1).compareToIgnoreCase(score5)==0){score5="0";}}}}}}
            if(score1!="."&&score2!="."&&score3!="."&&score4!="."&&score5!=".")

            { highest = "Select GREATEST("+score1+", "+score2+", "+score3+", "+score4+", "+score5+")";
ResultSet rs4 = statement.executeQuery(highest);
while(rs4.next()){highest = rs4.getString(1);}
            }
//while(rs4.next())
  //     {if(rs4.getString(1).compareToIgnoreCase(score1)==0){score1="0";}
    //        else{if(rs4.getString(1).compareToIgnoreCase(score2)==0){score2="0";}
      //         else{if(rs4.getString(1).compareToIgnoreCase(score3)==0){score3="0";}
        //           else{if(rs4.getString(1).compareToIgnoreCase(score4)==0){score4="0";}
          //           else{if(rs4.getString(1).compareToIgnoreCase(score5)==0){score5="0";}}}}}}
        

   %>

        
        <table width="100%" height="100%" border="0">
  <tr>
      <th width="116" scope="col"><font size="24px"><%if(score1.equalsIgnoreCase(lowest1)&&flaglow==0) { %><u><%=score1%></u><%flaglow =1; } else { if(score1.equalsIgnoreCase(highest)&&flaghigh==0){ %><u><%=score1%></u><%flaghigh =1; } else { %><%=score1%> <% } } %></font></th>
    <th width="108" scope="col"><font size="24px"><%if(score2.equalsIgnoreCase(lowest1)&&flaglow==0) { %><u><%=score2%></u><%flaglow =1; } else { if(score2.equalsIgnoreCase(highest)&&flaghigh==0){ %><u><%=score2%></u><%flaghigh =1; } else { %><%=score2%> <% } } %></font></th>
    <th width="100" scope="col"><font size="24px">&nbsp;<%if(score3.equalsIgnoreCase(lowest1)&&flaglow==0) { %><u><%=score3%></u><%flaglow =1; } else { if(score3.equalsIgnoreCase(highest)&&flaghigh==0){ %><u><%=score3%></u><%flaghigh =1; } else { %><%=score3%> <% } } %></font></th>
    <th width="119" scope="col"><font size="24px">&nbsp; <%if(score4.equalsIgnoreCase(lowest1)&&flaglow==0) { %><u><%=score4%></u><%flaglow =1; } else { if(score4.equalsIgnoreCase(highest)&&flaghigh==0){ %><u><%=score4%></u><%flaghigh =1; } else { %><%=score4%> <% } } %></font></th>
    <th width="129" scope="col"><font size="24px">&nbsp; <%if(score5.equalsIgnoreCase(lowest1)&&flaglow==0) { %><u><%=score5%></u><%flaglow =1; } else { if(score5.equalsIgnoreCase(highest)&&flaghigh==0){ %><u><%=score5%></u><%flaghigh =1; } else { %><%=score5%> <% } } %></font></th>
  </tr>
</table>

        
        <% 

// close all the connections.

rs.close(); 
statement.close(); 
connection.close(); 
} }
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
out.println(ex); 
} 
        %>

    </body>
</html>