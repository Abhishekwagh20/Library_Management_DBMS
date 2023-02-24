<%@page import="java.sql.*"%>
<%
	String bname=request.getParameter("bname");
	String author=request.getParameter("author");
	
	String status=request.getParameter("status");

	String username=(String)session.getAttribute("username");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update reserve  set status='U can take book with in two days' where username='"+username+"' and bookname='"+bname+"'");

	if(i!=0)
	{
	response.sendRedirect("addtostore.jsp?msg=active");
	}
	else
		{
		response.sendRedirect("addtostore.jsp?msg= Book Details Not Reserved  Suceesfully");
		}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>