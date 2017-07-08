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
            <li><a href="index.jsp">Logout</a></li>
            
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
out.println("<script>alert('Register Sucess..!!')</script>");
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
            <p class="pad_bot2" style="text-align: justify;width: 550px;"><strong>
                    
                    
                    <div style="margin-left: 3px;">  
                        <form action="searchaction.jsp" method="get">
                   Strom Name: <br>    <input type="text" name ="q1" style="height: 30px; width: 180px;"> 
                        <input type="submit" value="Query 1" style="background-color:#3333ff; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;<br><br>
                        
                      Warning: <br>    <input type="text" name ="q2"  style="height: 30px; width: 180px;"> <br><br><br>
                                 </form>
                        <a href="query2.jsp"> <input type="submit" value="Query 2" style="background-color: #ff6699; height: 30px; width: 80px; border: 4px; font-weight: bold;"></a>&nbsp;&nbsp;&nbsp;
                        
                           <a href="query3.jsp">
                         <input type="submit" value="Query 3" style="background-color: blue; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
    </a>
                    
                </strong></p>
          
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