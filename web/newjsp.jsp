

<!DOCTYPE html>

<html lang='hi' xml:lang='hi' xmlns='http://www.w3.org/1999/xhtml'>
  <head>
    <meta charset='utf-8' />
    <meta content='hi' name='language' />
    		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<%@page contentType="text/html; charset = utf-8" language = "java" %> 

    <meta content='width=device-width, initial-scale=1' name='viewport' />
    <script src='jquery.js'></script>
    <script src='multifilter.js'></script>
    <title>
      Multifilter - Sort a table on Multiple inputs. A jQuery plugin from Tommy Palmer.
    </title>
    <link href='style.css' media='screen' rel='stylesheet' type='text/css' />
  </head>
  <script type='text/javascript'>
    //<![CDATA[
      $(document).ready(function() {
        $('.filter').multifilter()
      })
    //]]>
  </script>
  <body>
    <div class='container'>
  <div class='hero'>
    <h2>
      Multifilter is a jQuery plugin to let you filter a table based on multiple inputs.
      <br />
      Check it out below. It's pretty sweet.
    </h2>
    <div class='actions'>
      <a href='http://github.com/tommyp/multifilter/'>Download from Github</a>
    </div>
  </div>
</div>
<div class='container'>
  <div class='filters'>
    <div class='filter-container'>
      <input autocomplete='off' class='filter' name='name' placeholder='name' data-col='name'/>
    </div>
    <div class='filter-container'>
      <input autocomplete='off' class='filter' name='drink' placeholder='drink' data-col='drink'/>
    </div>
    <div class='filter-container'>
      <input autocomplete='off' class='filter' name='pizza' placeholder='pizza' data-col='pizza'/>
    </div>
    <div class='filter-container'>
      <input autocomplete='off' class='filter' name='movie' placeholder='movie' data-col='movie'/>
    </div>
    <div class='clearfix'></div>
  </div>
</div>
<div class='container'>
  <table>
         <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
    <thead>
      <th><font color ="white">Reg No</font></th>
			<th><font color ="white">Reg Date</font></th>
			<th><font color ="white">Birth Date</font></th>
			<th><font color ="white">Name</font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white">Father Name</font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white">Mother Name</font></th>
			<th><font color ="white"></font></th> </thead>
    <tbody>
                      <%
   try
               {

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pithampur" , "root" , "root");


ResultSet rs = null;

Statement statement = connection.createStatement();

{
         {
             String query = "set names UTF8";
             statement.execute(query);
 String sql = ("SELECT * FROM birthcertificate2000");
rs = statement.executeQuery(sql);
int reg;
while(rs.next())
       {
%>  

        <tr>
                        <td width ="3%" align="center"><%=rs.getString(1)%></td>
                        <td width ="3%" align="center"><%=rs.getString(2)%></td>
                        <td width ="3%" align="center"><%=rs.getString(3)%></td>
			<td width ="5%"><%=rs.getString(4)%></td>
			<td width ="5%"><%=rs.getString(5)%></td>
			<td width ="5%"><%=rs.getString(6)%></td>
			<td width ="5%"><%=rs.getString(7)%></td>
			<td width ="1%"><%=rs.getString(8)%></td>
			<td width ="7%"><%=rs.getString(9)%></td>
		</tr>

<%

} }
 }

rs.close();
connection.close();
}
catch(Exception e)
        {
out.print(e);
}
%>	
    </tbody>
  </table>
</div>
  </body>
</html>
