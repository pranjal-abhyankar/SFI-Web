
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import = "java.sql.*" %>

                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>
                    <%@page import="java.util.*"%>
     

    <%
try
               {
String uname= request.getParameter("name");
String password = request.getParameter("password");
if(uname.equalsIgnoreCase("admin")&& password.equalsIgnoreCase("admin"))       {
    response.sendRedirect("home.html");
       }
else
response.sendRedirect("login.jsp");
         }
 

catch(Exception e)
        {
}
%>

    </body>
</html>
