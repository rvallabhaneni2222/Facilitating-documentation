<%@page import="java.sql.ResultSet"%>
<%@page import="sun.security.krb5.internal.crypto.crc32"%>
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
                                <li id="menu_active"><a href="forfile.jsp">Home</a></li>
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

                    if (request.getParameter("msg") != null) {
                        out.println("<script>alert('Wellcome..!!')</script>");
                    }
                    if (request.getParameter("msgg") != null) {
                        out.println("<script>alert('Error Fouund..!!')</script>");
                    }
                    if (request.getParameter("f") != null) {
                        out.println("<script>alert('Error Found..!!')</script>");
                    }

                    if (request.getParameter("fa") != null) {
                        out.println("<script>alert('Error Found..!!')</script>");
                    }
                %>

                <div class="wrapper">
                    <article class="col3" style="background-color:#ccccff; width: 1250px">
                        <h3><B>Document Details..!</B></h3>
                        <div class="pad">
                            <p class="pad_bot2" style="text-align: justify;width:1700px; margin-left: 30px;"><strong>

                                    <table  border="4" style="text-align: center; width: 850px;">
                                        <tr align="center" style="font-weight: bold; color: red">
                                            <td>ID</td>
                                            <td>FILE</td>
                                            <td>DOCUMENT NAME</td>                        
                                            <td>DATE</td>
                                            <td>LOCATION</td>
                                            <td>STROM NAME</td>
                                            <td>CATEGORY</td>
                                            <td>WARNING</td>
                                            <td>ADDITION 1</td>
                                            <td>ADDITION 2</td>
                                        </tr>

                                        <tr align="center">
                                            <%
                                                String n = null, u = null, p = null, m = null, a = null, l = null, s = null, t = null, x = null, y = null, z = null;


                                                Connection con = DbConnector.getConnection();
                                                Statement st = con.createStatement();
                                                ResultSet rs = st.executeQuery("select * from admin ");
                                                while (rs.next()) {

                                                    n = rs.getString("name");
                                                    u = rs.getString("docname");
                                                    p = rs.getString("date_");
                                                    m = rs.getString("loc");
                                                    a = rs.getString("strom");
                                                    l = rs.getString("cat");
                                                    s = rs.getString("war");
                                                    t = rs.getString("a1");
                                                    x = rs.getString("a2");
                                                    y = rs.getString("des");
                                                    z = rs.getString("id");


                                            %>       
                                            <td><%=z%></td>
                                            <td><%=n%></td>
                                            <td><%=u%></td>
                                            <td><%=p%></td>
                                            <td><%=m%></td>
                                            <td><%=a%></td>
                                            <td><%=l%></td>
                                            <td><%=s%></td>
                                            <td><%=t%></td>
                                            <td><%=x%></td>
                                        

                                        </tr>

                                        <%
                                            }
                                        %>                         


                                    </table>
                                </strong>
                            </p>

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