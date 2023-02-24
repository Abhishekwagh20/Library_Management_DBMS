<%@page import="java.sql.*"%>
<%
	
	
	int count=0;
	String name=request.getParameter("name");
	String username=request.getParameter("username");
	String rollno=request.getParameter("rollno");
	String branch=request.getParameter("branch");
	String section=request.getParameter("section");
	String eid=request.getParameter("eid");
	String pwd=request.getParameter("pwd");
	String mno=request.getParameter("mno");
	String resident=request.getParameter("resident");
	String add=request.getParameter("add");
	String role="student";
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select count(*) from student where rollno='"+rollno+"'");
	if(rs.next())
	{
	 count=rs.getInt(1);
	 if(count==0)
	{
		int i=st.executeUpdate("insert into student values('"+name+"','"+username+"','"+rollno+"','"+branch+"','"+section+"','"+eid+"','"+pwd+"','"+mno+"','"+resident+"','"+add+"','"+role+"')");
		
		int ii=st.executeUpdate("insert into login values('"+rollno+"','"+pwd+"','"+role+"')");
		if((i==0)&&(ii==0))
		{
		response.sendRedirect("reg.jsp?msg=failure");
		}
		else
		{
		response.sendRedirect("reg.jsp?msg=Inserted Suceesfully");
		}
	}
	else
	{
	response.sendRedirect("reg.jsp?msg=Sudent Already Exists For This Rollno");
	}
	}
	}
	catch(Exception e)
	{
	out.println(e);
	}
%>