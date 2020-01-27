<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		String id, pw;
	%>
	
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("java") && pw.equals("1234")) {
			Cookie cookie = new Cookie("id", id); //id값에다가 사용자가 입력한 id(밸류값) 부여
			cookie.setMaxAge(60); //유효기간 60초
			response.addCookie(cookie); //탑재 필수!!! 조심!!!
			response.sendRedirect("welcome.jsp");
		}/*if end*/ else {
			response.sendRedirect("login.html");
		}/*else end*/
	%>
</body>
</html>