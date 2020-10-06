<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");//Http 1.1
response.setHeader("Pragma","no-cache");   //Http 1.0
response.setHeader("Expires", "0");  //Proxies
if(session.getAttribute("username")==null){
	response.sendRedirect("index.jsp");
}
%>
Welcome 
<% 
out.println(session.getAttribute("username"));
%>
This is your dashboard.
Choose a planet
<a href="planetchooser.jsp">Planets</a>
Choose a robot
</body>
</html>