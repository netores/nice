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
		<li role="presentation" class="active"><a href="<c:url value='/deliveryInfo.do'/>">배송</a></li>
		<li role="presentation" ><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" ><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" ><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>배송</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		
		<strong><p>나이키닷컴의 배송비 부담 기준을 알고 싶어요.</p></strong><br/>
		<p> 
		상품 구매금액이 3만원 이상일 경우 무료배송 되며 3만원 미만일 경우 3,000원이 부과됩니다. 
		단, 도서/산간에 대한 추가 배송비는 택배사 기준에 따르며, 추가 배송비는 고객이 상품 수령시 직접 지불하시면 됩니다 단, 주문 후 변심으로 반품/교환하실 경우 반품 배송비는 고객님께서 부담하셔야 합니다.
		반품/교환하실 상품별로 안내되는 내용에 따라 지급해 주시기 바랍니다. 
		</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>14세 미만 회원가입 가능 한가요?</p></strong><br/>
			<p> 
			 만 14세 미만은 회원가입이 불가능 합니다.
			</p> 
		</td>		
	</tr>
	<tr>
		<td>
			<strong><p>배송 기간은 얼마나 걸리나요?</p></strong><br/>
			<p> 
			 결제 후 3일 이내, 발송완료 등록 및 발송완료 문자 메시지를 받으신 후 고객님께 배달완료 되기까지 1~2일정도 소요됩니다. 
 			(토요일, 공휴일 제외) 택배사 또는 고객사정(고객님 연락이 되지 않을 경우)으로 인해 배송이 지연되는 경우가 있으니 해당 택배사로 전화문의를 하시면 배송상태를 확인 하실 수 있습니다. 
			</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>회배송 진행상황은 어디서 조회하나요? </p></strong><br/>
			<p> 
			- 주문하신 상품의 배송진행상황은 [my쇼핑정보]의 [주문배송조회]에서 확인하실 수 있습니다.
- [my쇼핑정보] > [주문배송조회]에서 해당 주문을 클릭하시면 주문상품의 배송상태를 확인하실 수 있습니다.
- 배송진행사항은 주문내역의 처리상황이 [발송완료]일 때 [배송추적]버튼을 클릭하시거나 송장번호로 해당 택배사 홈페이지를 통해 확인하실 수 있습니다.
- 발송완료 SMS 문자 메시지를 받으신 후 고객님께 배달완료 되기까지 1~2일정도 소요됩니다.
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>배송지를 변경하고 싶어요.</p></strong><br/>
			<p> 
			상품이 발송되기 전까지는 배송지를 변경할 수 있습니다.
			상품의 발송여부는 [my쇼핑정보]의 [주문배송조회]에서 확인하실 수 있으며, 발송 전인 상품의 경우 상품명 또는 주문번호를 클릭하시면 이동되는 페이지의 주문상세내역에서 주문 시 입력하신 배송지 주소 오른쪽에 [배송지 변경] 버튼을 클릭하여 배송지를 변경하시면 됩니다.  
			</p> 
		
		
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>패스워드를 변경하고 싶습니다.</p></strong><br/>
			<p> 
			나이키닷컴 로그인 후 <회원정보관리>을 클릭 하여 이동한 페이지에서 <패스워드 재발급>을 클릭 하시면 됩니다. 패스워드는 회원님의 안전한 정보보호를 위해 비밀번호를 주기적으로 변경할 것을 권해드립니다. 쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호와 같으면 도용될 수 있으니 주의하세요. 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>비회원 주문배송내역도 사이트에서 확인할 수 있나요? </p></strong><br/>
			<p> 
				네, 비회원으로 주문하신 주문내역도 홈페이지에서 조회하실 수 있습니다.
홈페이지 상단 [my쇼핑정보] 메뉴를 클릭하시면 오픈 되는 로그인 창에서 비회원을 클릭하시고 주문번호/이메일 주소를 입력해 주시면 해당 주문내역을 확인하실 수 있습니다.
비회원 주문 시 입력하신 이메일 주소로도 주문내용을 전송해 드립니다.
회원가입을 하시면 주문내역 등 보다 편리한 서비스를 이용하실 수 있습니다.  
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