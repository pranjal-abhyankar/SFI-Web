
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Swimming Federation Of India</title>
    </head>
    <body>
        <%@ page import = "java.sql.*" %>

                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>
 <%
 //String title = request.getParameter("title");
 %>
    <%
try
               {
String uname= request.getParameter("title");
HttpSession titlesession = request.getSession();
titlesession.setAttribute("title", uname);




    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


ResultSet rs = null;

Statement statement = connection.createStatement();


if (uname!=null)
{
         {
 String sql = ("SELECT event FROM event where title = '"+uname+"'");
rs = statement.executeQuery(sql);
int flag = 0;
while(rs.next())
       {
flag =1;

if(flag==0)
       {
    response.sendRedirect("createevent.jsp");
       }
else
       {
    /*if(rs.getString(1).equalsIgnoreCase("senior national"))
               {out.print("ajinkya");
response.sendRedirect("mainsenior.jsp");}
    else*/
        response.sendRedirect("eventhome.jsp");

}       } }
 }

rs.close();
connection.close();
}
catch(Exception e)
        {
}
%>

    </body>
</html>
