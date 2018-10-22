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
                    <li><a href="#">Create Event</a>
                    </li>
                    <li><a href="enterevent.jsp">Enter Event</a>
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

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Enter Event Details
                    </h2>
                    <hr>
                  <form method="post" action="createeventintermediate.jsp" onSubmit="return validate()">
                    <table width="750" height="352" border="0" align="center">
                      <tr>
                        <td width="297"><div align="center">
                          <h5 align="right">EVENT TITLE &nbsp;&nbsp;</h5>
                        </div></td>
                        <td width="318"><input type="text" name="title" id="title"></td>
                        <td width="121">&nbsp;</td>
                      </tr>
                      <tr>
                        <td><div align="center">
                          <h5 align="right">event&nbsp;&nbsp; </h5>
                          </div></td>
                        <td>  <select name="event" id="event">
                          <option>SENIOR NATIONAL</option>
                          <option>SUB JUNIOR</option>
                          
                        </select>
                        </td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><div align="center">
                          <h5 align="right">EVENT LOCATION &nbsp;&nbsp;</h5>
                        </div></td>
                        <td><select name="state" size="1" id="state">
                        <option selected>SELECT STATE</option>
                        <option>ANDHRA PRADESH</option>
                        <option>ARUNACHAL PRADESH</option>
                        <option>ASSAM</option>
                        <option>BIHAR</option>
                        <option>MADHYA PRADESH</option>
                        <option>MAHARASHTRA</option>
                        <option>MIZORAM</option>
                        <option>MEGHALAYA</option>
                        <option>TAMIL NADU</option>
                        <option>KERELA</option>
                        <option>KARNATAKA</option>
                        <option>GOA</option>
                        <option>SIKKIM</option>
                        <option>PUNJAB</option>
                        <option>HIMACHAL PRADESH</option>
                        <option>GUJRAT</option>
                        <option>JAMMU AND KASHMIR</option>
                        <option>CHHATTISGARH</option>
                        <option>UTTAR PRADESH</option>
                        <option>UTTARANCHAL</option>
                        <option>DELHI</option>
                        <option>WEST BENGAL</option>
                        <option>RAJASTHAN</option>
                        <option>NAGALAND</option>
                        <option>ORISSA</option>
                        <option>HARYANA</option>
                        <option>JHARKHAN</option>
                        <option>MANIPUR</option>
                      </select>
                          <input type="text" name="city" value="CITY" id="city" onFocus="if(this.value=='CITY'){this.value=''}" onBlur="if(this.value==''){this.value='CITY'}"></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>                          <div align="center">
                          <h5 align="right">STADIUM&nbsp;&nbsp;</h5>
                        </div></td>
                        <td><input type="text" name="stadium" id="stadium"></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><div align="center">
                          <h5 align="right">EVENT STARTING DATE&nbsp;&nbsp; </h5>
                        </div></td>
                        <td><input type="date" name="startingdate"></td>
                         <td>&nbsp;</td>
                   </tr>
                      <tr>
                        <td><div align="center">
                          <h5 align="right">EVENT ENDING DATE&nbsp;&nbsp;</h5>
                        </div></td>
                        <td><input type="date" name="endingdate"></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>
                            <div align="right">
                                <input class="btn btn-default btn-lg" type="submit" name="Submit" value="SUBMIT" >
                            </div>
                        </td>
                        <td>
                            <div align="center">
                                <input class="btn btn-default btn-lg" type="reset" name="reset" value="RESET">
                            </div>
                        </td>
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
<Script language="javascript">
function validate()
{
    var v1,v2,v3,v4,v5,v6;
    v1=document.getElementById("title").value;
    v2=document.getElementById("state").value;
    v3=document.getElementById("city").value;
    v4=document.getElementById("stadium").value;
    v5=document.getElementById("startingdate").value;
    v6=document.getElementById("endingdate").value;

    if(v1=="")
        {
            alert("event cannot be blank");
            return false;
        }
    if(v2=="SELECT STATE")
        {
            alert("state cannot be blank");
            return false;
        }
    if(v3=="CITY")
        {
            alert("city cannot be blank");
            return false;
        }
    if(v4=="")
        {
            alert("stadium cannot be blank");
            return false;
        }
    if(v5=="dd/mm/yyyy")
        {
            alert("sarting date cannot be blank");
            return false;
        }
    if(v6=="dd/mm/yyyy")
        {
            alert("ending date cannot be blank");
            return false;
        }
    alert("Event Created Successfully.");
}
</Script>
</body>

</html>
