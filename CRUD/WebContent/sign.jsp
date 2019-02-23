<%@ page language="java" import="java.sql.*;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system" ); 
PreparedStatement ps=con.prepareStatement("select * from  logdataa");  
 
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
   String uname=rs.getString(1);
   String pword=rs.getString(1);


if(un.equals(uname)&&pw.equals(pword))
{
	response.sendRedirect("Index.jsp");
}

else

{
	out.println("login fail");
}
}
}
catch(Exception e){
	System.out.println(e);
	}  




%>




</body>
</html>