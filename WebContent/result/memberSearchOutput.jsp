<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result/memberSearchOutput.jsp</title>
</head>
<body>
	<h2>검색결과</h2>
	<p>ID : ${member.id }</p>
	<p>PASSWD : ${member.passwd }</p>
	<p>Name : ${member.name }</p>
	<p>Mail : ${member.mail }</p>	
	
	<a href="index.jsp">첫화면으로 이동</a>
</body>
</html>