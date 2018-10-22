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
  String code1=null;
  String code2=null;
  String order=null;
HttpSession titlesession;
titlesession=request.getSession();
title=titlesession.getAttribute("title").toString();
          
          
          
          
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
             <center>  <h2><%=title%></h2></center>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
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

// sql query to retrieve values from the specified table. 


 
{      
%>
                     
                    <form action="activitysubcalculation.jsp" method="post">
                    <%
                    String round = "select * from round";
rs = statement.executeQuery(round);
while(rs.next()){round = rs.getString(1);} 
         
          %>         
        <hr>  <center><h1>Round: <%=round%></h1>
 <%
   String sql = ("SELECT * FROM schedule_copy");
    rs = statement.executeQuery(sql); 
%>
<%while(rs.next())
       {
    %>
        <table width="492" border="0" align="center" id="table" >
  <tr>
    <th width="162" scope="col"><div align="left"><%=rs.getString(3)%></div></th>
    <th width="86" scope="col"><div align="justify"><%=rs.getString(4)%></div></th>
    <th width="153" scope="col"><div align="justify"><%=rs.getString(5)%></div></th>
    </tr>
</table>
<%
    } 
  %>
   </center>                 

        <!-- Slider -->
        <!-- Content -->
<%
ResultSet rs1 = null;
   
   
    
    

%>
                   
          
          <%
float dd =0;    
String display = "select * from active_participant where pid = 1";
rs1=statement.executeQuery(display);
String name = null;
String dive = null;
String pos = null;
String height = null;
String state = null;
while(rs1.next())
{     
dd = Float.parseFloat(rs1.getString("dive"+round+"_dd")); 
 name = rs1.getString("name");
 state = rs1.getString("state");
 dive = rs1.getString("dive"+round);
 pos = rs1.getString("dive"+round+"_pos");
 height = rs1.getString("height");
}
    %>
<center>
    <hr>
    <% if(name.equalsIgnoreCase("round over")) { %>    <strong><h3>Round Over</h3></strong>  Click on Next Round                  <hr><% } %>
<% if(name !=null) { %>
    <strong><h3><%=name%> (<%=state%>)</h3></strong>                    <hr>
<table width="100%" border="0">
  <tr>
    <th scope="col"><h2  class="intro-text text-center">DIVE</h2></th>
    <th scope="col"><h2  class="intro-text text-center">POSITION</h2></th>
    <th scope="col"><h2  class="intro-text text-center">Height</h2></th>
    <th scope="col"><h2 class="intro-text text-center">DD</h2></th>
    <th scope="col"><h2 class="intro-text text-center">JUDGE1</h2></th>
    <th scope="col"><h2 class="intro-text text-center">JUDGE2</h2></th>
    <th scope="col"><h2 class="intro-text text-center">JUDGE3</h2></th>
    <th scope="col"><h2 class="intro-text text-center">JUDGE4</h2></th>
    <th scope="col"><h2 class="intro-text text-center">JUDGE5</h2></th>
  </tr>
  <tr>
    <td><center><font size="24px"><%=dive %>&nbsp;</font></center></td>
    <td><center><font size="24px"><%=pos %>&nbsp;</font></center></td>
    <td><center><font size="24px"><%=height %>&nbsp;</font></center></td>
    <td><center><font size="24px"><%=dd %></font></center></td>
          <td colspan="5"><iframe src="scorerefresh.jsp" name="judge" id="judge" width="100%" height="60%" style=" border: 0"></iframe></td>
  </tr>
  
</table><br><a href="img/score.txt" download ="score">Confirm</a><input class="btn btn-default btn-lg" type="submit" name="Submit" value="Submit"></center><% } %>
<%

    
    
rs.close(); 
rs1.close();
statement.close(); 
connection.close(); } } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> 
<% 
} 
        %>
        </font>
</form>
<p align="center">&nbsp;</p>
</div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                
                
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Advanced <strong>Options</strong>
                    </h2>
                    <hr><br>
                </div>
                <div class="col-sm-4 text-center">
                    <form action="activityminus.jsp" method="post">              
                  <input name="minus" type="text" id="minus" placeholder="Minus Marking">
                <input class="btn btn-default btn-lg" name="next" type="submit" id="next" value="Submit" >
              </h2>
    </form>
                    <h3>Minus Marking<br>
                        <small>If Applicable</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <form action="activitymax.jsp" method="post">
              
                  <input name="max" type="text" id="max" placeholder="Maximum Marking">
                <input class="btn btn-default btn-lg" name="next" type="submit" id="next" value="Submit" >
              </h2>
    </form>
                    <h3>Maximum Marks<br>
                        <small>If Applicable</small>
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <form action="activityfaildive.jsp" method="post">
              
                <input class="btn btn-default btn-lg" name="next" type="submit" id="next" value="Submit" >
              </h2>
    </form>
                    <h3>Fail Dive<br>
                        <small>If Applicable</small>
                    </h3>
                </div>
                <div class="clearfix"></div>
            </div>
                
                


                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">On <strong>Event/Round</strong> Completion
                    </h2>
                    <hr><br>
                </div>
                
               <center> <div class="col-sm-4 text-center">
                <form action="nextsub.jsp" method="post">
              
                <input class="btn btn-default btn-lg" name="next" type="submit" id="next" value="Submit" >
              </h2>
    </form>
                    <h3>Next Round<br>
                        
                    </h3>
                </div>
                
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                
                
                <div class="col-sm-4 text-center">
<form action="nextround.jsp" method="post">
              
                <input class="btn btn-default btn-lg" name="next" type="submit" id="next" value="Submit" >
              </h2>
    </form>
                    <h3>Next Event<br>
                        
                    </h3>
                </div>
               <div class="col-sm-4 text-center">
<form action="results.jsp" method="post">
              
                <input class="btn btn-default btn-lg" name="results" type="submit" id="results" value="Submit" >
              </h2>
    </form>
                    <h3>Results<br>
                        
                    </h3>
                </div>
               
               </center>
                

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    
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
    <script>
    // Activates the Carousel
    $('.carousel').carousel({
        interval: 5000
    })
    </script>

</body>

</html>