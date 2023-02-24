<%String msg=request.getParameter("msg");%>
<% String username=(String)session.getAttribute("username");%>
<%@page import="java.sql.*"%>
<%
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from newbook");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Library Management System</title>
<meta name="keywords" content="Slider Web Template, Free Download, Design Layout, XHTML CSS" />
<meta name="description" content="Slider Web Template, Free Download, Web Design Layout from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
</head>
<body>

<div id="templatemo_container">
<!--  Free CSS Template from www.TemplateMo.com  -->
	<div id="templatemo_title">
    	<div id="title">Online Library </div>
    </div> <!-- end of title -->
    
    <div id="templatemo_menu">
        <ul>
             <li><a href="student.jsp" class="current">Home<br /><span>a place to start</span></a></li>
            <li><a href="viewbooks.jsp">View Books<br /><span>what we have done</span></a></li>
            <li><a href="viewjournals.jsp"> view Journals<br /><span>what we do</span></a></li>
            <li><a href="viewmagazines.jsp">View Magazines<br/><span>what we are doing</span></a></li>            
            <li><a href="reservedbooks.jsp">Reserved books<br /><span>who we are</span></a></li>
            <li><a href="index.html" class="last">Logout<br /><span>get to us</span></a></li>
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
                            <h2> <a href="#">Welcome to Library Management System</a> </h2>
                            
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
        
        	<table cellspacing="20" border="2" width="600px;">
			 <tr><th><font color="red">Book  Name</font></th><th><font color="red">Author</font></th><th><font color="red">Edition</font></th><th><font color="red">Rill No</font></th></tr>
			 <%while(rs.next())
			{
				%>
			 <tr>
			 <td><font color="green"><%=rs.getString(1)%></font></td>
			 <td><font color="green"><%=rs.getString(2)%></font></td>
			 <td><font color="green"><%=rs.getString(3)%></font></td>
			 <td><font color="green"><%=rs.getString(4)%></font></td>
			
		
			 
			 </tr>
			 <%}
	}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
			 </table>
			  </div>
            </div>
			<div id="content_middle">
	 
	 </div>
     <div id="content_right">
	 	 </div>		
      </div> 
       </body>
</html>