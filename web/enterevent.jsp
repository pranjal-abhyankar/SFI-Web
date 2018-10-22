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
                    <li><a href="createevent.jsp">Create Event</a>
                    </li>
                    <li><a href="#">Enter Event</a>
                    </li>
                    <li><a href="adddive.jsp">Add Dive</a>
                    </li>                    
                    <li><a href="contact.html">Set Records</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
       <%@ page import = "java.sql.*" %>

                    <%@page import="java.util.*"%>
     
    <%
try
               {




    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


ResultSet rs = null;

Statement statement = connection.createStatement();


{
         {
 String sql = ("SELECT title FROM event");
rs = statement.executeQuery(sql);
%>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Select Event
                    </h2>
                    <hr>
                    
                    <!--************* redirecting line -->
                    <!--************* redirecting line -->
                    <!--************* redirecting line -->
                    <!--************* redirecting line -->
                    <!--************* redirecting line -->
                    <!--************* redirecting line next-->
                  <form method="post" action="enterintermediate.jsp" onSubmit="return validate()">  
                    <table width="750" border="0" align="center">
                      <tr>
                        <td width="297"><div align="center">
                          <h5 align="right">EVENT TITLE &nbsp;&nbsp;</h5>
                        </div></td>
                        <td width="318"><select name="title" id="title">
<%
while(rs.next())         
{

%>                                <option><%=rs.getString(1)%></option>
<%
}         }
}
rs.close();
connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>                                
                            </select></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr><td>&nbsp;<td>&nbsp;</tr>
                      <tr>
                          <td>
                        <td>
                                <input class="btn btn-default btn-lg" type="submit" name="Submit" value="SUBMIT" >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="btn btn-default btn-lg" type="reset" name="reset" value="RESET"></td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    </form>
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
