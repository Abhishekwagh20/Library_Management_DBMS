<%@page import="java.sql.*"%>
<%
	String city=request.getParameter("city");
	String district=request.getParameter("district");
	String blood=request.getParameter("blood");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where city='"+city+" and district='"+district+" and blood='"+blood+"'");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blood bank</title>
<meta name="keywords" content="Red Blog Theme, Free CSS Templates" />
<meta name="description" content="Red Blog Theme - Free CSS Templates by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div id="templatemo_top_wrapper">
	<div id="templatemo_top">
    
        <div id="templatemo_menu">
                    
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="reg.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
            </ul>    	
        
        </div> <!-- end of templatemo_menu -->
        <a href="contact.html">Contact Us</a>
        <div id="twitter">
       
        </div>
        
  </div>
</div>

<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1><a href="http://www.templatemo.com" target="_parent"><strong>Welcome To</strong><span>Online Blood Bank System</span></a></h1>
        </div>
		
    
    </div>
</div>

<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
		<div id="templatemo_main_top">
        
        	<div id="templatemo_content">
        
    		<div class="post_section">
            
            	<div class="post_date">
                	<span></span>
            	</div>
<div class="post_content">
                	<h3>WelCome to Online Blood Bank system</h3>
		
		 <p> <h2><font color="blue">Requirement</font></h2><p>
		 
					
                    
</div>
                <div class="cleaner"></div>
            </div>
                
            <div class="post_section">
                    
                
            
              
              
              	<div class="post_date">
                	<span></span>
            	</div>
				
                
                <div class="post_content">
                				<marquee><table >
			 <tr><th><font color="red">City</font></th>
			 <th><font color="red">District</font></th>
			 <th><font color="red">Blood Group</font></th>
			
			 </tr>
			 <%while(rs.next())
			{
				%>
			 <tr>
			 <td><font color="green">&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%></font></td>
			 <td><font color="green">&nbsp;&nbsp;&nbsp;<%=rs.getString(7)%></font></td>
			 <td><font color="green">&nbsp;&nbsp;&nbsp;<%=rs.getString(9)%></font></td>
			 
		
			 
			 </tr>
			 <%}
	}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
			 </table></marquee>
            
            	</div>
                <div class="cleaner"></div>
            </div>
        
       	  </div>
            
          
          <div id="templatemo_sidebar">
            	
                <h4>Categories</h4>
                <ul class="templatemo_list">
                    <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="reg.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
                </ul>
                
                <div class="cleaner_h40"></div>
                
                
                
                <div id="ads">
                	
                </div>
                
            </div>
        
        	<div class="cleaner"></div>
            
        </div>
        
    </div>
    
    <div id="templatemo_main_bottom"></div>
    
</div>

<div id="templatemo_footer">

</div></body>
</html>