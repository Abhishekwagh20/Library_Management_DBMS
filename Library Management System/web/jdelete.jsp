<%@page import="java.sql.*"%>
<%
	String jname=request.getParameter("jname");
	String author=request.getParameter("author");
	String edition=request.getParameter("noc");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from journal where journalname='"+jname+"' and author='"+author+"' and noofcopies='"+edition+"'");
	if(i!=0)
	{
	response.sendRedirect("addtostore.jsp?msg=Journal Details Deleted Sucessfully");
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>