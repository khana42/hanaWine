<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
<style>
        div#IDCHKwrap {
            width: 280px;

            border: 2px solid skyblue;
            border-radius: 4px;
            margin: 5px;
        }

        h3 {
            text-align: center;
            font-weight: bold;
        }

        hr {
            width: 200px;
        }

        input {
            width: 150px;
            margin-left: 0px;
            border: 2px solid #000;
            border-radius: 2px;
        }

        span {
            margin-left: 20px;
        }


        div#btn {
            text-align: center;
            padding: 10px;
        }

        button {
            font-size: 17px;
            padding: 0 25px 0px 25px;
            margin: 20px 10px 0 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
	<div id="IDCHKwrap">
	<h1>${"IDchk.jsp파일"}</h1>
		<h3>아이디 중복 체크</h3>
        <hr>
        <label>
            <span>입력</span>
            <input type="text" id="type">
        </label>

        <div id="btn">

            <button type="button">확인</button>
            <button type="button" onclick="window.close()">닫기</button>
        </div>
	</div>
	<!-- div#wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    