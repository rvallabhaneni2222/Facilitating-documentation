<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
System.out.println(" connected inforsave page");

String n = request.getParameter("name");
String d = request.getParameter("date");
String l = request.getParameter("loc");
String s = request.getParameter("strom");
String c = request.getParameter("cat");
String w = request.getParameter("war");
String a1 = request.getParameter("a1");
String a2 = request.getParameter("a2");
String des = request.getParameter("des");
 String adr = session.getAttribute("nn").toString();
 System.out.println(" this is session "+ adr) ;
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate(" update  admin set  docname='"+n+"',date_='"+d+"',loc='"+l+"',strom='"+s+"',cat='"+c+"',war='"+w+"',a1='"+a1+"',a2='"+a2+"',des='"+des+"' where id = '"+adr+"' ");
//(docname,date_,loc,strom,cat,war,a1,a2,des)
if(i!=0){
response.sendRedirect("adminpage.jsp?data=save");
}else{
response.sendRedirect("adminpage.jsp?f=fails");
}


%>