<!DOCTYPE>

<html>
<head>
  <title>Contact Us</title>

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
		<li class="current-item"><a href="contact.jsp">Contact Us</a></li>
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
            <p>PS Freshers. First year students shoudl be introduced with us.</p>         
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
            <p>Break The Circle, Inter Photography Compitition of different univarsities.</p>         
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
	   
	<!--<div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="680" height="250" src="images/001.jpg" alt="&quot;Preparation of 2nd Intra IUT Photography Exhibition of 2015&quot;" /></li>
          <li><img width="680" height="250" src="images/002.jpg" alt="&quot;IUT&quot;" /></li>
        </ul>
      </div>   -->  
	   
	<div id="content">
        <div class="content_item">
		
			 <div class="form_settings">
            <h2>Contact Us</h2>
            <p> If you face any kind of problem regarding your account, login or want to contact us directly you can submit your query below or simply <a href="http://www.facebook.com/muhaimenul">contact me</a> for more details.</p>
			<p>&nbsp;</p>
			<p><span>Name</span><input class="contact" type="text" name="your_name" value="" required /></p>
			<p><span>Email Address</span><input class="contact" type="text" name="your_email" value="" required /></p>
			<p><span>Message</span><textarea class="contact textarea" rows="8" cols="50" name="your_message" ></textarea></p>
            <p style="padding: 10px 0 10px 0;">Please enter the answer to this simple maths question (to prevent spam)</p>
			<p><span>Maths Question: 9 + 3 = ?</span><input type="text" name="user_answer" class="contact" /><input type="hidden" name="answer" value="4d76fe9775" required /></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="Send" /></p>
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