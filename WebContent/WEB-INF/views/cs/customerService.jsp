<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">


</script>
<style type="text/css">
	#cs_container{
		width:900px;
		height:800px;
		text-align: center;
		margin:auto;
		margin-top: 28px;
	}
	#cs_firstLine{
		width:900px;
		height:400px;
	}
	#cs_secondLine{
		width:900px;
		height:400px;
	}
	#cs_information,#cs_cancel{
		float:left;
		width:250px;
		height:300px;
		background-color: #eeeeee;
		padding-top:20px;
		margin-left:50px;
	}
	
	#cs_order,#cs_delivery,#cs_notice,#cs_etc{
		width:250px;
		float:left;
		height:300px;
		background-color: #eeeeee;
		margin-left:50px;
		padding-top:20px;
	}
#cs_container a{
	text-decoration: none;
		color:black;
		
}
h1{
	margin-top:100px;
	text-align: center;
}
#cs_line{
	width:900px;
}

</style>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

	<div class="page-header">
  		<h1>무엇을 도와드릴까요? <small>Customer Service</small></h1>
	</div>
	<div id="cs_container">

	<img src="images/bg_customer_top.jpg" id="cs_line" alt="" />
	
		<div id="cs_firstLine">
			
			<div id="cs_information">
				<img src="images/man.png" alt="" />
				<a href="<c:url value='/customerInfo.do'/>"><h2>회원정보</h2></a>
				<a href="<c:url value='/customerInfo.do'/>">회원가입</a></br>
				<a href="<c:url value='/customerInfo.do'/>">탈퇴</a></br>
				<a href="<c:url value='/customerInfo.do'/>">정보변경</a></br>
				<a href="<c:url value='/customerInfo.do'/>">아이디/패스워드</a>
			
			</div>
			<div id="cs_order">
				<img src="images/img1.png" alt="" />
				<a href="<c:url value='/orderInfo.do'/>"><h2>주문결제</h2></a>
				<a href="<c:url value='/orderInfo.do'/>">주문 방법 및 확인</a></br>
				<a href="<c:url value='/orderInfo.do'/>">입금 확인</a></br>
				<a href="<c:url value='/orderInfo.do'/>">결제 수단</a></br>
				<a href="<c:url value='/orderInfo.do'/>">주문내용변경</a>		
			</div >
			<div id="cs_delivery">
				<img src="images/img2.png" alt="" />
				<a href="<c:url value='/deliveryInfo.do'/>"><h2>배송</h2></a>
				<a href="<c:url value='/deliveryInfo.do'/>">배송 확인/변경</a></br>
				<a href="<c:url value='/deliveryInfo.do'/>">해외배송정책</a></br>
				<a href="<c:url value='/deliveryInfo.do'/>">배송기간</a></br>
				<a href="<c:url value='/deliveryInfo.do'/>">배송비</a>
			</div>
	
	
		</div>
	
	<div id="cs_secondLine">
		<div id="cs_cancel">
				<img src="images/img3.png" alt="" />
				<a href="<c:url value='/e&rInfo.do'/>"><h2>취소/교환/반품</h2></a>
				<a href="<c:url value='/e&rInfo.do'/>">교환/반품</a></br>
				<a href="<c:url value='/e&rInfo.do'/>">주문취소</a></br>
				<a href="<c:url value='/e&rInfo.do'/>">교환</a></br>

		</div>
		<div id="cs_notice">
				<img src="images/img5.png" alt="" />
				<a href="<c:url value='/noticeInfo.do'/>"><h2>공지사항</h2></a>
				<a href="<c:url value='/noticeInfo.do'/>">교환/반품 배송비 무료 이벤트</a></br>
				<a href="<c:url value='/noticeInfo.do'/>">나이스닷컴 이용약관 변경 안내</a></br>
				<a href="<c:url value='/noticeInfo.do'/>">광복절 임시공휴일 지정에 따른 배송안내</a></br>
		</div>
		
		<div id="cs_etc">
				<img src="images/img4.png" alt="" />
				<a href="<c:url value='/etcInfo.do'/>"><h2>기타</h2></a>
				<a href="<c:url value='/etcInfo.do'/>">오프라인 매장</a></br>
				<a href="<c:url value='/etcInfo.do'/>">전자영수증</a></br>
				<a href="<c:url value='/etcInfo.do'/>">세금계산서/영수증</a></br>
				<a href="<c:url value='/etcInfo.do'/>">PC문제해결/오류</a>	
		</div>
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