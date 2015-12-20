<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
	table{
		width:500px;
	}
	#infocontainer{
		margin-top: 28px;
		margin:0 auto;
		text-align: center;
		
	}
	#infoContainer_context{
		width:40%;
		margin: 0 30%;
		
	}
	#line{
		width:600px;
	}
		
	#nav{
		width:10%;
		float:left;
		margin-left: 20px;
	}
</style>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<div id="infoContainer">
	<div id="nav">
	<ul class="nav nav-pills nav-stacked">
  		<li role="presentation" ><a href="<c:url value='/customerInfo.do'/>">회원정보</a></li>
		<li role="presentation" ><a href="<c:url value='/orderInfo.do'/>">주문결제</a></li>
		<li role="presentation" ><a href="<c:url value='/deliveryInfo.do'/>">배송</a></li>
		<li role="presentation" ><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" class="active"><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" ><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>공지사항</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		<strong><p>여성제품 구매 고객을 위한 특별한 혜택! </p></strong><br/>
		<p> 
		나이키스토어에서 여성 제품 구매 시, 주문/교환/반품을 위한 배송비가 모두 무료입니다.   혹시 사이즈가 맞지 않을까봐 제품을 받았을 때 마음에 들지 않을까봐 구매를 망설이시나요? 
이제 나이키 스토어에서 여성제품을 부담 없이 트라이해 보세요! 
나이키 스토어에서 여성 제품을 구매하시면 제품 배송을 위한 택배비 뿐만 아니라  
사이즈 및 제품 불만으로 인한 교환/반품 택배비가 모두 무료입니다. 

*이벤트 제품: 나이키스토어 내 모든 여성 제품 (상품 상세 페이지 내 표기) 
*이벤트 기간: 2015년 2월 1일~  
*접수방법: 무료 교환/ 반품접수는 고객센터(1577-1360)를 통해서만 진행됩니다. 

   ※주의사항 
 사이트내 마이페이지에서 교환/반품 접수시 무료 배송 혜택을 받을 수 없습니다.
제품 훼손시 무료 교환/반품 배송비 혜택을 받을 수 없습니다. 
		</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>나이키닷컴 이용약관 변경 안내 </p></strong><br/>
			<p> 
			안녕하세요. 나이키닷컴입니다.

다음과 같이 나이키닷컴 회원의 이용약관이 변경됨을 안내 드립니다.

1. 공고일자
- 2015.08.27(목)

2. 시행일자
- 2015.09.03(목)

3. 주요 변경 내용

■ 이용약관 변경 안내

2015년 9월 3일부터 아래 이용약관의 조항이 삭제됩니다. >> 제19조   제19조(M.O.S)
M.O.S는 나이키의 프리미엄 상품을 제한된 회원에게만 공개하여 구매할 수 있도록 한Members Only Store를 말합니다.
1. 제한된 회원이란 특정 프로모션 기간 동안 발급 된M.O.S입장코드를 부여 받은 회원을 말합니다.
2. 특정 프로모션 기간 동안 발급된M.O.S 입장코드를 부여 받은 회원은M.O.S 이용이 가능하며, M.O.S 입장화면에 해당 입장코드를 입력하여 인증 후 이용할 수 있습니다. 


부칙(2015. 09. 03) 이 약관은2015년 09월 03일부터 시행하며, 종전의 약관은 이 약관으로 대체합니다. 
			</p> 
		</td>		
	</tr>
	<tr>
		<td>
			<strong><p>실명 인증 확인 오류 시 어떻게 하나요?</p></strong><br/>
			<p> 
			 고객님의 실명확인에 사용되는 정보는 은행연합회로 집중되는 금융권 정보와 서울신용평가 SIREN24의 기업회원을 통해 집중되는 정보가 사용됩니다. 이러한 신용정보는 해당 기관(업체)들이 고객과의 상거래(신용카드 발급 등) 발생시 취합 되는 정보들인데, 정보를 입력하는 과정에서 주민번호 및 성명정보를 잘못 기입하는 경우가 있습니다.
			 (예) 라가명 → 나가명, 나불량 → 나불양, 홍길동 → 홍길도
			 본인이 실명임에도 불구하고 일치하지 않는다고 나타나는 경우는 대부분 이런 이유이므로 실명확인고객센터를 통해서 개인 신용정보DB를 수정하실 수 있습니다.

			</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>광복절 임시공휴일 지정에 따른 배송 일정 안내(2015년 8월 14일)</p></strong><br/>
			<p> 
			나이키닷컴을 이용해주시는 고객님께 감사드립니다.

광복70주년 기념 및 내수경기 활성화를 위한 정부의 [임시공휴일] 정책에 따라 8월 14일 택배사 휴무로 인한 배송 스케줄을 안내 드리오니 이용에 착오가 없으시길 바랍니다.

- 8월 12일 오후 19시 이전 주문 건 : 정상 배송처리
- 8월 12일 오후 19시 이후 주문 건 : 8월 17일(월)부터 순차 배송 
			</p> 
		
		</td>
	</tr>

</table>
</div>
</div>

<footer>
	<div id="main_footer" style="padding: 28px; color: #ddd; background: #555;">
			회사소개 | 매장안내 | 회원가입 | 주문배송조회 | 교환 및 반품 | 영수증 신청 | 나이스 고객센터 0000-0000
			service@nice.co.kr <br> 대한민국 이용약관 개인정보취급(처리)방침<br> <br>
			(주)나이스코리아 대표 : 이동윤 <br> 서울시 종로구 하늘빌딩 3/4/5 HBI기술연구소<br>
			통신판매업신고번호 : 2015-그런거없어-3333 / 사업자등록번호 000-00-00000 개인정보관리책임자 : 구교흠
			정보보호최고책임자 : 박용화 대표번호 0000-0000
		</div>
	</footer>
</body>
</html>