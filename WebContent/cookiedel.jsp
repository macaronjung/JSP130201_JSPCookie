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
				cookies[i].setMaxAge(0); //��ȿ�Ⱓ ����
				response.addCookie(cookies[i]); //�Ӽ� ������ �ٷ� ������ �ȵ��� �ٷ� ž��
			}/*if end*/
		}/*for end*/
	%>
	
	<a href="cookietest.jsp">cookie test</a>
</body>
</html>