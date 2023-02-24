<%String msg=request.getParameter("msg");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Library Management System</title>
<meta name="keywords" content="Slider Web Template, Free Download, Design Layout, XHTML CSS" />
<meta name="description" content="Slider Web Template, Free Download, Web Design Layout from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script type="text/javascript">
function validation()
{
var a=document.reg.name.value;
if(a=="")
	{
	alert("Please Enter First Names")
		document.reg.name.focus();
	return false;
	}
	var b=document.reg.username.value;
if(b=="")
	{
	alert("Please Enter Last Name")
		document.reg.username.focus();
	return false;
	}
	var c=document.reg.branch.value;
if(c=="")
	{
	alert("Please Enter Your Branch")
		document.reg.branch.focus();
	return false;
	}

return true;
}
</script>
</head>
<body>

<div id="templatemo_container">
<!--  Free CSS Template from www.TemplateMo.com  -->
	<div id="templatemo_title">
    	<div id="title">Online Library </div>
    </div> <!-- end of title -->
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="index.html" class="current">Home<br /><span>a place to start</span></a></li>
            <li><a href="login.jsp">Login<br /><span>what we have done</span></a></li>
            <li><a href="reg.jsp">Student Registration<br /><span>what we do</span></a></li>
            <li><a href="login.jsp">Librarian<br/><span>what we are doing</span></a></li>            
            <li><a href="#">About Us<br /><span>who we are</span></a></li>
            <li><a href="#" class="last">Contact Us<br /><span>get to us</span></a></li>
        </ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_banner">
        <div id="one" class="contentslider">
            <div class="cs_wrapper">
                <div class="cs_slider">
                
                    <div class="cs_article">
                        <a href="#">
                        <img src="images/article01.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="#">Online Library Management</a> </h2>
                            
                            <p>
                            Hendrerit tincidunt vero vel eorum claritatem. Soluta legunt quod qui dolore typi. Vel dolore soluta qui odio non. Sollemnes minim eorum feugiat nihil nobis. Gothica dolor in legentis nihil quinta.
                            </p>
                            
                            <a href="#">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="#">
                        <img src="images/article02.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="#">Project Two</a> </h2>
                            
                            <p>
							Lorem ipsum dolor sit ame, consectetur adipiscing elit. In tincidunt, nulla id accumsan ultrices, justo turpis adipiscing nunc, ac pellentesque ipsum massa id dui. Vivamus ut dui ut mi lobortis sodales. Nullam sollicitudin justo ut lorem. 
                            </p>
                            
                            <a href="#">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="#">
                        <img src="images/article03.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="#">Project Three</a> </h2>
                            
                            <p>
                            Hendrerit tincidunt vero vel eorum claritatem. Soluta legunt quod qui dolore typi. Vel dolore soluta qui odio non. Sollemnes minim eorum feugiat nihil nobis. Gothica dolor in legentis nihil quinta.
                            </p>
                            
                            <a href="#">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="#">
                        <img src="images/article04.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="#">Project Four</a> </h2>
                            
                            <p>
                            Aliquam elit risus, volutpat quis, mattis ac, elementum eget, mauris. In hac habitasse platea dictumst. Aenean cursus. Maecenas aliquam, ligula id egestas suscipit, nisi sapien dignissim nibh, ac vestibulum lorem urna in neque.
                            </p>
                            
                            <a href="#">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
              
                </div><!-- End cs_slider -->
            </div><!-- End cs_wrapper -->
        </div><!-- End contentslider -->

	<!-- Site JavaScript -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
	<script type="text/javascript">
			$(function() {
				$('#one').ContentSlider({
					width : '940px',
					height : '300px',
					speed : 800,
					easing : 'easeInOutBack'
				});
			});
		</script>
	<script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
	<script src="js/chili/recipes.js" type="text/javascript"></script>
    	
    </div><!-- end ob banner -->
    
    <div id="templatemo_content">
    	
        <div id="content_left">
        <strong><font color="#FF3300" size="+1" face="Courier New">&nbsp;<%
                   String message=request.getParameter("message");
                   if(message!=null && message.equalsIgnoreCase("userfail"))
                    {
                    out.println("<font color='red'><blink>Userid Or Password Incorrect <br/>Try With Correct Username and Password...</blink></font>");
					
                    }
                  %></font></strong><br/><br/>
			
        	<div class="title">Welcome to Login</div>
			
            	 <form name="reg" action="login1.jsp" method="post" >
	    
		 <table class="s1" height="100" >
  

  

	<tr ><td  align="right">Roll Number&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="username" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td align="right">Password&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="password" name="pwd" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>

	<tr><td  align="right" >User type&nbsp;&nbsp;&nbsp;:</td>
    <td ><select name="role"><option value="0">--Select--</option><option value="student">Student</option><option value="admin">Lis Admin</option></select></td></tr><tr ><td height="10"></td>
    </tr>
	
     
	   
     <tr colspan="2" ><td align="center"><input type="submit" value="Login" onclick="validation()"></td><td><center><input TYPE="RESET" VALUE="Reset"></center></td></tr>
</table>
<br><br><br><br><br>

	 </form>
            
            
            <div class="cleaner" style="height: 40px">&nbsp;</div>
            
            <div class="testimonial_section">
                <p style="text-align:center">"Aliquam pretium porta odio. Fusce quis diam sit amet tortor luctus pellentesque. Donec accumsan urna non elit tristique mattis."
                </p>
                — TemplateMo.com, <a href="http://www.templatemo.com" target="_blank">Web Templates</a>
            </div>
            
        </div> <!-- end of content left -->
        
        <div id="content_right">
        	
            <div class="title">Latest Updates</div>
            <p>"ves tib ulum ele men tum, sag ittis nec, diam. Mau ris bla ndit vehicula neque. Proin consectetuer. Donec venenatis. <a href="#">Read More</a></p>
            
            <div class="cleaner" style="height: 40px;">&nbsp;</div>
            
            <div class="content_right_box">
            	<div class="box_title">Newsletter</div>
                <p>Enter your email address to subscribe our newsletter.</p>
            <input style="width:230px;" type="text" value="" />
                <div class="rc_btn"><a href="#">Subscribe</a></div>
			</div>
        
        </div> <!-- end of content right -->
                                
    	<div id="bottom_bg"></div>
    </div> <!-- end of content -->
    
    
        
        <div class="cleaner">&nbsp;</div>

  </div> <!-- end of bottom panel -->
    
    <div id="templatemo_footer">
        Copyright © 2048 <a href="subpage.html"><strong>Your Company Name</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    </div> <!-- end of footer -->
<!--  CSS Templates Free Download from www.TemplateMo.com  -->
</div> <!-- end of container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>