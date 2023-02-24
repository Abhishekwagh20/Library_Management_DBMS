<%@page import="java.sql.*"%>
<%
	
	

	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	String add=request.getParameter("add");
	String city=request.getParameter("city");
	String district=request.getParameter("district");
	String gender=request.getParameter("gender");
	String blood=request.getParameter("blood");
	String bp=request.getParameter("bp");
	
	String userid=(String)session.getAttribute("userid");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select userid from user where userid='"+userid+"');
	if(rs.next())
	{
	 
		int i=st.executeUpdate("update patient set fname=?,lname=?,gender=?,age=?,email=?,address=?,city=?,zip=?,phno=? where userid='"+userid+"')");
		if(i==0)
		{
		response.sendRedirect("viewbooks.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("viewbooks.jsp?msg= Book Details Reserved  Suceesfully");
		}
		}
		
		
	}
	else
	{
	response.sendRedirect("viewbooks.jsp?msg=Already Booked By you");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>
	