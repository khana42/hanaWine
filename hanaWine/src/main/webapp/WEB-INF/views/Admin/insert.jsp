<%-- <%@page import="com.example.demo.DBConn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
/* String goodsName = request.getParameter("goodsName");
String goodsEngName = request.getParameter("goodsEngName");
String goodsType = request.getParameter("goodsType");
String goodsCountry = request.getParameter("goodsCountry");
String goodsVariety = request.getParameter("goodsVariety");
String goodsBrand = request.getParameter("goodsBrand");
int price = Integer.parseInt(request.getParameter("Price"));
String oriImgName = request.getParameter("oriImgName"); */
%>

<jsp:useBean id = "dataBean" class = "com.example.demo.DataBean" />
<jsp:setProperty name = "dataBean" property="*" />

<!-- 접속 DAO 적용 -->
<%
DBConn dbConn = new DBConn();
Connection conn = dbConn.mtdConn();
%>

<%
PreparedStatement pstmt = null;
String resMsg = "";

try {
		
	String sql = "insert into wineList ";
	sql += "(productNameKR, productNameEN, typeOfWine, grape, brand, price, nation, nationDetail, region, goodsImg, goodsInfo, recipe)";
	sql += "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, dataBean.getProductNameKR());
	pstmt.setString(2, dataBean.getProductNameEN());
	pstmt.setString(3, dataBean.getTypeOfWine());
	pstmt.setString(4, dataBean.getGrape());
	pstmt.setString(5, dataBean.getBrand());
	pstmt.setInt(6, dataBean.getPrice());
	pstmt.setString(7, dataBean.getNation());
	pstmt.setString(8, dataBean.getNationDetail());
	pstmt.setString(9, dataBean.getRegion());
	pstmt.setString(10, dataBean.getGoodsImg());
	pstmt.setString(11, dataBean.getGoodsInfo());
	pstmt.setString(12, dataBean.getRecipe());
	int rtnCnt = pstmt.executeUpdate();
	
	if (rtnCnt == 1) {
		resMsg = "데이터 입력 완료";
	}
	
} catch (SQLException e) {
	out.print(e.getMessage());
} finally {
	try { if (pstmt != null) pstmt.close(); } catch (Exception e) { out.print(e.getMessage()); }
}
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="insertWrap">
		<h2><%=resMsg %></h2>
		<br>
		<button id="btnBack" onclick="location.href='/Admin/winelistReg.jsp'">돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/lib/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>     --%>