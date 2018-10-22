<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Swimming Federation Of India</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/stylesfi.css" rel="stylesheet">
</head>

<body>
<%
 String title;
 HttpSession titlesession = request.getSession();
title = titlesession.getAttribute("title").toString();
%>
    <div class="brand"><img src = "img/logo.png"></div>
    

    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a style=" height: 92px" href="home.html"><img src="img/home1.png"></a>
                    </li>
                    <li><a href="schedule.jsp">Schedule</a>
                    </li>
                    <li><a href="entryform.jsp">Forms</a>
                    </li>
                    <li><a href="view.jsp">View</a>
                    </li>
                    <li><a href="#">Start</a>
                    </li>
                    <li><a href="results.jsp">Results</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        
<div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong><%=title%></strong>
                    </h2>
                    <hr>
                </div>
               	 
                                              <% 
try 
{

/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id localhost and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");

// declare a connection by using Connection interface 

String name= request.getParameter("name");
String dob = request.getParameter("dob");



/* declare object of Statement interface that is used for executing sql statements. */ 

Statement statement = null; 

// declare a resultset that uses as a table for output data from tha table. 

ResultSet rs = null; 

// Load JDBC driver "com.mysql.jdbc.Driver" 



/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/ 



/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */ 

statement = connection.createStatement(); 

// sql query to retrieve values from the specified table. 

{
 
{      

    String sql = ("SELECT * FROM schedule_copy");
    rs = statement.executeQuery(sql); 
%>
<form action="activity.jsp" method="post">
        <table width="100%" border="0">

<%while(rs.next())
       {
     if(rs.getString("status").equalsIgnoreCase("complete")){%>
    <tr style=" color: red">
      
     <% }
else{     
%>
<tr>
    <%
}
%>
     <th><%=rs.getString(3)%></th>
    <th><%=rs.getString(4)%></th>
    <th><%=rs.getString(5)%></th>
    <th><%=rs.getString(6)%></th>
    <th><%=rs.getString(7)%></th>
<%
if(rs.getString("status").equalsIgnoreCase("Pending")) {
%>
    <th>
       
    <input type ="checkbox" name="checkbox" id="m1" name="m1"></th>
        <%
}        
%> </tr>
  
<% 
    } 
  %> 
</table>
<br>
    <center> <input class="btn btn-default btn-lg" name="start" type="submit" value="Start"></center>

</form><br>
  <form action="resume.jsp" method="post"><center> <input class="btn btn-default btn-lg" name="resume" type="submit" value="Resume"></center></form>
<% 

// close all the connections.

rs.close(); 
statement.close(); 
connection.close(); 
} }}
catch (Exception ex) 
{ 
%>
<% 
out.println(ex); 
} 
        %>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%@page import="javax.servlet.*"%>        
                
            </div>
        </div>
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Innovative Infosoft</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>
