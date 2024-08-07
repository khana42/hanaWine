<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>pay</title>
   <link rel="stylesheet" href="/style/style5.css?v">
</head>
<body>
<header id="header">
		<%@ include file="header.jsp" %>
	</header>
     <div id="payform-Wrap">

                <h1>SHOPPING LIST</h1>

            <form action="/payProc" method="post" id="pay">



                <div class="cart-container">
                <div class="cart-header">

                    <div class="header-item">이미지</div>
                    <div class="header-item">상품정보</div>
                    <div class="header-item">판매가</div>
                    <div class="header-item">수량</div>
                    <div class="header-item">회원가입 적립금</div>
                    <div class="header-item">배송구분</div>
                    <div class="header-item">배송비</div>
                    <div class="header-item">합계</div>
                    <div class="header-item">선택</div>
                </div>

                <div class="cart-item">
                    <div class="item-image">
                    
                        <input type="checkbox" form="pay">
                        
                        <img src="/img/samplewine.jpg" alt="상품 이미지">
                    </div>
                    <div class="item-info">
                        <input type="text" name="productinfo" form="pay" value="상품명" readonly maxlength=15 size=40> 
                       <!-- <p>ㅇㅇㅇ</p> --> 
                    </div>
                    <div class="item-price">
                    <!--  <span>ㅇㅇㅇ</span>-->
                      <input type="text" name="price" form="pay" value="56000" readonly maxlength=10 size=3>
                    </div> 
                    
                    <div class="item-quantity">
                        <input type="number" name="quantity" value="1" form="pay">
                        <button type="button" id="changeBtn">변경</button>
                    </div>
             
                    <div class="item-delivery">
                    <input type="text" name="deliver" form="orderFrm" value="기본배송" readonly maxlength=4 size=4> 110원</div>
                    <div class="item-delivery-fee">3,000원
                  <input type="text" name="delPrice" form="orderFrm" value="무료" readonly maxlength=2 size=1></div>
                    <div class="item-total">
<input type="text" name="total" form="orderFrm" value="56000" readonly maxlength=8 size=3></div>
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



        <!--  주문 정보 시작  -->

        <h1>Order information</h1>

            <div class="container">
                <h2>주문자정보</h2>
         
                    <div class="form-group">
                        <label>받으시는 분 <span class="required">*</span></label>
                        <div class="input-group">
                            <input type="text" name="recipient" id="nari" value="박빛나리">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>주소 <span class="required">*</span></label>
                        <div class="address-group">
                            <input type="text" name="postalCode" class="short-input" placeholder="우편번호" value="08306">
                            <input type="text" name="address1" placeholder="서울 구로구 가마산로22길 19 하우스D1차"
                                value="서울 구로구 가마산로22길 19 하우스D1차">
                            <input type="text" name="address2" placeholder="403호" value="403호">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>휴대전화 <span class="required">*</span></label>
                        <div class="input-group" id="phoneInput">
                            <select name="phone1">
                                <option value="010">010</option>
                            </select>
                            <input type="text" name="phone2" value="2815">
                            <input type="text" name="phone3" value="2825">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>이메일 <span class="required">*</span></label>
                        <div class="input-group" id="emailInput">
                            <input type="text" name="emailUser" class="short-input" value="o881vv">
                            <span>@</span>
                            <input type="text" name="emailDomain" class="short-input" value="naver.com">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>배송메시지</label>
                        <div class="input-group">
                            <textarea name="message"></textarea>
                        </div>
                    </div>

    
    
    <!--  주문 정보 시작  -->
    
     
    <div id="actions">

         <button type="submit" name="gopay" id="gopay" onclick="location.href='/payProcess'">결제하기</button>
         <button type="button" name="keepgoing" id="keepgoing" onclick="location.href='/'" >쇼핑계속하기</button>
      </div>
</div>
<!-- div.container -->
    </form>
    
    
    </div>
    <!-- div#order-formWrap -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="/script/script5.js"></script>
</body>
</html>    