<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length; i++) {
			String str = cookies[i].getName();
			
			if(str.equals("cookieN")) {
				out.print("name : " + cookies[i].getName() + "<br>");
				cookies[i].setMaxAge(0); //유효기간 변경
				response.addCookie(cookies[i]); //속성 줬으면 바로 끝내면 안되지 바로 탑재
			}/*if end*/
		}/*for end*/
	%>
	
	<a href="cookietest.jsp">cookie test</a>
</body>
</html>