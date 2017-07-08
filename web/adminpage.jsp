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
        var b = document.ff.date.value;
        var c = document.ff.loc.value;
        var d = document.ff.strom.value;
        var e = document.ff.cat.value;
        var f = document.ff.a1.value;
        var g = document.ff.a2.value;
        var h = document.ff.des.value;
   
         if(a==0){
            alert('Please Enter Name');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter date');
            return false;
            document.getElementById("date").focus();            
        } if(c==0){
            alert('Please Enter Locaction');
            return false;
            document.getElementById("loc").focus();            
        } if(d==0){
            alert('Please Enter Strom Name');
            return false;
            document.getElementById("strom").focus();            
        } if(e==0){
            alert('Please Enter Warning Name');
            return false;
            document.getElementById("war").focus();            
        } if(f==0){
            alert('Please Enter the fields');
            return false;
            document.getElementById("a1").focus();            
        } if(g==0){
            alert('Please Enter fields');
            return false;
            document.getElementById("a2").focus();            
        } if(h==0){
            alert('Please Enter description');
            return false;
            document.getElementById("des").focus();            
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
              <li id="menu_active"><a href="forfile.jsp">Home</a></li>
         
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
    
if(request.getParameter("msg")!=null) {
out.println("<script>alert('Wellcome..!!')</script>");
}
if(request.getParameter("data")!=null) {
out.println("<script>alert('information saved..!!')</script>");
}
if(request.getParameter("f")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}
if(request.getParameter("fa")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}
%>
    <div class="wrapper">
        <article class="col3" style="background-color: #cccccc; width: 540px">
        <h3><B>CADS - Insertion Form</B></h3>
        <div class="pad">
            <p class="pad_bot2" style="text-align: justify;width: 550px;"><strong>
                    
                    <form action="infosave.jsp" name="ff"  method="get" onsubmit="return check()">
                    Document Type: <br><input type="text" name="name" id="name" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Date: <br><input type="date" name="date" id="date" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Location: <br><input type="text" name="loc" id="loc" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Strom Name:<br> <input type="text" name="strom" id="strom" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Storm Category:<br> <input type="text" name="cat" id="cat" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Warnings:<br> <input type="text" name="war" id="war" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Add:<br> <input type="text" name="a1" id="a1" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Add: <br><input type="text" name="a2" id="a2" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Description: <br><input type="text" name="des" id="des" style="background: #00ccff; height: 82px; width: 300px;"><br><br>
                    
                    <div style="margin-left: 3px;">  
                        <input type="submit" value="Add Attribute" style="background-color: green; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
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