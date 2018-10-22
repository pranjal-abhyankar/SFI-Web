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
                    <li><a href="#">Schedule</a>
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

    <div class="container">

        
<div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong>SCHEDULE</strong>
                    </h2>
                    <hr>
                </div>
               	 
                <form action="scheduleintermediate.jsp" method="post">
                	<table width="854" border="0" align="center" bordercolor="#000000">
                      <tr>
                        <th width="103" scope="col"><div align="justify">GENDER</div></th>
                        <th width="138" scope="col"><div align="justify">EVENT</div></th>
                        <th width="80" scope="col"><div align="justify">HEIGHT</div></th>
                        <th width="146" scope="col"><div align="justify">DATE</div></th>
                        <th width="159" scope="col"><div align="justify">TIME</div></th>
                      </tr>
                      <tr>
                        <td><div align="justify"></div></td>
                        <td><div align="justify"></div></td>
                        <td><div align="justify"></div></td>
                        <td><div align="justify"></div></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
  
                      <tr>
                        <td>MALE</td>
                        <td>SPRINGBOARD</td>
                        <td>1</td>
                        <td><input type="date" name="date1" id="date1"></td>
                        <td><input type="time" name="time1" id="time1"></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><div align="justify"></div></td>
                        <td>
                          <div align="justify">
                            <input class="btn btn-default btn-lg" type="submit" name="Submit" value="Submit">
                          </div></td><td><div align="justify"></div></td>
                        <td>
                          <div align="justify">
                            <input class="btn btn-default btn-lg" name="Reset" type="reset" id="Reset" value="Reset">
                          </div></td>
                        <td><div align="justify"></div></td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                  <p>&nbsp;</p>
                                      
                </form>
                
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
