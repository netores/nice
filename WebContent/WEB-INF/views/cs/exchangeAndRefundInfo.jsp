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
		<li role="presentation" class="active"><a href="<c:url value='/e&rInfo.do'/>">취소/교환/반품</a></li>
		<li role="presentation" ><a href="<c:url value='/noticeInfo.do'/>">공지사항</a></li>
		<li role="presentation" ><a href="<c:url value='/etcInfo.do'/>">기타</a></li>
	</ul>
	</div>
	<div id="infoContainer_context">
	<h1>취소/교환/반품</h1>
	<img src="images/bg_customer_top.jpg" id="line" alt="" />
	
	<table class="table table-striped">
	<tr>
		<td>
		<strong><p>주문한 상품을 취소하려면 어떻게 하나요?</p></strong><br/>
		<p> 
		주문취소는 주문이 진행된 단계에 따라 아래와 같이 진행하실 수 있습니다.
[주문 취소 진행 단계]
1. 결제대기
 주문완료 후 결제가 미완료된 상태입니다. 취소신청을 하시면 즉시 주문취소가 완료됩니다.
2. 주문완료
 주문에 따른 결제가 완료된 상태입니다. 취소신청을 하시면 즉시 주문취소가 완료됩니다.
3. 출고지시
 물류창고에 상품발송을 위한 준비를 지시하는 단계입니다. 취소신청을 하시면 즉시 주문취소가 완료됩니다.
4. 상품준비
 상품 확보 또는 재고 준비 단계입니다. [my쇼핑정보]에서는 취소신청이 불가하며, 취소가 필요할 시 고객센터로 연락주시기 바랍니다.
5. 발송완료
 발송완료 이후에는 상품취소가 불가능하며, 교환/반품접수만 가능합니다. 
		</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>교환/반품을 하려면 어떻게 하나요?</p></strong><br/>
			<p> 
			고객변심으로 인한 교환/반품은 상품을 수령하신 날로부터 7일 이내까지 나이키닷컴 [my쇼핑정보]의 [취소/교환/반품 접수] 화면에서 신청 가능합니다.
배송완료 후 7일이 경과하였거나 상품하자 또는 오배송으로 인한 교환/반품은 1:1 상담 또는 고객센터로 문의해 주시기 바랍니다. 
			</p> 
		</td>		
	</tr>
	<tr>
		<td>
			<strong><p>상품의 교환/반품절차를 알려주세요.</p></strong><br/>
			<p> 
			1. [my쇼핑정보]에서 교환/반품신청합니다.
2. 교환/반품신청 시 전담택배 혹은 직접택배를 선택하실 수 있습니다.
전담택배는 고객님께서 직접 택배사에 연락하지 않으셔도, 나이키닷컴에서 자동으로 상품을 수거하는 서비스입니다.
전담택배를 선택하실 경우 일정 금액의 반품배송비가 부과됩니다.
직접택배는 고객님께서 직접 택배사에 연락하여 상품을 반품하시는 경우입니다. 상품을 보내신 후 반드시 [my쇼핑정보] >[교환/반품 접수 내역 조회] 화면에서 반송장번호를 입력하여 주시기 바랍니다.
3. 교환/반품접수를 취소해야 할 경우 고객센터로 문의하여 주시기 바랍니다. 상품반송이 완료되기 전까지 교환/반품 신청을 철회하실 수 있으며, 이미 반송이 진행중인 경우 반품 배송비는 고객님께서 부담하셔야 합니다.
4. 교환/반품접수 절차없이 임의로 상품을 반송하실 경우, 내용을 확인할 수 없으므로 교환/환불이 지연되거나 교환/환불이 되지 않을 수 있습니다. 
			</p> 
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>교환/반품이 가능한 경우는 무엇인가요?</p></strong><br/>
			<p> 
			아래와 같은 경우에 교환/반품이 가능합니다.
1. 실제 상품을 수령하신 날부터 7일 이내. 
2. 고객님이 받으신 상품 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 상품 등을 수령한 날부터 3개월 이내,
그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내입니다. 
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
			<strong><p>교환/반품시 배송비는 누가 부담하나요?</p></strong><br/>
			<p> 
			상품하자, 오배송 등의 문제로 교환/반품을 하실 때의 배송비는 착불로 처리하시고, 사이즈 및 색상 교환 등 고객변심으로 인해 교환/반품을 하실 때는 상품 등의 반환에 필요한 비용이 부과되며 상품별로 안내되는 내용에 따라 지급해 주시기 바랍니다. 
			</p> 
		
		
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>현금환불의 경우 얼마나 소요가 되나요? </p></strong><br/>
			<p> 
			환불시 반품 완료 여부를 확인한 후 3영업일 이내에 환불해 드리거나 환불에 필요한 조치를 취해드리며 환불된 결제대금은 [my쇼핑정보] 에서 확인할 수 있습니다. 
신용카드로 결제하신 경우는 신용카드 승인을 취소하여 결제 대금이 청구되지 않게 합니다.
 (단, 신용카드 결제일자에 맞추어 대금이 청구 될수 있으면 이 경우 익월 신용카드 대금청구시 환급처리 됩니다.)
인터넷뱅킹/무통장입금으로 결제하신 경우는 회원님의 은행 계좌로 환불해드립니다.
사용된 프로모션 코드 결제의 경우는 그 금액만큼 복원해 드립니다.  
			</p> 
		
		</td>
	</tr>
	<tr>
		<td>
				<strong><p>환불 후 현금영수증과 세금계산서는 자동취소되나요? </p></strong><br/>
			<p> 
				네. 환불 후 현금영수증과 세금계산서는 자동 취소되기 때문에 별도의 조치가 필요 없습니다.  
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