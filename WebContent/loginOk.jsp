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
			Cookie cookie = new Cookie("id", id); //id�����ٰ� ����ڰ� �Է��� id(�����) �ο�
			cookie.setMaxAge(60); //��ȿ�Ⱓ 60��
			response.addCookie(cookie); //ž�� �ʼ�!!! ����!!!
			response.sendRedirect("welcome.jsp");
		}/*if end*/ else {
			response.sendRedirect("login.html");
		}/*else end*/
	%>
</body>
</html>