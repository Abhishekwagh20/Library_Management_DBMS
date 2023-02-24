<%@page import="java.sql.*"%>
<%
	String username=request.getParameter("username");
	String pwd=request.getParameter("pwd");
	String role=request.getParameter("role");;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select role from login where rollno='"+username+"' and password='"+pwd+"'and role='"+role+"'");
	if(rs.next())
	{
	role=rs.getString(1);
	System.out.println(role);
	if(role.equals("admin"))
	{
	response.sendRedirect("admin.jsp?message=success");
	session.setAttribute("username",username);
	}
	if(role.equals("student"))
	{
	response.sendRedirect("student.jsp?message=success");
	session.setAttribute("username",username);
	}
	
	}
	else
	{
	response.sendRedirect("login.jsp?message=userfail");
	}
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>