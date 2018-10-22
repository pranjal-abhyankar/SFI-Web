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
                    <li><a href="schedule.jsp">Schedule</a>
                    </li>
                    <li><a href="entryform.jsp">Forms</a>
                    </li>
                    <li><a href="view.jsp">View</a>
                    </li>
                    <li><a href="start.jsp">Start</a>
                    </li>
                    <li><a href="#">Results</a>
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
                    <h2 class="intro-text text-center">Enter Details To View Results
                    </h2>
                    <hr>
                  <form method="post" action="resultsdisplay.jsp">
                    <table width="750" border="0" align="center">
                      
                        <tr>                          
                        <td width="297"><div align="center">
                          <h5 align="right">Gender &nbsp;&nbsp;</h5>
                        </div></td>
                        <td width="318"><select name="gender" id="gender">
                                <option>Male</option>
                                <option>Female</option>
                            </select></td>                        
                            <td>&nbsp;</td>
                        </tr>
                        
                        <tr>
                        <td width="297"><div align="center">
                          <h5 align="right">Event &nbsp;&nbsp;</h5>
                        </div></td>
                        <td width="318">
                            <select name="event" id="event">
                                <option>1 MTR SPRINGBOARD</option>
                                <option>3 MTR SPRINGBOARD</option>
                                <option>PLATFORM</option>
                            </select>                        
                        </td>
                        <td>&nbsp;</td>
                        </tr>
                        
                        <tr>
                        <td width="297"><div align="center">
                          <h5 align="right">Age Group &nbsp;&nbsp;</h5>
                        </div></td>                      
                        <td width="318">
                            <select name="agegroup" id="agegroup">
                                <option>UNDER 14(GROUP III)</option>
                                <option>UNDER 17(GROUP II)</option>
                                <option>UNDER 19(GROUP I)</option>
                            </select>
                        </td>
                        <td>&nbsp;</td>
                        </tr>
                        
                      <tr><td>&nbsp;<td>&nbsp;</tr>
                      <tr>
                          <td>
                        <td>
                                <input class="btn btn-default btn-lg" type="submit" name="Submit" value="SUBMIT">
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

<%@ page import = "java.sql.*" %>           
<%
String agegroup = request.getParameter("agegroup");
String event = request.getParameter("event");
String gender = request.getParameter("gender");
%>                                
                                
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
