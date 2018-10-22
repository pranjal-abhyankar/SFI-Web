<%
 String title;
 HttpSession titlesession = request.getSession();
title = titlesession.getAttribute("title").toString();
%>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%
try
               {
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");

Statement statement = connection.createStatement();
%>  

<% 
{
String date1= request.getParameter("date1");
String time1= request.getParameter("time1");
String date2= request.getParameter("date2");
String time2= request.getParameter("time2");
String date3= request.getParameter("date3");
String time3= request.getParameter("time3");
String date4= request.getParameter("date4");
String time4= request.getParameter("time4");
String date5= request.getParameter("date5");
String time5= request.getParameter("time5");
String date6= request.getParameter("date6");
String time6= request.getParameter("time6");
String date7= request.getParameter("date7");
String time7= request.getParameter("time7");
String date8= request.getParameter("date8");
String time8= request.getParameter("time8");
String date9= request.getParameter("date9");
String time9= request.getParameter("time9");
String date10= request.getParameter("date10");
String time10= request.getParameter("time10");
String date11= request.getParameter("date11");
String time11= request.getParameter("time11");
String date12= request.getParameter("date12");
String time12= request.getParameter("time12");
String date13= request.getParameter("date13");
String time13= request.getParameter("time13");
String date14= request.getParameter("date14");
String time14= request.getParameter("time14");
String date15= request.getParameter("date15");
String time15= request.getParameter("time15");
String date16= request.getParameter("date16");
String time16= request.getParameter("time16");
String date17= request.getParameter("date17");
String time17= request.getParameter("time17");
String date18= request.getParameter("date18");
String time18= request.getParameter("time18");

String sql1 = "update schedule set date = '"+date1+"' , Time = '"+time1+"' where uid = 1";
          out.print(sql1)            
    statement.executeUpdate(sql1);
String sql2 = "update schedule set date = '"+date2+"' , Time = '"+time2+"' where uid = 2";
                      
    statement.executeUpdate(sql2);
/*sql1 = "update schedule set date = '"+date3+"' , Time = '"+time3+"' where uid = '3'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date4+"' , Time = '"+time4+"' where uid = '4'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date5+"' , Time = '"+time5+"' where uid = '13'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date6+"' , Time = '"+time6+"' where uid = '14'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date7+"' , Time = '"+time7+"' where uid = '5'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date8+"' , Time = '"+time8+"' where uid = '6'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date9+"' , Time = '"+time9+"' where uid = '7'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date10+"' , Time = '"+time10+"' where uid = '8'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date11+"' , Time = '"+time11+"' where uid = '15'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date12+"' , Time = '"+time12+"' where uid = '16'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date13+"' , Time = '"+time13+"' where uid = '9'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date14+"' , Time = '"+time14+"' where uid = '10'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date15+"' , Time = '"+time15+"' where uid = '11'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date16+"' , Time = '"+time16+"' where uid = '12'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date17+"' , Time = '"+time17+"' where uid = '17'";
                      
    statement.executeUpdate(sql1);
sql1 = "update schedule set date = '"+date18+"' , Time = '"+time18+"' where uid = '18'";
                      
    statement.executeUpdate(sql1);
  */  String update ="insert into schedule_copy select * from schedule order by date, time";
    statement.executeUpdate(update);
    {

}                  %>
<% 

// close all the connections.
//response.sendRedirect("eventhome.jsp");
statement.close(); 
connection.close(); 
 }}
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
out.print(ex);
} 
%>