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
            <li id="menu_active"><a href="adminpage.jsp">Home</a></li>
            <li><a href="login.jsp">User Login</a></li>
            <li><a href="admin.jsp">Admin Login</a></li>
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
    
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found')</script>");
}

%>
    <div class="wrapper">
      <article class="col3">
        <h3><B>Admin</B></h3>
        <div class="pad">
            <p class="pad_bot2" style="text-align: justify;width: 550px;"><strong>
                    
                    <form action="action.jsp" name="ff" method="get">
                    UserName: <input type="text" name="user" id="user" style="background: #00ccff; height: 22px;"><br><br>
                    Password: &nbsp;<input type="password" name="pass" id="pass" style="background: #00ccff; height: 22px;"><br><br>
                    <div style="margin-left: 73px;">  
                    <input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </form>
                    <input type="reset" value="Clear"></div>
                    
                    
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