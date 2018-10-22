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
    <script type="text/javascript">
    function concat1()
    {
        document.getElementById('dd1').value = document.getElementById('no1').value+document.getElementById('pos1').value;
    }
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
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
          <%
                        String name,gender,event,height,agegroup,state;
                        HttpSession session1=null;
                        session1=request.getSession();
                        name = session1.getAttribute("name").toString();
                        gender = session1.getAttribute("gender").toString();
                        event = session1.getAttribute("event").toString();
                        height = session1.getAttribute("height").toString();
                        state= session1.getAttribute("state").toString();
                        
%>

 <%
try
{
    
       Class.forName("com.mysql.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


    ResultSet rs = null;

    Statement statement = connection.createStatement();


{
     
 
{      

}
 }

    {
        int a =        Integer.parseInt(session1.getAttribute("NOOFDIVES").toString());

         
    //     } 
%>


        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Enter Participant Dives 
                    </h2>
                    <hr>
                    <div>
<form>
</div>

</form>
</div>

                    <hr><form action="entryformdiveintermediate.jsp" method="post">
                        <table width="768" border="0" style=" margin-left: 20%">
                                <%
                                for(int i = 1; i<=a; i++)       
                                {                         
%>
                              <tr>
                                <td width="190"><div><strong>DIVE <%=i%> </strong></div></td>
                                <td width="343"><input type="text" name="no<%=i%>" value="DIVE NUMBER" id="no<%=i%>" onFocus="if(this.value=='DIVE NUMBER'){this.value=''}" onBlur="if(this.value==''){this.value='DIVE NUMBER'}"> 
                                <td><input type="text" name="pos<%=i%>" value="POSITION" id="pos<%=i%>" onFocus="if(this.value=='POSITION'){this.value=''}" onBlur="if(this.value==''){this.value='POSITION'}">
                                <td><input type="text" name="height<%=i%>" id="height<%=i%>" value="<%=height%>" onblur="lookup(<%=i%>);" ></td>
                                <td><input type="text" name="dd<%=i%>" id="dd<%=i%>"></td>

                            <td> 

 </td>

                              </tr>
                              <tr>
                                <td height="25"><div align="right"></div></td>
                                <td><div align="right"></div></td>
                                <td>&nbsp;</td>
                              </tr>
                              <% } %>
                             
                                
                              <tr>
                                <td><div align="right"></div></td>
                                <td>&nbsp;</td>
                              </tr>
                              

                              <tr>
                                  <td><div align="right">
                                    <input class="btn btn-default btn-lg" name="submit" type="submit" id="submit"  onClick="return validate()" value="SUBMIT">
                                      </div></td>
                                      <td>
                                  <div align="right">
                                    <input class="btn btn-default btn-lg" name="Reset" type="reset" id="Reset" value="Reset">                                
                                  </div></td>
                              </tr>
                            </table>
                            </form>
                             </div>
<script type="text/javascript" src="jquery1.js"></script>
<script type="text/javascript">
function lookup(no)
{
    var dive = document.getElementById("no"+no).value;
    var pos = document.getElementById("pos"+no).value;
    var height = document.getElementById("height"+no).value;
    $.post("states.jsp", {query1: dive, query2: pos, query3: height}, function(data){
        $("input#dd"+no).val(data);
    });
}

</script>
<style type="text/css">
body {
font-family: Helvetica;
font-size: 13px;
color: #000;
}
h3 {
margin: 0px;
padding: 0px;
}
.suggestionsBox {
position: relative;
left: 260px;
margin: 0px 0px 0px 0px;
width: 200px;
background-color: #7845DD;
-moz-border-radius: 7px;
-webkit-border-radius: 7px;
border: 2px solid #000;
color: #fff;
}
.suggestionList {
margin: 0px;
padding: 0px;
}
.suggestionList li {
margin: 0px 0px 3px 0px;
padding: 3px;
cursor: pointer;
}
.suggestionList li:hover {
background-color: #DD45CD;
}
</style>

            </div>
        </div>
    </div>
<%
                    } 
rs.close();
connection.close();
}
catch(Exception e)
        {
    out.println(e);
}
%>

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