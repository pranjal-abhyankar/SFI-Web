<%-- 
    Document   : intermediate
    Created on : Apr 24, 2014, 2:41:30 PM
    Author     : Nivedita
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
                        String judge;
                        judge=request.getParameter("judge");
                        HttpSession session1=null;
                        session1=request.getSession(true);
                        session1.setAttribute("judge",judge);
                    %>
<%response.sendRedirect("activity.jsp");%>            
    </body>
</html>
