<%@page import="java.sql.*"%>
<%
	
	
	int count=0;
	int count1=0;
	int cnt=0;
	String bname=request.getParameter("bname");
	String author=request.getParameter("author");
	String edition=request.getParameter("edition");
	String noc=request.getParameter("noc");
	String pdate=request.getParameter("pubdate");
	String status="processing";
	String username=(String)session.getAttribute("username");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from reserve where username='"+username+"' and bookname='"+bname+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);	 
	 
	 if(count==0)
		{
		ResultSet rs1=st.executeQuery("select noofcopies from book where bookname='"+bname+"'");
		if(rs1.next())
		{
		count1=Integer.parseInt(rs1.getString(1));
		cnt=count1-1;
		int ii=st.executeUpdate("update book set noofcopies='"+cnt+"' where bookname='"+bname+"'");
		int i=st.executeUpdate("insert into reserve values('"+bname+"','"+author+"','"+edition+"','"+noc+"','"+pdate+"','"+username+"','"+status+"')");
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
	