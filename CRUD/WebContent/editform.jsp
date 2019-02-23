<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.tcs.User.dao.UserDao,com.tcs.bean.Userbean"%>  
  
<%  
String id=request.getParameter("id");
int id1=Integer.parseInt(id);
System.out.println(id1);
Userbean u=UserDao.getRecordById(id1);
int id2=u.getId();
System.out.println(id2);
Integer i=(Integer)u.getId();
session.setAttribute("id",i);
%>  
<%= u.getId() %></br></br>
  
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">


<input type="hidden" name="id" value="<%= u.getId()%>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Sex:</td>
<td><select name="sex"> 
<option>Male</option>
<option>Female</option>
</select>
</td>
</tr>
<tr><td>Country:</td><td>  
<select name="country">  
<option>India</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  

  
</body>
</html>