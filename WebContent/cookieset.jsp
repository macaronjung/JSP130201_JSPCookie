<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 실행은 서버(WAS)에서 실시!!! -->
	<%
		//앞에오는게 쿠키네임 뒤에가 쿠키밸류
		Cookie cookie = new Cookie("cookieN","cookieV");
		cookie.setMaxAge(60*60); //쿠키 유지시간 : 1Hour
		response.addCookie(cookie); //리스폰스 객체에 쿠키 객체를 탑재함
	%>
	<!-- HTML 태그 이용 내가 만든 쿠키가 쿠키겟.jsp로 넘어가는 것 -->
	<!-- 쿠키겟도 WAS에서 작동 -->
	<a href="cookieget.jsp">cookie get</a>
</body>
</html>