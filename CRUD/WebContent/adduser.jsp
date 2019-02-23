<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP PROJECT</title>
</head>
<body>
<div align="center">
<h2>USER DETAILS</h2>
<form action="addnew.jsp">
<table>
<tr>
<td>UserId</td>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<td>UserName</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="text" name="password"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Sex</td>
<td> 
<input type="radio" name="sex" value="male"/>Male   
<input type="radio" name="sex" value="female"/>Female </td>
</tr>
<tr>
<td>Country:</td><td>  
<select name="country" style="width:155px">  
<option>India</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  
</td>
</tr>  
<tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>

</table>

</form>
</div>
</body>
</html>