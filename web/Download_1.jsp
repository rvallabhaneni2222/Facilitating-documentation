
<%@page import="org.jcp.xml.dsig.internal.dom.Utils"%>
<%@page import="pack.DbConnector"%>
<%@page import="com.sun.crypto.provider.RSACipher"%>



<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>File Download</title>

</head>

<body>		
<%
     String d = request.getQueryString(); 
            String fileN=null;
              int amt = 0;
              Connection conn = DbConnector.getConnection();             
              Statement st2 = conn.createStatement();
              ResultSet rr = st2.executeQuery("select * from admin where id = '"+d+"'");
            
              if(rr.next()){
                  fileN = rr.getString("name");
		Blob b = rr.getBlob("file");
		if(b != null)
		{
                   // System.out.println("Fdsf");
			//String fileName = "image";
                         byte[] ba = b.getBytes(1, (int)b.length());                        
			 response.setContentType("image/jpg");
			response.setHeader("Content-Disposition","attachment; filename=\""+fileN+"\"");
			
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
					}
		else
		{
			response.sendRedirect("con1.jsp");
		}
                               }
                   
              
%>

</body>
</html>