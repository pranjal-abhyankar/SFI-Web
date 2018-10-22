<%-- 
    Document   : entryformintermediate
    Created on : Jun 4, 2013, 6:07:45 PM
    Author     : Ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 String title;
 HttpSession titlesession = request.getSession();
title = titlesession.getAttribute("title").toString();

%>
                      <%
                        String name,gender,event,height,state,noofdives;
                        name=request.getParameter("name");
                        gender=request.getParameter("gender");
                        event=request.getParameter("event");
                        height=request.getParameter("height");
                        state=request.getParameter("state");
                        noofdives=request.getParameter("noofdives");
                        HttpSession session1=null;
                        session1=request.getSession(true);
                        session1.setAttribute("name",name);
                        session1.setAttribute("gender",gender);
                        session1.setAttribute("event",event);
                        session1.setAttribute("height",height);
                        session1.setAttribute("state",state);
                        session1.setAttribute("NOOFDIVES", noofdives);
                    %>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
 <%
try
{
    String city = request.getParameter("city");
    String dob = request.getParameter("dob");

       Class.forName("com.mysql.jdbc.Driver");

    Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


    ResultSet rs = null;

    Statement statement = connection.createStatement();


                     response.sendRedirect("entryformdive.jsp");   
         
         
         
         
         
    //     } 
 
rs.close();
connection.close();
}
catch(Exception e)
        {
    out.println(e);
}
%>


    </body>
</html>
