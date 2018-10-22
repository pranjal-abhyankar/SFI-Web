<!DOCTYPE html>
<html lang="en">

<head>
    <title>Swimming Federation Of India</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/stylesfi.css" rel="stylesheet">
</head>

<body>

<%

	String title;
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
                <ul class="nav navbar-nav">
                    <li><a style=" height: 92px" href="home.html"><img src="img/home1.png"></a>
                    </li>
                    <li><a href="schedule.jsp">Schedule</a>
                    </li>
                    <li><a href="entryform.jsp">Forms</a>
                    </li>
                    <li><a href="view.jsp">View</a>
                    </li>
                    <li><a href="start.jsp">Start</a>
                    </li>
                    <li><a href="results.jsp">Results</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    	</nav>

<%@ page import = "java.sql.*" %>
<%@page import="java.util.*"%>
     

    	<div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><%=title%>
                    </h2>
                    <hr>
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
 
{    
    String event=null;
String comp = "select event from event where title = '"+title+"'";     
rs = statement.executeQuery(comp);
while(rs.next()){event = rs.getString(1);}
String sql=null;
    {    sql = ("SELECT * FROM schedule_copy");}

    rs = statement.executeQuery(sql); 
%>
<%while(rs.next())
       {
    %><form>
        <table width="492" border="0" align="center" id="table" >
  <tr>
    <th width="162" scope="col"><div align="left"><%=rs.getString(3)%></div></th>
    <th width="86" scope="col"><div align="justify"><%=rs.getString(4)%></div></th>
    <th width="153" scope="col"><div align="justify"><%=rs.getString(5)%></div></th>
    <th width="73" scope="col"><div align="justify"><%=rs.getString(6)%>m</div></th>
    </tr>
</table>
<br>
<%
    } 
  %>
</form>
  </center>

        <!-- Slider -->
        <!-- Content -->
        <br><br>
            <form action="alphasubintermediate.jsp">
          
          <p align="center">SORT PARTICIPANTS BY -
              <select name="order" id="order">
                <option>Single</option>
                </select>
          </p>
            
            
  <center>            <input class="btn btn-default btn-lg" type="submit" name="Submit" value="SUBMIT" >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="btn btn-default btn-lg" type="reset" name="reset" value="RESET"></td></center>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    </form>
                        
            <%
    
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

                </div>
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
    <script>
    // Activates the Carousel
    $('.carousel').carousel({
        interval: 5000
    })
    </script>

</body>

</html>
