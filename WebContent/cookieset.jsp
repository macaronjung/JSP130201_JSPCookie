<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������ ����(WAS)���� �ǽ�!!! -->
	<%
		//�տ����°� ��Ű���� �ڿ��� ��Ű���
		Cookie cookie = new Cookie("cookieN","cookieV");
		cookie.setMaxAge(60*60); //��Ű �����ð� : 1Hour
		response.addCookie(cookie); //�������� ��ü�� ��Ű ��ü�� ž����
	%>
	<!-- HTML �±� �̿� ���� ���� ��Ű�� ��Ű��.jsp�� �Ѿ�� �� -->
	<!-- ��Ű�ٵ� WAS���� �۵� -->
	<a href="cookieget.jsp">cookie get</a>
</body>
</html>