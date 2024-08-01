<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>와인 검색 결과</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .search-container {
            margin-bottom: 20px;
        }
        .search-container input[type="text"] {
            padding: 10px;
            width: 300px;
        }
        .search-container button {
            padding: 10px 15px;
        }
    </style>
</head>
<body>

<h1>와인 검색</h1>

<div class="search-container">
    <form action="${pageContext.request.contextPath}/search" method="get">
        <input type="text" name="keyword" placeholder="검색어를 입력하세요" required>
        <button type="submit">검색</button>
    </form>
</div>

<h2>검색 결과</h2>
<table>
    <thead>
        <tr>
            <th>와인 한글명</th>
            <th>와인 영문명</th>
            <th>타입</th>
            <th>국가</th>
            <th>지역</th>
            <th>포도 품종</th>
            <th>가격</th>
            <th>알콜</th>
            <th>당도</th>
            <th>산도</th>
            <th>바디</th>
            <th>이미지</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="wine" items="${wines}">
            <tr>
                <td>${wine.wineKrName}</td>
                <td>${wine.wineEgName}</td>
                <td>${wine.typeOfWine}</td>
                <td>${wine.nation}</td>
                <td>${wine.region}</td>
                <td>${wine.grape}</td>
                <td>${wine.price}</td>
                <td>${wine.alcohol}</td>
                <td>${wine.sweetness}</td>
                <td>${wine.acidity}</td>
                <td>${wine.body}</td>
                <td>
                    <img src="${wine.goodsImg}" alt="상품 이미지" style="width: 50px; height: 50px;">
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty wines}">
            <tr>
                <td colspan="12">검색 결과가 없습니다.</td>
            </tr>
        </c:if>
    </tbody>
</table>

</body>
</html>