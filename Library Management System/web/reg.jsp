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
	alert("Please Enter First Name")
		document.reg.name.focus();
	return false;
	}
	if(a.length <=8 )
	{
		alert("First name Must contains 8 to 20 characters");
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
	var z=document.reg.rollno.value;
if(z=="")
	{
	alert("Please Enter Roll Number")
		document.reg.rollno.focus();
	return false;
	}
	var c=document.reg.branch.value;
if(c=="")
	{
	alert("Please Enter Your Branch")
		document.reg.branch.focus();
	return false;
	}
	var d=document.reg.section.value;
if(d=="")
	{
	alert("Please Enter Your Section")
		document.reg.section.focus();
	return false;
	}
	var e=document.reg.eid.value;
if(e=="")
	{
	alert("Please Enter Your Email ")
		document.reg.eid.focus();
	return false;
	}
	if (e.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.reg.eid.focus();
return false;
}
if (e.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.reg.eid.focus();
return false;
}	
	var f=document.reg.pwd.value;
if(f=="")
	{
	alert("Please Enter Your Password ")
		document.reg.pwd.focus();
	return false;
	}
	var g=document.reg.mno.value;
if(g=="")
	{
	alert("Please Enter Your Mobile Number ")
		document.reg.mno.focus();
	return false;
	}
	if(isNaN(g))
	{
		alert("Mobile Number Must be Numaric");
		document.reg.mno.focus()
			return false;
	}
	if(g.length!=10)
	{
		alert("Mobile Number Must Be 10 Numbers");
		document.reg.mno.focus();
		return false;
	}

var h=document.reg.add.value;
if(h=="")
	{
	alert("Please Enter Your Address ")
		document.reg.add.focus();
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
                            <h2> <a href="#">Project One</a> </h2>
                            
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
		<%if(msg!=null){%>
			<h1><font color="green"><%=msg%></font></h1>
			<%}%>
        
        	<div class="title">Welcome to Student Registration</div>
            <form name="reg" action="reg1.jsp" method="post" onSubmit=" return validation()">
	    
		 <table class="s1" height="100" >
  

  <tr ><td  align="right"> First Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input  type="text" name="name" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td  align="right">Last Name&nbsp;&nbsp;&nbsp;:</td>
    <td><input type="text" name="username" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	<tr ><td  align="right">Roll No&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="rollno" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	<tr ><td  align="right">Branch&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="branch" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	<tr ><td align="right">Section&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="section" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	<tr ><td  align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="eid" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td align="right">Password&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="password" name="pwd" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	
	<tr ><td align="right">Phone&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="mno" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	<tr><td  align="right" >Resident&nbsp;&nbsp;&nbsp;:</td>
    <td ><select name="resident"><option value="0">--Select--</option><option value="hostel">Hosteler</option><option value="days">Dayscholar</option></select></td></tr><tr ><td height="10"></td>
    </tr>
	<tr ><td  align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="add" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
     
     
	   
     <tr colspan="2" ><td align="center"><input type="submit" value="Register"></td><td><center><input TYPE="RESET" VALUE="Reset"></center></td></tr>
</table>

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
    
    <div id="templatemo_bottom_panel">
    	
        <div class="bottom_section">
        	<h3>Affiliate programs</h3>
            <p>Nulla enim nibh, conse ctetuer sed, vesti bulum eleme ntum, sagittis nec, diam. Mauris blan dit vehi cula neque. Proin consec tetuer.<a href="#">Read More</a></p>
            <div class="cleaner">&nbsp;</div>
        </div>

        <div class="bottom_section">
        	<h3>Our Partners</h3>
            <ul>
            	<li><a href="http://www.templatemo.com" title="CSS Templates" target="_blank">Free Templates</a></li>
            	<li><a href="http://www.flashmo.com" title="Flash Templates" target="_blank">Flash Templates</a></li>
            	<li><a href="http://www.webdesignmo.com" title="Web Design Resources" target="_blank">Web Design</a></li>
				<li><a href="http://www.photovaco.com" title="Free Stock Photos" target="_blank">Free Photos</a></li>
            </ul>
            <div class="cleaner">&nbsp;</div>
        </div>

        <div class="bottom_section">
        	<h3>CSS Templates</h3>
            <ul>
            	<li><a href="http://www.templatemo.com/preview/templatemo_087_solution">The Solution</a></li>
                <li><a href="http://www.templatemo.com/preview/templatemo_092_software">Software Co.</a></li>
                <li><a href="http://www.templatemo.com/preview/templatemo_089_dating">Dating Site</a></li>
                <li><a href="http://www.templatemo.com/preview/templatemo_086_book_store">Book Store</a></li>
            </ul>
            
        </div>

        <div class="bottom_section">
        	<h3>XHTML/CSS validation</h3>
            <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
            <div class="cleaner">&nbsp;</div>
        </div>
        
        <div class="cleaner">&nbsp;</div>

  </div> <!-- end of bottom panel -->
    
    <div id="templatemo_footer">
        Copyright © 2048 <a href="subpage.html"><strong>Your Company Name</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    </div> <!-- end of footer -->
<!--  CSS Templates Free Download from www.TemplateMo.com  -->
</div> <!-- end of container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>