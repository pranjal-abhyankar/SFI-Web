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
      <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script>
    $(document).ready(function(){
        $("select#event").blur(function(){
            var temp=$(this).val();
            if(temp=="SPRINGBOARD")
            {
                $("option#option1").text("1");
                $("option#option2").text("3");
            }
            else if(temp=="PLATFORM")
            {
                $("option#option1").text("10");
                $("option#option2").text("");
            }
        });
    });
</script>
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
                    <li><a href="#">Forms</a>
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
                    <h2 class="intro-text text-center">Enter Participant Details 
                    </h2>
                    <hr>
                  <form action="entryformintermediate.jsp" method="post">
                      <table width="659" border="0" style=" margin-left: 20%">
                              <tr>
                                <td width="332"><div align="center"><strong>NAME</strong></div></td>
                                <td width="396"><div align="center">
                                  <input type="text" name="name" id="name">
                                </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="center"></div></td>
                                <td><div align="center"></div></td>
                              </tr>
                              <tr>
                                <td><div align="center"><strong>DATE OF BIRTH</strong> </div></td>
                                <td><div align="center">
                                  <input name="dob" id="dob" type="date">
                                </div></td>
                              </tr>
                              <tr>
                                <td height="27"><div align="center"></div></td>
                                <td><div align="center"></div></td>
                              </tr>
                              <tr>
                                <td><div align="center"><strong>GENDER</strong></div></td>
                                <td><div align="center">
                                        <select name="gender" id="gender">
                                    <option>MALE</option>
                                    <option>FEMALE</option>
                                  </select>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="26"><div align="center"></div></td>
                                <td><div align="center"></div></td>
                              </tr>
                              <tr>
                                <td><div align="center"><strong>STATE/UNIT</strong></div></td>
                                <td><div align="center">
                                  <select name="state" size="1" id="state">
                                    <option selected>SELECT STATE</option>
                                    <option>AP</option>
                                    <option>AR</option>
                                    <option>ASM</option>
                                    <option>BIH</option>
                                    <option>MP</option>
                                    <option>MH</option>
                                    <option>MIZ</option>
                                    <option>MEG</option>
                                    <option>TN</option>
                                    <option>KER</option>
                                    <option>KAR</option>
                                    <option>GOA</option>
                                    <option>SKM</option>
                                    <option>PUN</option>
                                    <option>HP</option>
                                    <option>GUJ</option>
                                    <option>JK</option>
                                    <option>CG</option>
                                    <option>UP</option>
                                    <option>UTR</option>
                                    <option>DL</option>
                                    <option>WB</option>
                                    <option>RAJ</option>
                                    <option>NAG</option>
                                    <option>ORI</option>
                                    <option>HAR</option>
                                    <option>JHR</option>
                                    <option>MAN</option>
                                    <option>SSCB</option>
                                    <option>NSA</option>
                                  </select>
                                </div></td>
                              </tr>
                              <tr>
                                <td height="25"><div align="center"></div></td>
                                <td><div align="center"></div></td>
                              </tr>
                              
                              
                              <tr>
                                <td><div align="center"><strong>EVENT</strong></div></td>
                                <td><div align="center">
                                        <select name="event" id="event">
                                          <option>SPRINGBOARD</option>
                                          <option>PLATFORM</option>
                                        </select>
                                  </div></td>
                              </tr>
                              <tr>
                                <td height="39"><div align="center"></div></td>
                                <td><div align="center"></div></td>
                              </tr>
                              <tr>
                                <td height="39"><div align="center"><strong>HEIGHT</strong></div></td>
                                <td><div align="center">
                                  <select name="height" id="height">
                                    <option selected>enter height</option>
                                    <option id="option1"></option>
                                    <option id="option2"></option>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </select>
                                </div></td>
                              </tr>
                              <tr>
                                <td height="39"><div align="center"><strong>NO. of DIVES</strong></div></td>
                                <td><div align="center">
                                  <input type="number" name="noofdives" id="noofdives">
                                </div></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td><div align="center">
                                    <input class="btn btn-default btn-lg" type="submit" name="proceed" value="Proceed"  onClick="return validate()">
                                  </div></td>
                                  <td><div align="center">
                                    <input class="btn btn-default btn-lg" name="Reset" type="reset" id="Reset" value="Reset">                                
                                  </div></td>
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
  
    <script>
    // Activates the Carousel
    $('.carousel').carousel({
        interval: 5000
    })
    </script>

</body>

</html>
