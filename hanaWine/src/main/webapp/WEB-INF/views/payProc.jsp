<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <title>Document</title>
   <link rel="stylesheet" href="/style/style5.css?v">
</head>
<body>
   
    <div id="payProcwrap">
        <h1>ORDER COMPLETED</h1>
        <hr>

        <form action="/payProc" method="post" id="payProc">
                <div class="cart-container">
                  <div id="orderNextproc">

                    <p>고객님의 주문이 완료 되었습니다.</p>
                    <br>
                    <span>주문내역 및 배송에 관한 안내는 주문조회 를 통하여 확인 가능합니다.</span>
                    <br><br>
                    <span>주문번호 : 20240802-0000111</span>
                    <br>
                    <span>주문일자 : 2024-08-02 23:59:57</span>
                 <br>
                 
                </div>
                
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


       <!--   <div id="summary">
            <p>총 상품금액: 56,000원</p>
            <p>총 배송비: 0원</p>
            <p>= 56,000원</p>
        </div>
-->
 </form>





           
                <div class="cart-container">

                <div class="prodbox">
                    <ul class="ul uldFlex">
                        <li>혜택정보 </li>
                        <li id="point">회원가입 적립금 : 2000원 </li>
                        <li>쿠폰 : 0 개</li>
                    </ul>
                </div>



 



        </form>
        <!-- div#orderNextproc -->

        <div id="deposit">
            <p>최종결제금액: 24,000원</p>
            <p>결제수단 : 무통장입금</p>
<p>입금자 : 박빛나리 , 계좌번호 : 카카오뱅크 3333000011111</p>        
        </div>

        <div id="actions">
            <button type="button" name="keepgoing" id="keepgoing" onclick="location.href='/'">쇼핑계속하기</button>
        </div>
    </div>
    <!-- div#Cartwrap -->

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <script src="/script/script5.js"></script>
</body>
</html>    