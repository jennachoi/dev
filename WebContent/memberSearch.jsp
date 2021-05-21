<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
</head>
<body>
	<H2>회원검색 페이지</H2>
	<form action="memberSearch.do" method="post">
		ID <input type="text" name="id">
		<input type="hidden" name="job" value="search">
		<input type="submit" value="검색">
	
	</form>
</body>
</html>