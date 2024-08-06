<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>
<link rel="stylesheet" href="/style/style5.css?v">
</head>
<body>
<header id="header">
		<%@ include file="header.jsp" %>
	</header>
       <div id="Cartwrap">

        <h1>SHOPPING CART</h1>



        <form action="/pay" method="post" id="orderFrm">

            <div class="cart-container">
                <div class="cart-header">

                    <div class="header-item">이미지</div>
                    <div class="header-item">상품정보</div>
                    <div class="header-item">판매가</div>
                    <div class="header-item">수량</div>
                   
                    <div class="header-item">배송구분</div>
                    <div class="header-item">배송비</div>
                    <div class="header-item">합계</div>
                    <div class="header-item">선택</div>
                </div>

                <div class="cart-item">
                    <div class="item-image">
                     
                          <input type="checkbox"  form="orderFrm">
                          
                          <img src="/img/samplewine.jpg" alt="상품 이미지" width="100">
                    </div>
                    <div class="item-info">
                    <input type="text" name="productinfo" form="orderFrm" value="상품명" readonly maxlength=15 size=40> 
                        <!-- <p>ㅇㅇㅇ</p> -->
                        
                    </div>
                    <div class="item-price">
                    <!--<span>ㅇㅇㅇ</span> -->
                    <input type="text" name="price" form="orderFrm" value="56000" readonly maxlength=10 size=3>
                    </div>
                    <div class="item-quantity">           
                        <input type="number" name="quantity" form="orderFrm" value="1">
                        <button type="button" id="changeBtn">변경</button>
                    </div>
               
                   
                    <div class="item-delivery">
                    <input type="text" name="deliver" form="orderFrm" value="기본배송" readonly maxlength=4 size=4></div>
                    <div class="item-delivery-fee">
                    <input type="text" name="delPrice" form="orderFrm" value="무료" readonly maxlength=2 size=1></div>
                    <div class="item-total">
                    <input type="text" name="total" form="orderFrm" value="56000" readonly maxlength=8 size=3> </div>
                    <div class="item-select">

                        <button type="reset">삭제</button>
                    </div>
                </div>

                <div class="cart-footer">
                    <p>상품구매금액 21,000원 + 배송비 3,000원 = 합계: 24,000원</p>
                </div>
            </div>


        <div id="summary">
            <p>총 상품금액: 56,000원</p>
            <p>총 배송비: 0원</p>
            <p>= 56,000원</p>
        </div>


        </form>


        <div id="actions">
            <button type="submit" id="order" form="orderFrm">주문하기</button>
            <button type="submit" name="Allorder" id="Allorder">전체상품주문</button>
            <button type="submit" name="keepgoing" id="keepgoing" onclick="location.href='/'" >쇼핑계속하기</button>
        </div>

        <div class="info-container">
            <p>· 이용안내</p>
            <div class="guide-section">
                <p>장바구니 이용안내</p>
                <ol>
                    <li>해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니로 따로 결제해 주시기 바랍니다.</li>
                    <li>해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
                    <li>선택하신 상품의 수량을 변경하시려면 수량 변경 후 '변경' 버튼을 누르시면 됩니다.</li>
                    <li>'쇼핑 계속하기'를 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
                    <li>장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
                    <li>파일첨부는 동일상품을 장바구니에 추가할 경우 마지막에 업로드한 파일로 교체됩니다.</li>
                </ol>
            </div>

            <div class="guide-section">
                <p>무이자할부 이용안내</p>
                <ol>
                    <li>상품을 무이자할부로 받으시려면 무이자할부 상품만 선택하여 '주문하기' 버튼을 클릭하시면 됩니다.</li>
                    <li>'전자 상품 주문' 버튼을 누르시면 장바구니의 상품없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
                    <li>단, 견적 상품을 주문하실 경우 상품들 무이자할부 혜택을 받으실 수 없습니다.</li>
                    <li>무이자할부 상품은 장바구니에서 무이자할부 상품 영역에 표시되며, 무이자할부 상품 기준으로 배송비가 표시됩니다.</li>
                    <li>실제 배송비는 함께 주문하는 상품에 따라 적용되니 주문서 하단의 배송비 경보를 참고하시기 바랍니다.</li>
                </ol>
            </div>
        </div>

    </div>
    <!-- div#Cartwrap -->





   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="/script/script5.js"></script>
</body>
</html>