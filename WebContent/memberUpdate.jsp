<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
</head>
<body>
	<h2>회원정보 수정</h2>
	<h3>수정할 아이디를 입력하세요.</h3>
	<form action="memberSearch.do" method="post">
		ID <input type="text" name="id"> 
		<input type="hidden" name="job" value="update">
		<input type="submit" value="검색">
	</form>
	
	<%
		MemberVO member = (MemberVO) request.getAttribute("member"); // 오브젝트타입을 MemberVO 타입으로 캐스팅
		if (member != null) {
	%>
	
		<br>
		<h3>수정정보 입력</h3>
			<table>
				<form action="memberUpdate.do" method="post">
					<tr>
					<td>아이디</td><td><input type="text" name="id" readonly value="<%=member.getId() %>"></tr><tr>
					<td>비밀번호</td><td><input type="password" name="passwd" value="<%=member.getPasswd() %>"></td></tr><tr>
					<td>이름</td><td><input type="text" name="name" value="<%=member.getName() %>"></td></tr><tr>
					<td>메일</td><td><input type="text" name="mail" value="<%=member.getMail() %>"></td></tr>
					<tr><td colspan="2" align="right"><input type="submit" value="수정"></td></tr>
				</form>
			</table>
	<%
		} else {
	%>
		<h3>조회된 결과가 없습니다.</h3>
	<%
	}
	%>
	</body>
</html>