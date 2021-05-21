<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result/memberUpdateOutput.jsp</title>
</head>
<body>
	<h2>정보 수정이 완료되었습니다.</h2>
	<p>ID : ${member.id }</p>
	<p>PASSWD : ${member.passwd }</p>
	<p>Name : ${member.name }</p>
	<p>Mail : ${member.mail }</p>	
	<br>
	<a href="index.jsp">첫화면으로 이동</a>
</body>
</html>