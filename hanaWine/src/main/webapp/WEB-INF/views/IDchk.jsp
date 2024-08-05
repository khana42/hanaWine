<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
<link rel="stylesheet" href="/style/style5.css?v">
</head>
<body>
	<div id="IDCHKwrap">

		<h3>아이디 중복 체크</h3>
        <hr>
        <label>
            <span id="idchkspan">입력</span>
            <input type="text" id="idchkinput">
        </label>

        <div id="IDCHKbtn">

            <button type="button" id="IDCHKchk">확인</button>
            <button type="button" id="IDCHKclose" onclick="window.close()">닫기</button>
        </div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    