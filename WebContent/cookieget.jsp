<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%	/* ��Ű ���� ������ �ϼ� �����Ƿ� �迭�� ���� */
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length; i++) {
			String str = cookies[i].getName();
			
			if(str.equals("cookieN")) {
				out.print("cookies[" + i + "] name : " + cookies[i].getName() + "<br>");
				out.print("cookies[" + i + "] value : " + cookies[i].getValue() + "<br>");
				out.print("----------<br>");
			}/*if end*/
		}/*for end*/
	%>
	
	<a href="cookiedel.jsp">cookie delete</a>
</body>
</html>