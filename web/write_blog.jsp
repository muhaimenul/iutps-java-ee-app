<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="com.ove.model.Blogs" %>
<%@page import="com.ove.dao.BlogsDao" %>
<%@page import="com.ove.controller.BlogServlet" %>
<%@page import="com.ove.model.User" %>
<%@page import="com.ove.dao.DataAccess" %>
<%@page import= "javax.servlet.http.HttpSession" %>
<!DOCTYPE>

<html>
    <head>
        <title>Blog Writing</title>

        <link rel="stylesheet" type="text/css" href="css/i_style.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/image_slide.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/calendar.js"></script>
    </head>

    <body>
        <div id="main">
            <div id="header">
                <div id="banner" style="display: inline">
                    <div id="welcome">
                        <br>
                        <img width="100" height="90" src="images/black-02.png" alt="iutps logo" style="float: left"/>
                        <h1>IUT Photography Society</h1>
                        <h2>Photography came in my life (Slogan)</h2>
                    </div><!--close welcome-->
                    <!--<div id="welcome_slogan">
                      <h1>Photography came in my life (Slogan)</h1>
                    </div><!--close welcome_slogan-->
                </div><!--close banner-->
            </div><!--close header-->

            <div id="menubar">
                <nav class="menu">
                    <ul class="clearfix">
                        <li><a href="UserController?action=index">Home</a></li>
                        <li><a href="UserController?action=memlog">Your Profile</a></li>
                        <li><a href="#">Information<span class="arrow">&#9660;</span></a>
                            <ul class="sub-menu">
                                <li><a href="history.jsp">History</a></li>
                                <li><a href="services.jsp">Services</a></li>
                                <li><a href="UserController?action=listuser">Members</a></li>
                                <li><a href="faq.jsp">FAQ</a></li>
                                <li><a href="join.jsp">Join Us</a></li>
                            </ul>
                        </li>
                        <li><a href="UserController?action=gal">Gallery</a></li>
                        <li><a href="BlogServlet?action=listBlog">Blog</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                        <li class="current-item"><a href="#">Blog Writing</a></li>
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

                    <div class="sidebar">
                        <div class="sidebar_item">
                            <div>
                                <div><h2>Calendar</h2></div>
                                <div class="jquery-calendar"></div>
                            </div>
                        </div><!--close sidebar_item--> 
                    </div><!--close sidebar--> 		
                </div><!--close sidebar_container-->	

                <div class="slideshow">
                    <ul class="slideshow">
                        <li class="show"><img width="680" height="250" src="images/001.jpg" alt="&quot;Preparation of 2nd Intra IUT Photography Exhibition of 2015&quot;" /></li>
                        <li><img width="680" height="250" src="images/002.jpg" alt="&quot;IUT&quot;" /></li>
                    </ul>
                </div> 


                <div id="content">
                    <div class="content_item">

                        <div class="form_settings">
                            <% User currentUser2 = (User) (session.getAttribute("currentSessionUser"));
                                DataAccess dt2 = new DataAccess();
                                String id2 = currentUser2.getUSER_ID();
                             currentUser2 = dt2.getUserById(id2);%>
                            <h2> <%= currentUser2.getNAME()%> 's Blog!</h2>	
                            <h3>Write Your Article Here,</h3>
                            <p>&nbsp;</p>
                            <form action='BlogServlet' method='POST' >

                                <input type="hidden" name="b_name" value="<%= currentUser2.getNAME()%>">
                                <p><span>Article Title</span><input class="contact" type="text" name="b_title" value="" required /></p>
                                <p><span>Body</span><textarea class="contact_textarea" rows="15" cols="60" name="b_body" required></textarea></p>

                                <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="Done" /></p>
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