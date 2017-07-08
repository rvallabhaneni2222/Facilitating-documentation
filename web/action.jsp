<%
      
String u = request.getParameter("user");
String p = request.getParameter("pass");
if(u.equalsIgnoreCase("admin")&& p.equalsIgnoreCase("admin")){
response.sendRedirect("forfile.jsp?msg=wellcom");
}
else{
response.sendRedirect("admin.jsp?msgg=fails");
}
%>