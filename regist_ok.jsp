<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="#">

<!--favicon 404 숏컷제거,Bootstrap5 적용 -->
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%
	out.print("<script>alert('회원가입을 축하합니다.')</script>");

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String ssn = request.getParameter("ssn");
	String email = request.getParameter("email") + "@" + request.getParameter("email2");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String hobbies = new String();
	if (hobby != null) {
		for (int i = 0; i < hobby.length; i++) {
			hobbies += hobby[i] + "|";
		}
	}
	String zipcode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String profile = request.getParameter("profile");
	%>

	<%
	PreparedStatement pstmt = null;

	String sql = "insert into regist (id,passwd,ssn,email,gender,hobby,zipcode,addr1,addr2,profile) values(?,?,?,?,?,?,?,?,?,?)";

	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, passwd);
	pstmt.setString(3, ssn);
	pstmt.setString(4, email);
	pstmt.setString(5, gender);
	pstmt.setString(6, hobbies);
	pstmt.setString(7, zipcode);
	pstmt.setString(8, addr1);
	pstmt.setString(9, addr2);
	pstmt.setString(10, profile);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	%>


	<%
	response.sendRedirect("login.jsp");
	%>
</body>
</html>
