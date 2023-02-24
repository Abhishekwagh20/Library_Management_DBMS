<%@page import="java.sql.*"%>
<%
	
	
	int count=0;
	String jname=request.getParameter("jname");
	String author=request.getParameter("author");
	String pdate=request.getParameter("pdate");
	String noc=request.getParameter("noc");
	
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from journal where journalname='"+jname+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into journal values('"+jname+"','"+author+"','"+pdate+"','"+noc+"')");
		
		
		if(i==0)
		{
		response.sendRedirect("addtostore.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("addtostore.jsp?msg= journal Details Inserted Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("addtostore.jsp?msg Name Already Exists For This journal ");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>
	