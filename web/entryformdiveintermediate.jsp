<%@page import ="java.util.*"%>
<%@ page import = "java.sql.*" %>
        <%
                        String name,gender,event,height,state,noofdives;
                        HttpSession session1=null;
                        session1=request.getSession();
                        name = session1.getAttribute("name").toString();
                        gender = session1.getAttribute("gender").toString();
                        event = session1.getAttribute("event").toString();
                        height = session1.getAttribute("height").toString();
                        state= session1.getAttribute("state").toString();
                        noofdives=session1.getAttribute("NOOFDIVES").toString();
                        int a = Integer.parseInt(session1.getAttribute("NOOFDIVES").toString());
                       
                %>
<%
try
                               
               {
  //have to make changes
String dd1= request.getParameter("dd1");
String dd2 = request.getParameter("dd2");
String dd3 = request.getParameter("dd3");
String dd4 = request.getParameter("dd4");
String dd5 = request.getParameter("dd5");
String dd6 = request.getParameter("dd6");

String no1 = request.getParameter("no1");
String no2 = request.getParameter("no2");
String no3 = request.getParameter("no3");
String no4 = request.getParameter("no4");
String no5 = request.getParameter("no5");
String no6 = request.getParameter("no6");
String pos1 = request.getParameter("pos1");
String pos2 = request.getParameter("pos2");
String pos3 = request.getParameter("pos3");
String pos4 = request.getParameter("pos4");
String pos5 = request.getParameter("pos5");
String pos6 = request.getParameter("pos6");
String height1 = null;
String height2 = null;
String height3 = null;
String height4 = null;
String height5 = null;
String height6 = null;
 height1 = height;
 height2 = height;
 height3 = height;
 height4 = height;
 height5 = height;
 height6 = height;

   Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root");


ResultSet rs = null;

Statement statement = connection.createStatement();

               {
String sql = "insert into participant_details (name, gender, event, dive1, dive2, dive3, dive4, dive5, dive6, dive1_pos, dive2_pos, dive3_pos, dive4_pos, dive5_pos, dive6_pos, height, dive1_dd, dive2_dd, dive3_dd, dive4_dd, dive5_dd, dive6_dd , state) values ('"+name+"' , '"+gender+"' , '"+event+"' , '"+no1+"' , '"+no2+"' , '"+no3+"' , '"+no4+"' , '"+no5+"' , '"+no6+"' , '"+pos1+"' , '"+pos2+"' , '"+pos3+"' , '"+pos4+"' , '"+pos5+"' , '"+pos6+"' , '"+height+"' , '"+dd1+"' , '"+dd2+"' , '"+dd3+"' , '"+dd4+"' , '"+dd5+"' , '"+dd6+"' , '"+state+"')";
statement.executeUpdate(sql);
out.print(sql);
 response.sendRedirect("entryform.jsp");
rs.close();
connection.close();
}

}
catch(Exception e)
        {
    out.println(e);
}
%>