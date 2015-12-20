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
		<li role="presentation" class="active"><a href="<c:url value='/orderInfo.do'/>">주문결제</a></li>
		<li role="presentation" ><a href="<c:url value='/deliveryInfo.do'/>">배송</a></li>
		<li role="presentation" ><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" ><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" ><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>주문 결제</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		<strong><p>무통장 입금 결제가 일시적으로 중단됩니다.</p></strong><br/>
		<p> 
		아래 시간 동안 무통장 입금 결제가 일시적으로 중단됩니다. 
		</p>
		<strong><p> 
		서비스 일시 중단 시간 : 2015년 1월 10일 12시 00분 ~ 2015년 1월 12일 서비스 이용에 불편을 드려서 죄송합니다. . (중복아이디 사용불가)
		</p></strong>
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>인터넷 카드 결제시 공인인증서 의무사용 안내</p></strong><br/>
			<p> 
			2005년 11월 1일부터 회원님의 개인정보 보호를 위해 안전결제(ISP), 안심클릭 결제서비스로 30만원 이상을 결제하실 경우 공인인증서 사용이 의무화 됩니다.(전자금융거래 기본법) 안전한 온라인 거래를 위하여 공인인증서를 꼭 사용하시기 바랍니다.
아래는 공인인증 의무사용 관련 변동사항이오니 이용에 참고하시기 바랍니다.

2004년 2월 10일부터 10만원이상 결제시 공인인증 의무화 
2004년 4월 01일부터 30만원이상 결제시 공인인증 의무화로 제한금액 변경
2004년 9월 11일부터 공인인증서 의무화 적용이 공식적으로 2년간 유예됨(단,비씨,국민카드는 30만원이상 결제시 공인인증 의무)
2005년 7월 20일부터 외환카드 30만원이상 결제시 공인인증 의무화로 변경 
2005년 11월 1일부터 LG,롯데,신한,삼성,현대카드 등 30만원이상 결제시 공인인증 의무화로 변경

 따라서 나이키닷컴에서 신용카드를 이용하여 온라인 결제시 공인인증서 발급을 통한 본인확인은 물론 각 신용카드사에서 사용하는 별도의 인증절차(안전결제ISP, 안심클릭)를 통하여 안전한 쇼핑을 하실수 있습니다.
보다 상세한 내용은 해당 카드사로 문의해 주시기 바랍니다.

※ 공인인증서란, 인터넷뱅킹 또는 증권거래시 사용하는 사이버 거래 인감증명서를 말합니다. 전자거래(인터넷뱅킹, 증권거래)시 전자서명 및 공인인증서를 사용하면 신원확인, 문서의 위·변조 방지 등의 효과를 얻을 수 있습니다.   
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
			<strong><p>비회원도 주문할 수 있나요? </p></strong><br/>
			<p> 
			회원 뿐만 아니라 비회원도 주문하실 수 있습니다.
단, 비회원으로 주문하실 경우에는 마일 적립 혜택 및 프로모션 코드를 사용하실 수 없습니다.

회원 가입을 하시면 주문내역 등 보다 편리한 서비스를 이용하실 수 있습니다.
비회원으로 상품을 구매하신후 주문조회, 배송조회, 세금계산서 신청 등도 가능합니다.
홈페이지 상단 [my쇼핑정보] 메뉴를 클릭 후 오픈 되는 로그인 창에서 비회원을 클릭하시고 주문번호/이메일 주소를 입력해 주시면 해당 내용을 확인하실 수 있습니다. 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>최대 구매수량 정책은 무엇인가요?</p></strong><br/>
			<p> 
			나이키닷컴에서는 특정한 제품에 한해 1인 1회 구매수량을 제한하고 있습니다. 
			</p> 
		
		
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>주문한 내용을 확인하고 싶어요. </p></strong><br/>
			<p> 
			주문이 완료되면 주문하실 때 입력한 E-Mail 주소로 주문내용을 알려드립니다.
			홈페이지 상단의 [my쇼핑정보]에서 확인하실 수 있습니다.
 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>주문 방법을 알려주세요. </p></strong><br/>
			<p> 
				원하는 상품을 주문하려면,
Step 1. 상품페이지 : 고객님이 원하시는 상품을 장바구니에 담을 수 있는 단계입니다. 원하시는 상품을 찾으셨다면 장바구니에 넣어 주세요.
Step 2. 장바구니 : 장바구니에 담은 상품들을 확인하고, 계속 쇼핑을 하실 수 있습니다. 주문하기를 클릭하면 장바구니에 담긴 상품을 주문하실 수 있습니다.
Step 3. 주문서 작성 : 주문 진행에 필요한 정보를 입력하는 단계입니다. 주문 고객 정보와 배송지 정보를 입력, 확인하실 수 있고, 결제수단을 선택하는 단계입니다.
step 4. 결제확인 : 결제 수단에 필요한 정보를 입력하고 결제하기를 클릭하세요.
Step 5. 주문완료 : 결제된 내용을 확인하실 수 있습니다. 주문의 상세내역과 배송진행 상황은 e-mail 로 알려드립니다.
Step 6. 주문/배송 확인 : 주문이 완료된 후 배송 진행 상황은 [my쇼핑정보]의 주문 내역 조회에서 확인하실 수 있습니다. 주문 상태에 따라 취소/반품을 요구하실 수 있습니다.  
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