<%@page import="com.dev.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result/memberListOutput.jsp</title>
</head>
<body>
	<h2>전체 멤버 리스트</h2>
	<c:choose>
		<c:when test="${empty list }">
			<p>조회 결과가 없습니다.</p>
		</c:when>
		<c:otherwise>
			<table border="1">
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일</th>
				</tr>
				<c:forEach items="${list }" var="member">
					<tr>
					<td>${member.id }</td><td>${member.passwd }</td><td>${member.name }</td><td>${member.mail }</td>
					</tr>
				</c:forEach>
			</table>

		</c:otherwise>
	</c:choose>

	<%-- 자바로 작성
	List<MemberVO> list = (List<MemberVO>) request.getAttribute("list");
	if (list.size() == 0) {
		out.print("<p>조회 결과가 없습니다.</p>");
	} else {
		for (MemberVO member : list) {
				out.print("<li></li>");
		}
	}
	--%>
	<br>
	<a href="index.jsp">첫화면으로 이동</a>
</body>
</html>