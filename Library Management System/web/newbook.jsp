<%@page import="java.sql.*"%>
<%
	
	
	int count=0;
	String bname=request.getParameter("bname");
	String author=request.getParameter("author");
	String edition=request.getParameter("edition");
	String username=(String)session.getAttribute("username");
	
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from newbook where bookname='"+bname+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into newbook values('"+bname+"','"+author+"','"+edition+"','"+username+"')");
		
		
		if(i==0)
		{
		response.sendRedirect("astudent.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("student.jsp?msg= Book Request Send  Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("student.jsp?msg =Book Request is Already sent for this book");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>
	