<%-- 
    Document   : not
    Created on : 16 Nov, 2022, 7:47:52 PM
    Author     : venka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String username=(String)session.getAttribute("username");%>
<%@page import="java.sql.*"%>
<%
	String bname=request.getParameter("bname");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into searchdetails values('"+username+"','"+bname+"')");
        if(i>0)
        {
            response.sendRedirect("student.jsp?msg=Book Not AVailbe once Added we will Notify");
        }
         response.sendRedirect("student.jsp?msg=sorry");
        }
        catch(Exception e)
        {
            out.println(e);
        }
       
%>