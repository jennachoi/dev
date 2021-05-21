<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete.jsp</title>
</head>
<body>
	<H2>회원삭제 페이지</H2>
	<h3>삭제할 아이디를 입력하세요.</h3>
	<form action="memberSearch.do" method="post">
		ID <input type="text" name="id">
		<input type="hidden" name="job" value="delete">
		<input type="submit" value="검색">
	</form>
	
	<%
		MemberVO member = (MemberVO) request.getAttribute("member"); // 오브젝트타입을 MemberVO 타입으로 캐스팅
		if (member != null) {
	%>
		
		<br>
		<h3>검색 결과</h3>
			<table>
				<form action="memberDelete.do" method="post">
					<tr>
					<td>아이디</td><td><input type="text" name="id" readonly value="<%=member.getId() %>"></tr><tr>
					<td>비밀번호</td><td><input type="password" name="passwd" readonly value="<%=member.getPasswd() %>"></td></tr><tr>
					<td>이름</td><td><input type="text" name="name" readonly value="<%=member.getName() %>"></td></tr><tr>
					<td>메일</td><td><input type="text" name="mail" readonly value="<%=member.getMail() %>"></td></tr>
					<tr><td colspan="2" align="right"><input type="submit" value="삭제"></td></tr>
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