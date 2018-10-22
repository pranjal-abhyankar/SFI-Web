<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String event;
                        HttpSession session1=null;
                        session1=request.getSession();
                        event = session1.getAttribute("event").toString();

String dive=request.getParameter("query1");
String pos=request.getParameter("query2");
String height=request.getParameter("query3");
try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_swimming", "aklkarni_root", "ajk_root"); 
//Add the data into the database
String sql = "SELECT dd FROM dive WHERE Dive_number = '"+dive+"' and Type = '"+event+"' and Height = '"+height+"' and Dive = '"+pos+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
out.println(rs.getString(1));

}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>