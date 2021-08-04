<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="#">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!--favicon 404 숏컷제거,Bootstrap5 적용 -->
<meta charset="UTF-8">
<style>
html, body {
	padding: 20px;
	width: 80vw;
	margin: auto;
}
</style>
<title>로그인</title>
</head>
<body>
	<%
	String id = "";
	if (session.getAttribute("userid") != null) {
		id = (String) session.getAttribute("userid");
	}

	if (id.equals("admin")) {
	%>
	<p>로그인 성공</p>
	<p><%=id%>님 환영합니다.
	</p>
	<a href="logout.jsp">로그아웃</a>
	<a href="list.jsp">회원 목록 보기</a> 
	<%} else if(!id.equals("")) { %>
	<p>로그인 성공</p>
	<p><%=id%>님 환영합니다.
	</p>
	<a href="logout.jsp">로그아웃</a>
	<a href="list.jsp">회원 탈퇴</a>
	<a href="list.jsp">회원 수정</a>

	
	<%
	} else {
	%>

	<form action="login_ok.jsp" name="login" method="post">
		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="floatingInput"
				placeholder="아이디를 입력하세요" name="id"> <label
				for="floatingInput">아이디</label>
		</div>
		<div class="form-floating">
			<input type="password" class="form-control" id="floatingPassword"
				placeholder="Password" name="passwd"> <label
				for="floatingPassword">비밀번호</label>

		</div>
		<button type="submit" class="btn btn-primary form-control btn-lg">로그인</button>
	</form>
	<%
	}
	%>
</body>
</html>