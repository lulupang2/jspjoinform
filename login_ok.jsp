<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
b {
	font-size :120px;
	color :#FA6F6F;
}

</style>
<link rel="shortcut icon" href="#">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--favicon 404 숏컷제거,Bootstrap5 적용 -->
<meta charset="UTF-8">
<title>Login Process</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	%>

	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "select id,passwd from regist where id =?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");

			if (id.equals(rId) && passwd.equals(rPasswd)) {
		session.setAttribute("userid", id);
		response.sendRedirect("login.jsp");
			} else {
		out.println("<b>비밀번호 X</b>");
			}
		} else {
			out.println("<b>아이디 X</b>");
		}

	} catch (SQLException e) {
		e.getMessage();
	} finally {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();

	}
	%>
</body>
</html>