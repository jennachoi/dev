<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result/memberInsertOutput.jsp</title>
</head>
<body>
	<h2>등록이 정상적으로 처리되었습니다. </h2>
	<p>${member.name }님 환영합니다. </p>
	<p>ID : ${member.id }</p>
	<p>Mail : ${member.mail }</p>
	
	<a href="index.jsp">첫화면으로 이동</a>
</body>
</html>