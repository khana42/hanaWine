<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
	<h1>회원 목록</h1>
	
	<p>uname : ${list[0].uname }</p>
	<p>uid : ${list[0].uid }</p>
	<p>upw : ${list[0].upw }</p>
	<p>email : ${list[0].email}</p>
	<p>phone : ${list[0].phone}</p>
	<p>gender : ${list[0].gender }</p>
		
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    