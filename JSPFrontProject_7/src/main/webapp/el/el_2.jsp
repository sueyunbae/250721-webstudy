<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
		EL => 내장 객체
		-------------
		param => request.getParameter()
		paramValues => request.getParameterValues()
		requestScope => request.getAttribute()
		sessionScope => session.getAttribute()
		applicationScope => application.getAttribute()
		${일반변수(X)}
		
		EL => VO 출력
--%>
<%
	String name="홍길동";
	request.setAttribute("name", "홍길동");
	// 한개의 파일 안에서만 작업
	session.setAttribute("name", "심청이");
	// id비교
	application.setAttribute("name", "박문수");
	// 전체에서 공유
	
	/*
			${key이름}
			=> Scope가 생략이 가능
				request = session = application
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  이름:${requestScope.name }<br>
  이름:${sessionScope.name }<br>
  이름:${applicationScope.name }<br>
</body>
</html>