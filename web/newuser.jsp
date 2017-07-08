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
        var a = document.ff.name.value;
        var b = document.ff.user.value;
        var c = document.ff.pass.value;
        var d = document.ff.email.value;
        var e = document.ff.dob.value;
        var f = document.ff.loc.value;
        var g = document.ff.sex.value;
        
   
         if(a==0){
            alert('Please Enter Name');
           document.getElementById("name").focus();          
           return false;
       } if(b==0){
            alert('Please Enter Userid');
           document.getElementById("user").focus();            
            return false;
      
        } if(c==0){
            alert('Please Enter Password');
            document.getElementById("pass").focus();            
            return false;
            
        } if(d==0){
            alert('Please Enter E-mail Id');
            document.getElementById("email").focus();            
            return false;
            
        } if(e==0){
            alert('Please Enter Date of Birth');
            document.getElementById("dob").focus();            
            return false;
            
        } if(f==0){
            alert('Please Enter Your Location');
            document.getElementById("loc").focus();            
            return false;
            
        } if(g==0){
            alert('Please Enter Gender');
            document.getElementById("sex").focus();            
            return false;
            
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
            <li id="menu_active"><a href="newuser.jsp">Home</a></li>
         
            <li><a href="login.jsp">User Login</a></li>
            <li><a href="index.jsp">Back</a></li>
            
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
out.println("<script>alert('Wellcome..!!')</script>");
}
if(request.getParameter("data")!=null) {
out.println("<script>alert('information saved..!!')</script>");
}
if(request.getParameter("f")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}
%>
    <div class="wrapper">
        <article class="col3" style="background-color:#ccffff; width: 540px">
        <h3><B>Register Here..!!</B></h3>
        <div class="pad">
            <p class="pad_bot2" style="text-align: justify;width: 550px;"><strong>
                    
                    <form action="regaction.jsp" name="ff"  method="get" onsubmit="return check()">
                    Name: <br><input type="text" name="name" id="name" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    UserId: <br><input type="text" name="user" id="user" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Password: <br><input type="password" name="pass" id="pass" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Email Id:<br> <input type="email" name="email" id="mail" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Date of Birth:<br> <input type="date" name="dob" id="dob" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Location:<br> <input type="text" name="loc" id="loc" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name ="sex" id="sex" style="background: #00ccff; height: 28px;  width:180px;"><option>Male</option>
                        <option>Female</option>
                    </select><br></br>
                    
                    
                    <div style="margin-left: 3px;">  
                        <input type="submit" value="Register!!" style="background-color: green; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </form>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
                    
                    
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