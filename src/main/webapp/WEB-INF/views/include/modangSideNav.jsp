<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul class="sidebar">
		<li><a class="active" href="${pageContext.request.contextPath}/user/userPage">회원정보</a> </li>
		<li><a href="${pageContext.request.contextPath }/mypage/${requestScope.userVo.userNo}/friendlist">친구목록</a></li>
		<li><a href="userPage">그룹친구</a> </li>
		<li><a href="${pageContext.request.contextPath }/attendUsers/myPage/myBoardList">게시판매칭</a></li>
		<li><a href="${pageContext.request.contextPath }/mypage/${requestScope.userVo.userNo}/record" target="_blank">전적보기</a></li>
	</ul>
</body>
</html>