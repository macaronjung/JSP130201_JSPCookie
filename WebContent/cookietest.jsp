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
		/* �տ� ��Ű����Ʈ���� ��Ű ���������Ƿ� cookieN �� ����� ���� */
		if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
				out.print(cookies[i].getName() + "<br>");
				out.print(cookies[i].getValue() + "<br>");
		}/*for end*/
	}/*if null end*/
	%>
	
</body>
</html>