<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.mysql.jdbc.Buffer"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Facilitating Document Annotation using Content and Querying Value</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie6_script_other.js"></script>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
<script>
    function check(){
        var a = document.ff.user.value;
        var b = document.ff.pass.value;
       
   
         if(a==0){
            alert('Please Enter UserId');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter Password');
            return false;
            document.getElementById("pass").focus();            
        } 
    }
    
    
</script>


</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="body1"></div>
<div class="body2">
  <div class="main">
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
            <li id="menu_active"><a href="userpage.jsp">Home</a></li>
         
            <li><a href="newuser.jsp">New User</a></li>
            <li><a href="query1.jsp">Back</a></li>
            
          </ul>
        </nav>
      
      </div>
      <div class="wrapper">
        <article class="col1 pad_left2">
          <div class="text1"><B>Facilitating Document Annotation using Content and Querying Value</B></div>
         
        </article>
      </div>
    </header>
  </div>
</div>
<div class="body3">
  <div class="main">
    <section id="content_top">
      <article class="col1 pad_left2">
      
      </article>
    </section>
  </div>
</div>
<div class="main">
  <section id="content">
    <%
    
if(request.getParameter("msg")!=null) {
out.println("<script>alert('Login Sucess..!!')</script>");
}
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Fouund..!!')</script>");
}
if(request.getParameter("f")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}
%>
    <div class="wrapper">
        <article class="col3" style="background-color:#ccccff; width: 450px">
            <h3><B>Search Type..!</B></h3>
        <div class="pad">
            
                    
           
            
            <strong>
                    <div style="margin-left: 3px;">  
                        <%
                        String a = request.getParameter("q1");
                        String aa = request.getParameter("q2");
                        String s=null, w=null, f=null;
                        Blob b = null;
                       // BufferedReader br = null;
                        //InputStream is = null;
                               String aid = null;
                        
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admin where strom='"+a+"' and war='"+aa+"' ");
if(rs.next()){
    s = rs.getString("strom");
    w = rs.getString("war");
    b = rs.getBlob("file");
        aid = rs.getString("id");
    InputStream is = b.getBinaryStream();
    BufferedReader br = new BufferedReader(new InputStreamReader(is));
%>  
<b>Document:</b><textarea style="margin-left: 3px;  width: 400px; height: 400px;"> 




<%
                      while((f=br.readLine())!=null){
    
        %>
    
                       
    <%= f %>  
             
                <%
    }

     %>
 
 </textarea>

  <div          
      <b>Strom Name:<%= s %></b> <a href="Download_1.jsp?<%=aid%>"> <button style="background-color: green"> Download </button> </a>        
          </strong>              
 <%} 
else{
out.println("<script>alert('Keyword not match')</script>");
}
%>
              
          
        </div>
        
      </article>
    
  </section>
</div>
<div class="body4">
  <div class="main">
    
  </div>
</div>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 <a href="">jp infotech</a> - All Rights Reserved</p>
    
    <div style="clear:both;"></div>
  </div>
</footer>
<script type="text/javascript"> Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>
</html>