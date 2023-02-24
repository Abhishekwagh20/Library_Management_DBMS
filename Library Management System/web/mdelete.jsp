<%@page import="java.sql.*"%>
<%
	String mname=request.getParameter("mname");
	String author=request.getParameter("author");
	String noc=request.getParameter("noc");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from magazine where magazinename='"+mname+"' and author='"+author+"' and noofcopies='"+noc+"'");
	if(i!=0)
	{
	response.sendRedirect("addtostore.jsp?msg= Magazine Deatails Deleted Sucessfully");
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>