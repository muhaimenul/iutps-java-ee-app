 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Add Member</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/i_style.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/image_slide.js"></script>

    </head>

    <body>
        <div id="main">
            <div id="header">
                <div id="banner" style="display: inline">
                    <div id="welcome">
                        <br>
                        <img width="100" height="90" src="images/black-02.png" alt="iutps logo" style="float: left"/>
                        <h1>IUT Photography Society</h1>
                        <h2>Admin Panel</h2>
                    </div><!--close welcome-->
                    <!--<div id="welcome_slogan">
                      <h1>Photography came in my life (Slogan)</h1>
                    </div><!--close welcome_slogan-->
                </div><!--close banner-->
            </div><!--close header-->

            <div id="menubar">
                <nav class="menu">
                    <ul class="clearfix">

                        <li><a href="AdminController?action=index">Home</a></li>
                        <li class="current-item"><a href="#">Add Member</a></li>
                        <li><a href="AdminController?action=listuser1">Member List</a></li>
                        <li><a href="AdminController?action=edit1">Update Info</a></li>
                        <li><a href="LogoutServlet" >Logout</a></li>
                    </ul>
                </nav>
            </div><!--close menubar-->

            <div id="site_content">		

                <div class="sidebar_container">       
                    <div class="sidebar">
                        <div class="sidebar_item">
                            <h2>Latest Update</h2>
                            <h3>25th March 2016</h3>
                            <p>Meeting will be held at 4.00PM. Everyone should come at room 405.</p>
                        </div><!--close sidebar_item--> 
                    </div><!--close sidebar-->     		
                    <div class="sidebar">
                        <div class="sidebar_item">
                            <h2>Upcoming Events</h2>
                            <h3>January 2016</h3>
                            <p>PS Freshers. First year students should be introduced with us.</p>         
                        </div><!--close sidebar_item--> 
                    </div><!--close sidebar-->
                    <div class="sidebar">
                        <div class="sidebar_item">
                            <h3>May 2016</h3>
                            <p>Exhibition. Some good photos of PS member's will be displayed in Student Center </p>         
                        </div><!--close sidebar_item--> 
                    </div><!--close sidebar-->  
                    <div class="sidebar">
                        <div class="sidebar_item">
                            <h3>November 2016</h3>
                            <p>Break The Circle, Inter Photography Competition of different universities.</p>         
                        </div><!--close sidebar_item--> 
                    </div><!--close sidebar-->  		
                </div><!--close sidebar_container-->	


                <div class="slideshow">
                    <ul class="slideshow">
                        <li class="show"><img width="680" height="250" src="images/001.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                        <li><img width="680" height="250" src="images/002.jpg" alt="&quot;Enter your caption here&quot;" /></li>
                    </ul>
                </div>   

                <!--<div class="slideshow">
                    <ul class="slideshow">
                  <li class="show"><img width="680" height="250" src="images/001.jpg" alt="&quot;Preparation of 2nd Intra IUT Photography Exhibition of 2015&quot;" /></li>
                  <li><img width="680" height="250" src="images/002.jpg" alt="&quot;IUT&quot;" /></li>
                </ul>
              </div>   -->

                <div id="content">
                    <div class="content_item">
                        <div class="form_settings">
                            <h2>Add New Member</h2>
                            <p>Insert the new member's information here.</p>
                            <p>&nbsp;</p>
                            <form action='AdminController' method='POST' name="frmAddUser">

                                <p><span>Student ID : </span> <input class="contact" type="text" name="mem_id" value="<c:out value="${user.USER_ID}"/>" required/></p>

                                <p><span>Name</span><input class="contact" type="text" name="mem_name" value="<c:out value="${user.NAME}"/>" required/></p>

                                <p><span>Department</span><input class="contact" type="text" name="mem_dept" value="<c:out value="${user.DEPT}"/>" required/></p>

                                <p><span>Batch</span><input class="contact" type="text" name="mem_batch" value="<c:out value="${user.BATCH}"/>" required/></p>

                                <p><span>Phone Number</span><input class="contact" type="text" name="mem_phone" value="<c:out value="${user.PHONE}"/>"  required/></p>

                                <p><span>E-mail</span><input class="contact" type="email" name="mem_email" value="<c:out value="${user.EMAIL}"/>"  required/></p>

                                <p><span>Designation</span><input class="contact" type="text" name="mem_des" value="<c:out value="${user.DESIGNATION}"/>" required/></p>

                                <p><span>Password</span><input class="contact" type="password" name="mem_pass" value="<c:out value="${user.PASSWORD}"/>" required/></p>

                                <p><span>Address</span><input class="contact" type="text" name="mem_adrs" value="<c:out value="${user.ADDRESS}"/>" required/></p>

                                <p><span>Current Job</span><input class="contact" type="text" name="mem_job" value="<c:out value="${user.CURRENT_JOB}"/>" required/></p>

                                <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="addm" value="Add Member" /></p>
                            </form>

                        </div><!--close form_settings-->
                    </div><!--close content_item-->
                </div><!--close content-->  
            </div><!--close site_content-->  

            <div id="content_bottom">
                <div class="content_bottom_container_box">
                    <h4>Latest Blog Post</h4>
                    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
                    <div class="readmore">
                        <a href="#">Read more</a>
                    </div><!--close readmore-->
                </div><!--close content_bottom_container_box-->
                <div class="content_bottom_container_box">
                    <h4>Latest News</h4>
                    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
                    <div class="readmore">
                        <a href="#">Read more</a>
                    </div><!--close readmore-->
                </div><!--close content_bottom_container_box-->
                <div class="content_bottom_container_box">
                    <h4>News Latter</h4>
                    <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
                    <div class="readmore">
                        <a href="#">Read more</a>
                    </div><!--close readmore-->	  
                </div><!--close content_bottom_container_box1-->      
                <br style="clear:both"/>
            </div><!--close content_bottom-->   
        </div><!--close main-->

        <div id="footer">
            <a href="https://www.facebook.com/IUTPS/">IUTPS</a> | Copyright | <a href="http://facebook.com/muhaimenul">Muhaimenul Islam</a>
        </div><!--close footer--> 


    </body>
</html>