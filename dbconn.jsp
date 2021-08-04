<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Connection conn = null;

	String url = "jdbc:mysql://testest2.cf/iot";
	String user = "tester";
	String password = "1";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);

%>
