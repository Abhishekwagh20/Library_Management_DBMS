<%@page import="java.sql.*"%>
<%
	String bname=request.getParameter("bname");
	String author=request.getParameter("author");
	String edition=request.getParameter("edition");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from book where bookname='"+bname+"' and author='"+author+"' and edition='"+edition+"'");
	if(i!=0)
	{
	response.sendRedirect("addtostore.jsp?msg= Book  Details Deleted Sucessfully");
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>