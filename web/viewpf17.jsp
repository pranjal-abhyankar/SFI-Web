<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Home</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/slider.js"></script>
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/img/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=Generator content="Microsoft Word 12 (filtered)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-link:"Header Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-link:"Footer Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.HeaderChar
	{mso-style-name:"Header Char";
	mso-style-link:Header;}
span.FooterChar
	{mso-style-name:"Footer Char";
	mso-style-link:Footer;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{font-size:10.0pt;}
 /* Page Definitions */
 @page Section1
	{size:8.5in 11.0in;
	margin:.5in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
.style28 {font-size: 18px}
.style29 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style32 {
	font-size: 18px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style34 {font-size: 18; font-weight: bold; font-family: Arial, Helvetica, sans-serif; }
-->
</style>



</head>
<body>
               	      <%String s1;
HttpSession session1;
session1=request.getSession(false);



try 
{

/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id localhost and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");

// declare a connection by using Connection interface 

String name= request.getParameter("name");
String state = request.getParameter("state");
String event = request.getParameter("event");
String gender= request.getParameter("gender");

/* declare object of Statement interface that is used for executing sql statements. */ 
Statement statement = null; 

// declare a resultset that uses as a table for output data from tha table. 

ResultSet rs = null; 

// Load JDBC driver "com.mysql.jdbc.Driver" 



/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/ 



/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */ 

statement = connection.createStatement(); 

String pid = "select min(pid) from participant_details";
rs = statement.executeQuery(pid);
while(rs.next()){pid = rs.getString(1);}

String uppid = "update participant_details set pid = pid - "+pid+" + 1";
statement.executeUpdate(uppid);


int rounds=6;

// sql query to retrieve values from the specified table. 
{
 
{      

 String sql = ("SELECT * FROM participant_details order by pid");
rs = statement.executeQuery(sql); 
%>
               	      <% 
while (rs.next()) 
{ 
state = rs.getString("state");
if(state.equalsIgnoreCase("MH")){state = "MAHARASHTRA";}
if(state.equalsIgnoreCase("MP")){state = "MADHYA PRADESH";}
if(state.equalsIgnoreCase("KAR")){state = "KARNATAKA";}
if(state.equalsIgnoreCase("WB")){state = "WEST BENGAL";}
if(state.equalsIgnoreCase("UP")){state = "UTTAR PRADESH";}
if(state.equalsIgnoreCase("KER")){state = "KERALA";}
if(state.equalsIgnoreCase("DL")){state = "DELHI";}
if(state.equalsIgnoreCase("TN")){state = "TAMIL NADU";}
if(state.equalsIgnoreCase("MAN")){state = "MANIPUR";}
    %>

<div class="main-indents">
    <div class="main">
        <!-- Header -->
        <!-- Slider -->
        <!-- Slider -->
        <!-- Content -->

<div class=Section1>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'><img src="img/Fedration-logo.jpg" width="144" height="139" align="left"><b><span style='font-size:18.0pt;line-height:115%;
font-family:"Arial","sans-serif"'>SWIMMING</span></b></p>

<p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt'><b><span
style='font-size:18.0pt;line-height:115%;font-family:"Arial","sans-serif"'> FEDERATION
OF</span></b></p>

<p class=MsoNormal style='margin-right:-.75in'><b><span style='font-size:
18.0pt;line-height:115%;font-family:"Arial","sans-serif"'> INDIA</span></b><b><i><u><span style='font-size:14.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Official Diving Sheet)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u></i></b><b><u><span style='font-size:10.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>Date</span></u></b><b><u><span
style='font-size:18.0pt;line-height:115%;font-family:"Arial","sans-serif"'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.</span></u></b></p>

      <p class=MsoNormal style2 style='margin-right:-.75in'><span style='line-height:50%;font-family:Arial,sans-serif'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COMPETITOR
NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNIT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;START NO</span></p>


      <table cellpadding=0 cellspacing=0 align=left >
 <tr>
  <td width=21 height=20></td>
  <td width=340> <span class="style32"><strong><%=rs.getString("name")%></strong> </span></td>
  
  <td width=340><span class="style32"><%=state%> </span></td>
  <td width=32><span class="style32"><%=rs.getString(1)%></span></td>
  <td width=132></td>
 </tr>
 </table>

<p class=MsoNormal style2 style='margin-right:-.75in; margin-bottom: -20px;'>&nbsp; </p>
<p class=MsoNormal style='margin-right:-.75in' style2><span style='line-height:115%;font-family:Arial,sans-serif'>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender<span class="style29">&nbsp;&nbsp;&nbsp;<%=rs.getString("gender")%>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Event </span> <span class="style29">&nbsp;&nbsp;<%if(rs.getString("event").equalsIgnoreCase("springboard")){%><%=rs.getString("height")%>mtr.<%}%>  <%=rs.getString("event")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 align=left
 width=1573 style='width:700.3pt;border-collapse:collapse;border:none;
 margin-left:6.75pt;margin-right:6.75pt'>
 <tr style='height:51.7pt'>
  <td width=51 valign=top style='width:38.05pt;border:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></p>  </td>
  <td width=108 valign=top style='width:81.15pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=58 valign=top style='width:43.25pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=80 valign=top style='width:43.9pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>&nbsp;</td>
  <td width=59 valign=top style='width:43.9pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=508 colspan=6 valign=middle style='width:380.7pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal align=center style='margin-top:0.25in;margin-right:-.75in;
  margin-bottom:0in;margin-left:0in;margin-bottom:.0001pt;text-align:center;
  line-height:normal'><b><span style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Judges
  Awards</span></b></p>  </td>
  <td width=185 colspan=2 valign=top style='width:139.1pt;border:solid black 1.0pt;
  border-left:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Progressive</span></b></p>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Points</span></b></p>  </td>
  </tr>
 <tr style='height:51.7pt'>
  <td width=51 valign=top style='width:38.05pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=108 valign=middle style='width:81.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Dive No.</span></b></p>  </td>
  <td width=58 valign=top style='width:43.25pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Pos</span></b></p>  </td>
  <td width=59 valign=top style='width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Ht.</span></b></p>  </td>
  <td width=59 valign=top style='width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>DD</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>1</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>2</span></b></p>  </td>
  <td width=68 valign=top style='width:51.25pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>3</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>4</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>5</span></b></p>  </td>
  <td width=127 valign=top style='width:95.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:14.0pt;font-family:"Arial","sans-serif"'>Sub Total</span></b></p>  </td>
  <td width=185 valign=top style='width:73.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=88 valign=top style='width:65.9pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  </tr>
    <%for(int i = 1; i<=rounds; i++){%>

 <tr style='height:51.7pt'>
  <td width=51 valign=top style='width:38.05pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:15.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b><%=i%></p>  </td>
  <td width=108 align="center" valign=middle style='width:81.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:.25in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:15.0pt;font-family:"Arial","sans-serif"'>&nbsp;<%=rs.getString("dive"+i)%></span></b></p>  </td>
  <td width=58 valign=top style='width:43.25pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:15.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b><b><span style="font-size:15.0pt;font-family:Arial,sans-serif"><%=rs.getString("dive"+i+"_pos")%></span></b></p>  </td>
  <td width=58 valign=top style='width:43.25pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:15.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b><b><span style="font-size:15.0pt;font-family:Arial,sans-serif"><%=rs.getString("height")%></span></b></p>  </td>
  <td width=59 valign=top style='width:43.9pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:51.7pt'>
  <p class=MsoNormal style='margin-top:0.25in;margin-right:.15in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b><b><span style="font-size:15.0pt;font-family:Arial,sans-serif"><%=rs.getString("dive"+i+"_dd")%></span></b></p>  </td>
  <td width=508 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=68 valign=top style='width:51.25pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=78 valign=top style='width:58.55pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=127 valign=top style='width:95.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:10.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=185 valign=top style='width:73.15pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  <td width=88 valign=top style='width:65.9pt;border-top:none;border-left:none;
  border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:51.7pt'>
  <p class=MsoNormal style='margin-top:0in;margin-right:-.75in;margin-bottom:
  0in;margin-left:0in;margin-bottom:.0001pt;line-height:normal'><b><span
  style='font-size:12.0pt;font-family:"Arial","sans-serif"'>&nbsp;</span></b></p>  </td>
  </tr>
  <% } %>
 </table>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'></span></p>
<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:16.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>Athelete&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Coach&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Secretary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Referee</span></p>

<p class=MsoNormal style='margin-right:-.75in'><span style='font-size:12.0pt;
line-height:115%;font-family:"Arial","sans-serif"'>&nbsp;</span></p>

</div>

<%@ page import = "java.sql.*" %>

    
<%@ page import="java.io.*" %> 

<%@page import ="java.util.*"%>
<% 
} 
  %> 
     
<% 

// close all the connections.

rs.close(); 
statement.close(); 
connection.close(); 
}

 }}
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
out.println(ex); 
} 
%> 

        <!-- Footer -->
  </div>
</div>
</body>
</html>