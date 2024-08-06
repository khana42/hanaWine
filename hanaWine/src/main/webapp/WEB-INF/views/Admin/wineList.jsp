<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 목록</title>
<link rel="stylesheet" href="/style/style6.css?v">
</head>
<body>
    <div id="wrap">
        <a href="/winelistReg"><img src="/images/winelistReglogo.png" alt="새와인 등록하기"></a>
        <h1>와인 목록 보기</h1>

        <table id="Listtable">
            <tbody id="prnArea">
                <tr id="colArea">
                    <th>제품명(KR)</th>
                    <th>제품명(EN)</th>
                    <th>와인타입</th>
                    <th>나라</th>
                    <th>지역</th>
                    <th>포도품종</th>
                    <th>가격</th>
                    <th>도수</th>
                    <th>당도</th>
                    <th>산도</th>
                    <th>바디</th>
                    <th>상품 이미지</th>
                    <th>상품 추천음식</th>
                    <th>상품 상세정보</th>
                    <th>삭제</th>
                </tr>
                <c:forEach var="boardList" items="${mtdBoardList}">
                <tr class ="rowArea dFlex">
                    <td>${boardList.wineKrName}</td>
                    <td>${boardList.wineEgName}</td>
                    <td>${boardList.typeOfWine}</td>
                    <td>${boardList.nation}</td>
                    <td>${boardList.region}</td>
                    <td>${boardList.grape}</td>
                    <td>${boardList.price}</td>
                    <td>${boardList.alcohol}</td>
                    <td>${boardList.sweetness}</td>
                    <td>${boardList.acidity}</td>
                    <td>${boardList.body}</td>
                    <td>${boardList.goodsImg}</td>
                    <td>${boardList.recipe}</td>
                    <td>${boardList.goodsInfo}</td>
                    <td class="delIcon">
                        &times;
                        <input type ="hidden" value=${boardList.num}>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="/lib/jquery-3.7.1.min.js"></script>
    <script src="/script/script6.js"></script>
</body>
</html>
