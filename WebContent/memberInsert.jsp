<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInsert.jsp</title>
</head>
<body>
	<h2>회원가입 페이지</h2>
	<table>
	<form action="memberInsert.do" method="post">
		<tr>
		<td>아이디</td><td><input type="text" name="id"></td></tr><tr>
		<td>비밀번호</td><td><input type="password" name="passwd"></td></tr><tr>
		<td>이름</td><td><input type="text" name="name"></td></tr><tr>
		<td>메일</td><td><input type="text" name="mail"></td></tr>
		<tr><td colspan="2" align="right"><input type="submit" value="등록"></td></tr>
	</form>
	</table>
</body>
</html>