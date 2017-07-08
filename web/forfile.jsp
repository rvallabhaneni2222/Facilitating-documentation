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
        var a = document.ff.file.value;
     //   var b = document.ff.pass.value;
       
   
         if(a==0){
            alert('Please add some file');
            return false;
            document.getElementById("file").focus();            
        } //if(b==0){
            //alert('Please Enter Password');
           // return false;
            //document.getElementById("pass").focus();            
        //} 
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
            <li id="menu_active"><a href="adminpage.jsp">Home</a></li>
            <li id="menu_active"><a href="userD.jsp">UserDetials</a></li>
            <li id="menu_active"><a href="fileD.jsp">Document Detials</a></li>
         
            
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
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Fouund..!!')</script>");
}
if(request.getParameter("f")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}

if(request.getParameter("fa")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}
%>

    <div class="wrapper">
        <article class="col3" style="background-color:#33ff66; width: 450px">
            <h3><B>Data Upload Here..!</B></h3>
        <div class="pad">
            <p class="pad_bot2" style="text-align: justify;width: 550px;"><strong>
                    <%
//String name = session.getAttribute("nm").toString();

%>       
<form action="upload" name="ff" enctype="multipart/form-data" method="post" onsubmit="return check()" >
                       
Data: <br><input type="file" id="file" name="file" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                   
                   
                    <div style="margin-left: 3px;">  
                       <input type="submit" value="Submit" style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
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